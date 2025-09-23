// Library of additional Lisp functions
// LispLibrary.h - Version 2 - 5th November 2023

const char LispLibrary[] PROGMEM = R"lisplibrary(

; butlast
; Returns all but the last item in lst.

(defun butlast (lst)
  (unless (null lst) (subseq lst 0 (1- (length lst)))))

; count
; Counts the number of items eq to x in lst.

(defun count (x lst)
  (if (null lst) 0
    (+ (if (eq x (car lst)) 1 0) (count x (cdr lst)))))

; count-if
; Counts the number of items in lst for which tst is true.

(defun count-if (tst lst)
  (if (null lst) 0
    (+ (if (funcall tst (car lst)) 1 0) (count-if tst (cdr lst)))))

; count-if-not
; Counts the number of items in lst for which tst is false.

(defun count-if-not (tst lst)
  (if (null lst) 0
    (+ (if (funcall tst (car lst)) 0 1) (count-if-not tst (cdr lst)))))

; eql

(defvar eql eq)

; every
; Returns t if tst is true for every item in lst, or nil on the first false item.

(defun every (tst lst)
  (if (null lst) t
    (and (funcall tst (car lst)) (every tst (cdr lst)))))

; find
; Returns x if x is in lst, or nil otherwise.

(defun find (x lst)
  (car (member x lst)))

; find-if
; Returns the first item in lst for which tst is true, or nil otherwise.

(defun find-if (tst lst)
  (cond
   ((null lst) nil)
   ((funcall tst (car lst)) (car lst))
   (t (find-if tst (cdr lst)))))

; find-if-not
; Returns the first item in lst for which tst is false, or nil otherwise.

(defun find-if-not (tst lst)
  (cond
   ((null lst) nil)
   ((not (funcall tst (car lst))) (car lst))
   (t (find-if-not tst (cdr lst)))))

; fourth
; Returns the fourth item in lst.

(defun fourth (lst)
  (car (cdddr lst)))

; identity
; Returns its argument.

(defun identity (x) x)

; last
; Returns the last cdr of lst.

(defun last (lst)
  (unless (null lst) (subseq lst (1- (length lst)))))

; mapl
; Applies fn to successive cdrs of lst, and returns lst.

(defun mapl (fn lst)
  (mapl2 fn lst)
  lst)

(defun mapl2 (fn lst)
  (cond
   ((null lst) nil)
   (t (funcall fn lst)
      (mapl2 fn (cdr lst)))))

; maplist
; Applies fn to successive cdrs of lst, and returns a list of the results.

(defun maplist (fn lst)
  (if (null lst) nil
   (cons (funcall fn lst) (maplist fn (cdr lst)))))

; nconc
; Destructively appends its arguments together, which must be lists.

(defun nconc (&rest lst)
  (mapcan #'(lambda (x) x) lst))

; nthcdr
; Returns the nth cdr of lst.

(defun nthcdr (n lst)
  (if (zerop n) lst
    (nthcdr (1- n) (cdr lst))))

; position
; Returns the position of the first x in lst, or nil if it's not found.

(defun position (x lst &optional (n 0))
  (cond
   ((null lst) nil)
   ((eq x (car lst)) n)
   (t (position x (cdr lst) (1+ n)))))

; position-if
; Returns the position of the first item in lst for which tst is true,
; or nil if none is found.

(defun position-if (tst lst &optional (n 0))
  (cond
   ((null lst) nil)
   ((funcall tst (car lst)) n)
   (t (position-if tst (cdr lst) (1+ n)))))

; position-if-not
; Returns the position of the first item in lst for which tst is false,
; or nil if none is found.

(defun position-if-not (tst lst &optional (n 0))
  (cond
   ((null lst) nil)
   ((not (funcall tst (car lst))) n)
   (t (position-if-not tst (cdr lst) (1+ n)))))

; reduce
; Returns the result of applying fn to successive pairs of items from lst.

(defun reduce (fn lst)
  (if (null (cdr lst)) (car lst)
    (funcall fn (car lst) (reduce fn (cdr lst)))))

; remove
; Returns a copy of lst with all occurrences of x removed.

(defun remove (x lst)
  (mapcan #'(lambda (y) (unless (eq x y) (list y))) lst))

; remove-if
; Returns a copy of lst with all items for which tst is true removed.

(defun remove-if (tst lst)
  (mapcan #'(lambda (x) (unless (funcall tst x) (list x))) lst))

; remove-if-not
; Returns a copy of lst with all items for which tst is false removed.

(defun remove-if-not (tst lst)
  (mapcan #'(lambda (x) (when (funcall tst x) (list x))) lst))

; third

(defvar third caddr)

)lisplibrary";