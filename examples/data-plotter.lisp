; Simple data plotter
; see http://www.ulisp.com/show?2CYW

(defun int ()
  (with-i2c (s 61)
    (wbs s 0 #x8D #x14 #x20 #x01 #xA1 #xAF)))

(defun wbs (s &rest b)
  (dolist (i b) (write-byte i s)))

(defvar xa 64)
(defvar ya 32)

(defun set (yy byt)
  (if (<= 0 yy 7) (logior byt (ash 1 yy)) byt))

(defun plt (x y)
  (with-i2c (s 61)
    (wbs s 0 #x21 x x #x22 0 7)
    (restart-i2c s)  
    (write-byte #x40 s)
    (dotimes (p 8)
      (write-byte
       (if (= x xa) #xff 
         (set (- ya (* p 8)) (set (- y (* p 8)) 0))) s))))

(defun tst ()
  (let ((x 0) (y 2045))
    (dotimes (i 128)
      (incf x (truncate (* y 16) 163))
      (decf y (truncate (* x 16) 163))
      (plt i (+ 32 (ash x -6))))))

(defun clr () (dotimes (x 128) (plt x -1)))