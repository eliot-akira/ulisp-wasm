;
; Ringing the changes
; see http://www.ulisp.com/show?1G42
;

(defun fnd (x lst)
  (cond
   ((null lst) nil)
   ((< x (car lst)) (car lst))
   (t (fnd x (cdr lst)))))
   
(defun sub (new old lst)
  (cond
   ((null lst) nil)
   ((eq old (car lst)) (cons new (cdr lst)))
   (t (cons (car lst) (sub new old (cdr lst))))))

(defun nxt (lst)
  (cond
   ((not (apply > (cdr lst))) (cons (car lst) (nxt (cdr lst))))
   ((> (car lst) (cadr lst)) nil)
   (t (let* ((rest (reverse (cdr lst)))
             (old (fnd (car lst) rest)))
        (cons old (sub (car lst) old rest))))))

(defun all (fun lst)
  (when lst
    (funcall fun lst)
    (all fun (nxt lst))))

(defun bel (lis)
  (mapc 
   (lambda (x) (note 11 x 4) (delay 500) (note) (delay 125))
   lis)
  (delay 500))
