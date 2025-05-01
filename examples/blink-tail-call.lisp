; Tail-call optimization - http://www.ulisp.com/show?1BBP

(defun blink (&optional x) 
  (pinmode :led-builtin t)
  (digitalwrite :led-builtin x)
  (delay 1000)
  (blink (not x)))
