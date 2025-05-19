; ULOS simple object system
; http://www.ulisp.com/show?37VY

; Define an object
(defun object (&optional parent slots)
  (let ((obj (when parent (list (cons 'parent parent)))))
    (loop
     (when (null slots) (return obj))
     (push (cons (first slots) (second slots)) obj)
     (setq slots (cddr slots)))))

; Get the value of a slot in an object or its parents
(defun value (obj slot)
  (when (symbolp obj) (setq obj (eval obj)))
  (let ((pair (assoc slot obj)))
    (if pair (cdr pair)
           (let ((p (cdr (assoc 'parent obj))))
             (and p (value p slot))))))

; Update a slot in an object
(defun update (obj slot value)
  (when (symbolp obj) (setq obj (eval obj)))
  (let ((pair (assoc slot obj)))
    (when pair (setf (cdr pair) value))))

; Shapes example

; First define the classes

(defvar shape (object))

(defvar rectangle
  (object 'shape '(area #'(lambda (x) (* (value x 'height) (value x 'width))))))

(defvar pi (* 2 (asin 1)))

(defvar circle
  (object 'shape '(area #'(lambda (x) (* pi (expt (value x 'radius) 2))))))

(defvar square (object 'rectangle))

; Now a couple of sample objects

(defvar myrect (object 'rectangle '(width 24 height 10)))

(defvar mycircle (object 'circle '(radius 5)))

; Finally a generic area function

(defun area (obj) (funcall (eval (value obj 'area)) obj))
