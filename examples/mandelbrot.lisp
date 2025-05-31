; Mandelbrot set
; http://www.ulisp.com/show?4JLN
(defun mandelbrot (x0 y0 scale)
  (set-rotation 2)
  (fill-screen)
  (dotimes (y 240)
    (let ((b0 (+ (/ (- y 120) 120 scale) y0)))
      (dotimes (x 320)
        (let* ((a0 (+ (/ (- x 160) 120 scale) x0))
               (c 80) (a a0) (b b0) a2)
          (loop
           (setq a2 (+ (- (* a a) (* b b)) a0))
           (setq b (+ (* 2 a b) b0))
           (setq a a2)
           (decf c)
           (when (or (> (+ (* a a) (* b b)) 4) (zerop c)) (return)))
          (draw-pixel x y (if (plusp c) (hsv (* 359 (/ c 80)) 1 1) 0)))))))
