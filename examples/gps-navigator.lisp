; Simple GPS Navigator
; http://www.ulisp.com/show?2UUG

; Parse GPRMC sentences into a list

(defun echo (fun)
  (with-serial (str 1 96)
    (loop
     (let ((line (read-line str)))
       (when (and (> (length line) 7) (string= (subseq line 0 7) "$GPRMC,"))
         (parse line fun))))))

(defun parse (line fun)
  (let ((start 7)
        (end (length line))
        i result)
    (loop
     (setq i start)
     ; Find comma
     (loop
      (when (or (= i end) (eq (char line i) #\,)) (return))
      (incf i))
     ; Extract parameter
     (push (if (= start i) nil (subseq line start i)) result)
     (setq start (1+ i))
     (when (= i end) (return)))
    ; Call function on result
    (funcall fun (reverse result))))

; Time display on MAX7219 eight digit 7-segment display

(defvar en 2)

(defun cmd (a d)
  (with-spi (str en)
    (write-byte a str)
    (write-byte d str)))

; Initialise display; brightness = 0 to 15
(defun on (bri)
  (cmd #xF 0)    ; Test mode off
  (cmd #x9 #xFF) ; Decode segments
  (cmd #xB 7)    ; 8 digits
  (cmd #xC 1)    ; Enable display
  (cmd #xA bri))

(defun clr ()
  (dotimes (d 8) (cmd (1+ d) #xF)))

(defun show (text)
  (let ((len (length text))
        (d 1) (b 0))
    (dotimes (i len)
      (let ((c (char-code (char text (- len i 1)))))
        (cond
         ((= (char-code #\.) c) 
          (incf b #x80))
         (t
          (cond
           ((<= (char-code #\0) c (char-code #\9))
            (incf b (- c (char-code #\0))))
           ((= (char-code #\-) c)
            (incf b #xA))
           (t (incf b #xF)))
          (cmd d b) (incf d) (setq b 0)))))))

(defun align (width str)
  (subseq "   " 0 (- width (length str))))

; Simple GPS Navigator

(defvar *degree* 600000)

(defun degree-dimiminute (n)
  (* n *degree*))

(defun dimiminute-degree (n)
  (/ n *degree*))

(defun lat (c) (first c))

(defun long (c) (second c))

; Difference between two angular measures, shortest way round Earth
(defun diff (deg1 deg2)
  (let ((result (- deg2 deg1)))
    (cond
     ((> result (* *degree* 180)) (- result (* 360 *degree*)))
     ((< result (* *degree* -180)) (+ result (* 360 *degree*)))
     (t result))))

; Approximation to cos for angle in 1e-4 minutes. Result scaled by 2^8.
(defun cosfix (angle)
  (let ((u (ash (abs angle) -16)))
    (setq u (ash (* u u 6086) -24))
    (- 246 u)))

; Cartesian difference between two coordinates
(defun cartesian (from to)
  (let* ((dx (ash (* (diff (long to) (long from)) 
                     (cosfix (ash (+ (lat to) (lat from)) -1))) -8))
         (dy (diff (lat to) (lat from))))
    (list dx dy)))

; Simple distance calculation; result in metres
(defun distance (from to) 
  (let* ((dxdy (cartesian from to))
         (adx (abs (first dxdy)))
         (ady (abs (second dxdy)))
         (b (max adx ady))
         (a (min adx ady)))
    (if (= b 0) 0
      (ash (* 95 (+ b (ash (+ (* 110 (truncate a b) a) 128) -8))) -9))))

(defun course2 (adx ady)
  (truncate (* adx (+ 45 (truncate (* 16 (- ady adx)) ady))) ady))

; Course calculation; result 0 to 359 degrees
(defun course (from to)
  (let* ((dxdy (cartesian from to))
         (dx (first dxdy))
         (dy (second dxdy))
         (adx (abs dx))
         (ady (abs dy))
         (c (cond
             ((zerop adx) 0)
             ((< adx ady) (course2 adx ady))
             (t (- 90 (course2 ady adx))))))
    (cond
     ((and (<= dx 0) (< dy 0)) c)
     ((and (< dx 0) (>= dy 0)) (- 180 c))
     ((and (>= dx 0) (>= dy 0)) (+ 180 c))
     (t (- 360 c)))))

; Cardinal direction; result 0=N, 1=NE, 2=E, 3=SE, 4=S, 5=SW, 6=W, or 7=NW.
(defun cardinal (dir)
  (logand (truncate (+ (* 2 dir) 45) 90) #x7))

; Converts a GPS angle string to dimiminutes
(defun angular (n lst)
  (let ((str (nth n lst))
        (dir (nth (1+ n) lst)))
    (let* ((len (length str))
           (deg (read-from-string (subseq str 0 (- len 8))))
           (min (read-from-string (subseq str (- len 8) (- len 6))))
           (fra (read-from-string (subseq str (- len 5) (- len 1))))
           (sgn (if (or (string= dir "N") (string= dir "E")) 1 -1)))
      (* (+ (* (+ (* deg 60) min) 10000) fra) sgn))))

(defvar *home* nil)

; Segments for cardinals
(defvar *segs* '(#x62 #x60 #x61 #x21 #x23 #x03 #x43 #x42))

; Display distance and direction
(defun dist-direction (lst)
  (when (string= (second lst) "A")
    (let ((coord (list (angular 2 lst) (angular 4 lst))))
      (cond
       ((null *home*) (setq *home* coord))
       (t (let* ((dist (distance coord *home*))
                 (wayhome (course coord *home*))
                 (gpscourse (nth 7 lst))
                 (skm (princ-to-string (truncate dist 1000)))
                 (sdist (princ-to-string (+ dist 1000)))
                 (seg #x00))
            (when gpscourse
                 (let* ((dir (read-from-string 
                              (subseq gpscourse 0 (- (length gpscourse) 3))))
                        (correction (mod (- wayhome dir -360) 360)))
                   (setq seg (nth (cardinal correction) *segs*))))
            (cmd #x9 #x7F) ; Custom segment pattern for leftmost display
            (show
             (concatenate
              'string
              (align 3 skm)
              skm
              "."
              (subseq sdist (- (length sdist) 3))))
            (cmd 8 seg)))))))

(defun go3 () (on 15) (show "- ---.---") (echo dist-direction))