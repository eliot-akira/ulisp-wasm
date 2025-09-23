// Library of additional Lisp functions with integral documentation
// LispLibrary.h - Version 2 - 5th November 2023

const char LispLibrary[] PROGMEM = R"lisplibrary(

; butlast

(defun butlast (lst)
  "(butlast lst)
Returns all but the last item in lst."
  (unless (null lst) (subseq lst 0 (1- (length lst)))))

; count

(defun count (x lst)
  "(count x lst)
Counts the number of items eq to x in lst."
  (if (null lst) 0
    (+ (if (eq x (car lst)) 1 0) (count x (cdr lst)))))

; count-if

(defun count-if (tst lst)
  "(count-if tst lst)
Counts the number of items in lst for which tst is true."
  (if (null lst) 0
    (+ (if (funcall tst (car lst)) 1 0) (count-if tst (cdr lst)))))

; count-if-not

(defun count-if-not (tst lst)
  "(count-if-not tst lst)
Counts the number of items in lst for which tst is false."
  (if (null lst) 0
    (+ (if (funcall tst (car lst)) 0 1) (count-if-not tst (cdr lst)))))

; eql

(defvar eql eq)

; every

(defun every (tst lst)
  "(every tst lst)
Returns t if tst is true for every item in lst, or nil on the first false item."
  (if (null lst) t
    (and (funcall tst (car lst)) (every tst (cdr lst)))))

; find

(defun find (x lst)
  "(find x lst)
Returns x if x is in lst, or nil otherwise."
  (car (member x lst)))

; find-if

(defun find-if (tst lst)
  "(find-if
Returns the first item in lst for which tst is true, or nil otherwise."
  (cond
   ((null lst) nil)
   ((funcall tst (car lst)) (car lst))
   (t (find-if tst (cdr lst)))))

; find-if-not

(defun find-if-not (tst lst)
  "(find-if-not tst lst)
Returns the first item in lst for which tst is false, or nil otherwise."
  (cond
   ((null lst) nil)
   ((not (funcall tst (car lst))) (car lst))
   (t (find-if-not tst (cdr lst)))))

; fourth

(defun fourth (lst)
  "(fourth lst)
Returns the fourth item in lst."
  (car (cdddr lst)))

; identity

(defun identity (x)
  "(identity x)
Returns its argument."
  x)

; last

(defun last (lst)
  "(last lst)
Returns the last cdr of lst."
  (unless (null lst) (subseq lst (1- (length lst)))))

; mapl

(defun mapl (fn lst)
  "(mapl fn lst)
Applies fn to successive cdrs of lst, and returns lst."
  (mapl2 fn lst)
  lst)

(defun mapl2 (fn lst)
  (cond
   ((null lst) nil)
   (t (funcall fn lst)
      (mapl2 fn (cdr lst)))))

; maplist

(defun maplist (fn lst)
  "(maplist fn lst)
Applies fn to successive cdrs of lst, and returns a list of the results."
  (if (null lst) nil
   (cons (funcall fn lst) (maplist fn (cdr lst)))))

; nconc

(defun nconc (&rest lst)
  "(nconc lst*)
Destructively appends its arguments together, which must be lists."
  (mapcan #'(lambda (x) x) lst))

; nthcdr

(defun nthcdr (n lst)
  "(nthcdr n lst)
Returns the nth cdr of lst."
  (if (zerop n) lst
    (nthcdr (1- n) (cdr lst))))

; position

(defun position (x lst &optional (n 0))
  "(position x lst)
Returns the position of the first x in lst, or nil if it's not found."
  (cond
   ((null lst) nil)
   ((eq x (car lst)) n)
   (t (position x (cdr lst) (1+ n)))))

; position-if

(defun position-if (tst lst &optional (n 0))
  "(position-if tst lst)
Returns the position of the first item in lst for which tst is true,
or nil if none is found."
  (cond
   ((null lst) nil)
   ((funcall tst (car lst)) n)
   (t (position-if tst (cdr lst) (1+ n)))))

; position-if-not

(defun position-if-not (tst lst &optional (n 0))
  "(position-if-not tst lst)
Returns the position of the first item in lst for which tst is false,
or nil if none is found."
  (cond
   ((null lst) nil)
   ((not (funcall tst (car lst))) n)
   (t (position-if-not tst (cdr lst) (1+ n)))))

; reduce

(defun reduce (fn lst)
  "(reduce fn lst)
Returns the result of applying fn to successive pairs of items from lst."
     (if (null (cdr lst)) (car lst)
      (funcall fn (car lst) (reduce fn (cdr lst)))))

; remove

(defun remove (x lst)
  "(remove x lst)
Returns a list with all occurrences of x removed from lst."
  (mapcan #'(lambda (y) (unless (eq x y) (list y))) lst))

; remove-if

(defun remove-if (tst lst)
  "(remove-if tst lst)
Returns a list with all items for which tst is true removed from lst."
  (mapcan #'(lambda (x) (unless (funcall tst x) (list x))) lst))

; remove-if-not

(defun remove-if-not (tst lst)
  "(remove-if-not tst lst)
Returns a list with all items for which tst is false removed from lst."
  (mapcan #'(lambda (x) (when (funcall tst x) (list x))) lst))

; third

(defvar third caddr)

)lisplibrary";