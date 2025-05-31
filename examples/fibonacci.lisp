; Fibonacci sequence
; http://www.ulisp.com/show?1EO1
(defun fib (n)
  (if (< n 3) 1
    (+ (fib (- n 1)) (fib (- n 2)))))