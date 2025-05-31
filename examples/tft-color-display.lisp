; uLisp TFT colour display plotting program - 20th July 2019
; See http://www.ulisp.com/show?2NSB

; Pins used for display
(defvar dc 16)

(defvar cs 18)

; Display commands
(defvar CASET #x2A)

(defvar RASET #x2B)

(defvar RAMWR #x2C)

; Display offsets and dimensions
(defvar yoff 0)

(defvar xoff 0)

(defvar xsize 160)

(defvar ysize 128)

; Convert red, green, blue components 0 to 255 to a 16-bit 565 RGB value
(defun rgb (r g b)
 (logior (ash (logand r #xf8) 8) (ash (logand g #xfc) 3) (ash b -3)))

; Write a command with data bytes to the display
(defun cmd (c &rest data)
  (with-spi (str cs)
    (digitalwrite dc 0)
    (write-byte c str)
    (digitalwrite dc 1)
    (dolist (d data)
      (write-byte d str))))

; Initialize the display
(defun init ()
  (pinmode dc t)
  (cmd #x01)      ; Software reset
  (delay 150)     ; delay 150 ms
  (cmd #x11)      ; Out of sleep mode
  (delay 500)     ; delay 500 ms
  (cmd #x3A #x05) ; Set color mode - 16-bit color
  (cmd #x29)      ; Display on
  (delay 100))

; Clear the display
(defun clear (&optional j)
  (let ((c (if j #xFF 0)))
    (cmd CASET 0 yoff 0 (+ yoff ysize -1))
    (cmd RASET 0 xoff 0 (+ xoff xsize -1))
    (cmd #x3A #x03)
    (cmd RAMWR)
    (with-spi (str cs)
      (dotimes (p (* (/ xsize 2) ysize 3))
        (write-byte c str)))
    (cmd #x3A #x05)))

; Plot colour c at coordinates x, y
(defun point (x y c)
  (cmd CASET 0 (+ yoff y) 0 (+ yoff y))
  (cmd RASET 0 (+ xoff x) 0 (+ xoff x))
  (cmd RAMWR (ash c -8) (logand c #xff)))

; Demo curve plotting program
(defun plot ()
  (let (m n)
    (dotimes (x 80)
      (let ((w (truncate (sqrt (- (* 80 80) (* x x))))))
        (dotimes (v (* 2 w))
          (let* ((z (- v w))
                 (r (/ (sqrt (+ (* x x) (* z z))) 80))
                 (q (* (- r 1) (sin (* r 24))))
                 (y (truncate (+ (/ z 3) (* q 64))))
                 (c (rgb (truncate (* r 255)) (truncate (* (- 1 r) 255)) 128)))
            (when
                (cond
                 ((zerop v) (setq m y) (setq n y))
                 ((> y m) (setq m y))
                 ((< y n) (setq n y))
                 (t nil))
              (point (- 80 x) (+ 64 y) c) 
              (point (+ 80 x) (+ 64 y) c))))))))