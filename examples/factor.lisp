; Factor
; http://www.ulisp.com/show?1EO1
(defun factor (n)
  (cond
   ((zerop (mod n 2)) 2)
   ((zerop (mod n 3)) 3)
   (t (let ((d 5) (i 2))
        (loop
         (when (> (* d d) n) (return n))
         (when (zerop (mod n d)) (return d))
         (incf d i) (setq i (- 6 i)))))))

(defun factorize (n)
  (let ((f (factor n)))
    (if (= n f) (list n) (cons f (factorize (/ n f))))))