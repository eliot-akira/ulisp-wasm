; Blink prime - http://www.ulisp.com/show?23YJ

; The route prime returns t if its argument is prime, and nil if it's composite:
(defun prime (n)
  (let ((d 2))
    (loop
     (when (> (* d d) n) (return t))
     (when (zerop (mod n d)) (return nil))
     (incf d))))

(defun blink ()
  (pinmode :led-builtin t)
  (dotimes (x 32767)
    (when (and (> x 1) (prime x))
      (dotimes (f (* x 2))
        (digitalwrite :led-builtin (evenp f))
        (delay 250))
      (delay 1500))))
