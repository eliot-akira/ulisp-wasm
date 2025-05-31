; Barnsley Fern
; http://www.ulisp.com/show?44WD

(defvar *width* 240)
(defvar *height* 360)
(defvar *factor* (/ *height* 7))
(defvar *x-offset* (/ *width* 2))
(defvar *y-offset* (/ *height* 24))
(defvar *dark-green* #b0000001111100000)
; transformations
(defvar f
  #2A((0 0 0 0.25 0 -0.14 0.02)
      (0.85 0.02 -0.02 0.83 0 1.0 0.84)
      (0.09 -0.28 0.3 0.11 0 0.6 0.07)
      (-0.09 0.28 0.3 0.09 0 0.7 0.07)))

(defun fn (n)
  #'(lambda (x y)
      (list (+ (* (aref f n 0) x) (* (aref f n 1) y) (aref f n 4))
            (+ (* (aref f n 2) x) (* (aref f n 3) y) (aref f n 5)))))

(defun choose-transform ()
  (let ((r (random 1.0)) (p 0))
    (dotimes (i 4)
      (when (<= r (incf p (aref f i 6))) (return (fn i))))))

(defun plot-pixel (x y)
  (let ((xx (round (+ (* *factor* y) *y-offset*)))
        (yy (round (- *width* (+ (* *factor* x) *x-offset*)))))
    (draw-pixel xx yy *dark-green*)))

(defun fern (&optional (iterations 50000))
  (fill-screen #xFFFF)
  (let ((x 0) (y 0))
    (dotimes (i iterations)
      (plot-pixel x y)
      (let ((xy (funcall (choose-transform) x y)))
        (setq x (first xy))
        (setq y (second xy))))))
