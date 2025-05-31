; uLisp graphics display interface
; see http://www.plasticki.com/show?23QU

(defvar *address* 60)

(defvar *commands* #x00)

(defvar *onecommand* #x80)

(defvar *data* #x40)

(defvar *onedata* #xC0)

(defvar *init* '(#xA1 #xAF))

; Initialise the display
(defun init-display ()
  (with-i2c (s *address*)
    (write-byte *commands* s)
    (dolist (x *init*) (write-byte x s))))

; Write a single command to the display
(defun single (byte s)
  (write-byte *onecommand* s)
  (write-byte byte s))

; Clear the screen
(defun clear ()
  (dotimes (p 8)
    (with-i2c (s *address*)
      (single (+ #xB0 p) s)
      (dotimes (q 8)
        (restart-i2c s)
        (write-byte *data* s)
        (dotimes (i 20) (write-byte 0 s))))))

; Current plot position

(defvar x0 0)

(defvar y0 0)

; Plot a point
(defun point (x y)
  (let (j)
    (with-i2c (s *address*)
      (single (+ #x00 (logand (+ x 2) #x0F)) s)
      (single (+ #x10 (ash (+ x 2) -4)) s)
      (single (+ #xB0 (ash y -3)) s)
      (single #xE0 s) ; Read modify write
      (write-byte *onedata* s)
      (restart-i2c s 2)
      (read-byte s)   ; Dummy read
      (setq j (read-byte s))
      (restart-i2c s)
      (write-byte *onedata* s)
      (write-byte (logior (ash 1 (logand y #x07)) j) s)
      (single #xEE s))))

; Move plotting position to x,y
(defun moveto (x y)
  (setq x0 x)
  (setq y0 y))

; Draw from plotting position to x,y
(defun drawto (x y)
  (let* ((dx (abs (- x x0)))
         (dy (abs (- y y0)))
         (sx (if (< x0 x) 1 -1))
         (sy (if (< y0 y) 1 -1))
         (err (- dx dy))
         e2)
    (loop
     (point x0 y0)
     (when (and (= x0 x) (= y0 y)) (return))
     (setq e2 (ash err 1)) 
     (when (> e2 (- dy)) (decf err dy) (incf x0 sx))
     (when (< e2 dx) (incf err dx) (incf y0 sy)))))

; Simple turtle graphics

(defvar x0 32)
(defvar y0 32)
(defvar v '(1 0))

(defun forward (size) (drawto (+ x0 (* (first v) size)) (+ y0 (* (second v) size))))
(defun left () (setq v (list (- (second v)) (first v))))
(defun right () (setq v (list (second v) (- (first v)))))

(defun ldragon (size level)
  (cond
   ((= level 0) (forward size))
   (t
    (ldragon size (- level 1))
    (left)
    (rdragon size (- level 1)))))

(defun rdragon (size level)
  (cond
   ((= level 0) (forward size))
   (t
    (ldragon size (- level 1))
    (right)
    (rdragon size (- level 1)))))