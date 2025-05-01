;
; uLisp Simon Game
; see http://www.ulisp.com/show?1APD
;

; Pins

(defvar pns '(4 5 6 7))

(defun del () (delay 250))

; Flash/play one note

(defun bep (x)
  (let* ((p (nth x pns)))
    (pinmode p t) 
    (note 3 (nth x '(52 49 57 40)))
    (del)
    (note)
    (pinmode p nil) 
    (del)))

; Wait for correct button press

(defun chk (x) 
  (loop 
   (unless (digitalread (nth x pns)) (bep x) (return))))

; Play Simon

(defun sim () 
  (let* ((seq (list (random 4))))
    (loop
     (mapc bep (reverse seq))
     (mapc chk (reverse seq))
     (push (mod (+ (car seq) (random 3) 1) 4) seq)
     (del))))
