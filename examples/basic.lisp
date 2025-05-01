;
; uLisp Zero examples
;

; Interleave two lists

(defun int (one two)
  (if (null one) nil
    (cons (car one)
          (cons (car two)
                (int (cdr one) (cdr two))))))

; Last item of a list

(defun end (lst)
  (if (null (cdr lst)) (car lst)
    (end (cdr lst))))

; Append two lists

(defun app (one two)
  (if (null (cdr one)) (cons (car one) two)
    (cons (car one) (app (cdr one) two))))

; Reverse a list

(defun rev (lst)
  (if (null (cdr lst)) lst
    (app (rev (cdr lst)) (cons (car lst) nil)))) 

; Reduce a list

(defun reduce* (fn lst &optional (initial 0))
  (if (null lst) initial
    (reduce* fn (cdr lst) (funcall fn initial (car lst)))))

; Largest Common Subsequence

(defun lgr (a b)
  (if (null b) a
    (lgr (cdr a) (cdr b))))

(defun lon (a b)
  (if (lgr a b) a b))

(defun lcs (a b)
  (if (null a) nil
    (if (null b) nil     
      (if (eq (car a) (car b))
          (cons (car a) (lcs (cdr a) (cdr b)))
        (lon (lcs a (cdr b)) (lcs (cdr a) b))))))

; Hofstadter Q sequence

(defun add (one two)
  (if (null (cdr one)) (cons (car one) two)
    (cons (car one) (add (cdr one) two))))

(defun sub (a b)
  (if (null b) a
    (sub (cdr a) (cdr b))))

(defun le2 (n)
  (null (cdr (cdr n))))

(defun q (n)
  (if (le2 n) '(x)
    (add
     (q (sub n (q (cdr n))))
     (q (sub n (q (cdr (cdr n))))))))
