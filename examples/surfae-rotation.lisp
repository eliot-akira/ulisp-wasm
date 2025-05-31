; Surface of Rotation
; see http://www.ulisp.com/show?3GPX

(defun sinfun (r) (* (- r 1) (sin (* r 24))))

(defun sqfun (r) (+ (* 2.5 (- 1 r) (- 1 r)) (* 2 r r 0.7) -1.5))

(defun rgb (r g b)
  (logior (ash (logand r #xf8) 8) (ash (logand g #xfc) 3) (ash b -3)))

(defun rotation (width height fun)
  (let ((w2 (truncate width 2))
        (h2 (truncate height 2))
        m n)
    (fill-screen)
    (dotimes (x w2)
      (let ((p (truncate (sqrt (- (* w2 w2) (* x x))))))
        (dotimes (v (* 2 p))
          (let* ((z (- v p))
                 (r (/ (sqrt (+ (* x x) (* z z))) w2))
                 (q (funcall #'fun r))
                 (y (round (+ (/ z 3) (* q h2))))
                 (c (rgb (truncate (* r 255)) (truncate (* (- 1 r) 255)) 128)))
            (when
                (cond
                 ((zerop v) (setq m y) (setq n y))
                 ((> y m) (setq m y))
                 ((< y n) (setq n y))
                 (t nil))
              (draw-pixel (- w2 x) (- h2 y) c)
              (draw-pixel (+ w2 x) (- h2 y) c))))))))