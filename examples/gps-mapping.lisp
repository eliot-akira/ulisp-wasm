; GPS mapping application
; http://www.ulisp.com/list?2DXP

(defvar *address* 60)

(defvar *commands* #x00)

(defvar *onecomd* #x80)

(defvar *data* #x40)

(defvar *onedata* #xC0)

; Write bytes
(defun wbs (s &rest b)
  (dolist (i b) (write-byte i s)))

; Initialise the display
(defun init-display ()
  (with-i2c (s *address*)
    (wbs s *commands* #xA1 #xAF)))

; Clear the screen
(defun clear ()
  (dotimes (p 8)
    (with-i2c (s *address*)
      (wbs s *onecomd* (+ #xB0 p))
      (dotimes (q 8)
        (restart-i2c s)
        (write-byte *data* s)
        (dotimes (i 20) (write-byte 0 s))))))

; Plot a point
(defun point (x y)
  (let (j)
    (with-i2c (s *address*)
      (wbs s
           *onecomd* (+ #x00 (logand (+ x 2) #x0F))
           *onecomd* (+ #x10 (ash (+ x 2) -4))
           *onecomd* (+ #xB0 (ash y -3))
           *onecomd* #xE0
           *data*)
      (restart-i2c s 2)
      (read-byte s) ; Dummy read
      (setq j (read-byte s))
      (restart-i2c s)
      (wbs s
           *onedata* (logior (ash 1 (logand y #x07)) j)
           *onecomd* #xEE))))

; Draw crosswires

(defun cross ()
  (dotimes (x 64) (point (* 2 x) 32))
  (dotimes (y 32) (point 64 (* 2 y))))

; GPS

(defun read4 (str)
  (+ (read-byte str) (ash (read-byte str) 8) 
     (ash (read-byte str) 16) (ash (read-byte str) 24)))

(defun radians (deg)
  (* deg (/ (asin 1) 90)))

(defvar *r* 6.371e6)

; Return the position as a list of x y, in metres
(defun position ()
  (let (lat long)
    (with-i2c (str 58) 
      (write-byte 4 str)
      (restart-i2c str 8) 
      (setq lat (/ (read4 str) 6e5))
      (setq long (/ (read4 str) 6e5)))
    (list
     (* *r* (radians long) (cos (radians lat)))
     (* *r* (radians lat)))))

(defun nav ()
  (init-display)
  (clear)
  (loop (unless (digitalread 2) (return)))
  (cross)
  (let ((home (position)))
   (loop
    (let* ((here (position))
          (dx (round (- (first here) (first home)) 10))
          (dy (round (- (second here) (second home)) 10)))
     (point (+ dx 64) (+ dy 32)))
    (loop (unless (digitalread 2) (return))))))