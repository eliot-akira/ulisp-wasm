; Graphics utilities
; http://www.ulisp.com/show?2YRM

; RGB utility
; Define a colour from its red/green/blue components
; Each parameter r, g, and b should be an integer from 0 to 255
(defun rgb (r g b)
  (logior (ash (logand r #xf8) 8) (ash (logand g #xfc) 3) (ash b -3)))

; Example with colored ellipses
(defun example-rgb ()
  (dotimes (xx 320)
    (let ((x (- xx 160)))
      (dotimes (yy 240)
        (let* ((y (- yy 120))
               (f (truncate (+ (* x (+ x y)) (* y y)) 8)))
          (draw-pixel xx yy (rgb (+ f 160) f (+ f 80))))))))

; HSV utility
(defun hsv (h s v)
  (let* ((chroma (* v s))
         (x (* chroma (- 1 (abs (- (mod (/ h 60) 2) 1)))))
         (m (- v chroma))
         (i (truncate h 60))
         (params (list chroma x 0 0 x chroma))
         (r (+ m (nth i params)))
         (g (+ m (nth (mod (+ i 4) 6) params)))
         (b (+ m (nth (mod (+ i 2) 6) params))))
    (rgb (round (* r 255)) (round (* g 255)) (round (* b 255)))))

; Example plot hue horizontally against saturation vertically, with value = 100%
(defun example-hsv ()
  (set-rotation 2)
  (fill-screen)
  (dotimes (x 320)
    (dotimes (y 240)
      (draw-pixel x y (hsv (/ (* x 360) 320) (/ y 240) 1)))))

; Sierpinski curve
(defun sierpinski (x0 y0 size gen)
  (when (plusp gen)
    (let ((s (ash size -1))
           (n (1- gen)))
      (fill-rect x0 y0 size size (col gen))
      (sierpinski (+ x0 (ash s -1)) y0 s n)
      (sierpinski x0 (+ y0 s) s n)
      (sierpinski (+ x0 s) (+ y0 s) s n))))
; Define a different colour for each value of n from 0 to 7
(defun col (n)
  (rgb (* (logand n 1) 160) (* (logand n 2) 80) (* (logand n 4) 40)))

; Example with 7 generations of the curve
(defun draw ()
  (set-rotation 2)
  (fill-screen)
  (sierpinski 40 0 240 7)) 
