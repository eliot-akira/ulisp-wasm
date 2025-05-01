;
; I2C LED 8x8 dot-matrix display
; see http://www.ulisp.com/show?2RU3
;

(defvar adr 112)

; Initialise display and set brightness 0 to 15
(defun set (bri)
  (with-i2c (s adr)
    (write-byte #x21 s)
    (restart-i2c s)
    (write-byte #x81 s)
    (restart-i2c s)
    (write-byte (+ #xe0 bri) s)))

; Clear display
(defun clr ()
  (with-i2c (s adr)
    (dotimes (x 16)
      (write-byte #x00 s))))

; Plot at x y
(defun plt (x y)
  (let (b)
    (with-i2c (s adr)
      (write-byte (* x 2) s)
      (restart-i2c s 1)
      (setq b (read-byte s))
      (restart-i2c s)
      (write-byte (* x 2) s)
      (write-byte
       (logxor b (ash 1 (logand (+ y 7) 7))) s))))

; Random display
(defun ran ()
  (clr)
  (set 2)
  (loop
   (plt (random 8) (random 8))
   (delay 125)))
