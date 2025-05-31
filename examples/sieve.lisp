; Sieve of Eratosthenes
; http://www.ulisp.com/show?1EO1
(defun sieve (size)
  (let ((a (make-array size :element-type 'bit))
        max)
    (setf (aref a 0) 1 (aref a 1) 1)
    (dotimes (i size max)
      (when (zerop (aref a i))
        (setq max i)
        (do ((j (* 2 i) (+ j i))) ((>= j size)) (setf (aref a j) 1))))))