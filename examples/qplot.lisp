; Hofstadter Q sequence - http://www.ulisp.com/show?4FAI
; Examples
; (dotimes (x 16) (format t "~a " (q (1+ x))))
; (qplot 240 135)
(defun q (n)
  (if (<= n 2) 1
    (+
     (q (- n (q (- n 1))))
     (q (- n (q (- n 2)))))))

(defun speedup (fn)
  (let ((c nil))
    (lambda (x)
      (or (cdr (assoc x c))
          (let ((r (funcall fn x))) 
            (setq c (cons (cons x r) c)) 
            r)))))

(setq q (speedup q))

(defun qplot (width height)
  (fill-screen)
  (let ((x0 0) (y0 0) x1 y1
        (yellow #b1111111111100000)
        (salmon #b1111110000010000))
    (draw-line 10 (- height 10) (1- width) (- height 10))
    (draw-line 10 (- height 10) 10 10)
    (dotimes (n 6)
      (draw-char 0 (- height (* n (truncate height 6)) 14) (code-char (+ n 48)) yellow))
    (dotimes (n 10)
      (draw-char (+ (* n (truncate width 10)) 12) (- height 7) (code-char (+ n 48)) yellow))
    (dotimes (n width)
      (setq x1 n y1 (q n))
      (draw-line (+ x0 10) (- height y0 10) (+ x1 10) (- height y1 10) salmon)
      (setq x0 x1 y0 y1))))
