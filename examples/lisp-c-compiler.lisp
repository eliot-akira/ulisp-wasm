;
; uLisp to C converter - 22nd June 2019
; see http://www.ulisp.com/show?2L5B
;

(defvar *ind* 0)

(defvar *end* nil)

; Indent by *ind* levels
(defun indent () (dotimes (i *ind*) (princ "  ")))

; Print a list of values
(defun out (&rest lst) (mapc #'princ lst))

; Handle binary operators
(defun op (fun form)
  (princ "(")
  (dotimes (n (length form))
     (convert (nth n form)) 
     (unless (= n (1- (length form))) (out " " fun " ")))
  (princ ")"))

; Translate functions and operators that differ between Lisp and C
 (defvar
    *translations* 
  '((t true) (nil false) (incf ++) (decf --) (mod %) (/- !=) (= ==) (or ||) (and &&) (logand &) (logior \|) (logxor ^)
    (pinmode "pinMode") (digitalwrite "digitalWrite")))

(defun trans (from)
  (or (cadr (assoc from *translations*)) from))

; Handle a list of forms
(defun do-block (form)
  (setq *end* nil)
  (princ "{") (terpri)
  (incf *ind*)
  (dolist (f form)
    (indent)
    (convert f)
    (unless *end* (princ ";") (terpri)))
  (decf *ind*)
  (indent) (princ "}"))

; Handle a dotimes loop
(defun do-dotimes (form)
  (let* ((args (first form))
         (var (first args))
         (total (second args))
         (result (third args))
         (body (cdr form)))
    (out "for (int " var "=0; " var "<") (convert total) (out "; " var "++) ")
    (do-block body) (setq *end* t) (terpri)
    (when result (princ result))))

; Handle a function definition
(defun do-defun (form)
  (let ((fun (first form))
        (args (second form))
        (body (cddr form)))
    (out "// Function " fun) (terpri)
    (out "void " fun " (")
    (dotimes (n (length args))
      (princ "int ") (princ (nth n args)) 
      (unless (= n (1- (length args))) (princ ", ")))             
    (princ ") ") 
    (do-block body)))

; Handle a let or let* form
(defun do-let (form)
  (dotimes (n (length (first form)))
    (unless (zerop n) (indent))
    (let ((f (nth n (first form))))
      (cond
       ((listp f)
        (let ((var (first f))
              (val (second f)))
          (out "int " var " = ") (convert val) (out ";") (terpri)))
       (t (out "int " f "4") (terpri)))))
  (dolist (f (cdr form))
    (indent) (convert f)))

; Handle an if form
(defun do-if (form)
  (princ "if ") 
  (cond
   ((third form)
    (convert (first form)) (princ " ") (convert (second form)) 
    (indent) (princ "else ") (convert (third form)))
   (t
    (convert (first form)) (princ " ") (convert (second form)))))

; Handle a when form
(defun do-when (form)
  (convert (first form)) (princ " ") (do-block (cdr form)))

; Handle a cond form
(defun do-cond (form)
  (dotimes (n (length form))
    (let ((f (nth n form)))
      (cond
       ((zerop n) (princ "if ") (do-when f))
       ((eq (car f) t) (princ " else ") (do-block (cdr f)))
       (t (princ " else if ") (do-when f))))))

; Handle a function call
(defun do-fun (fn rest)
  (out fn "(") 
  (dotimes (n (length rest))
    (convert (nth n rest))
    (unless (= n (1- (length rest))) (princ ", ")))
  (princ ")")
  (setq *end* nil))

; Main function; call this with the name of the function you want to convert
(defun lisp-to-c (fun)
  (setq *ind* 0)
  (convert (cons 'defun (cons fun (cdr (eval fun)))))
  nothing)

; The main conversion routine, called recursively
(defun convert (form)
  (cond
   ((consp form)
    (let ((fn (first form))
          (rest (cdr form)))
      (case fn
        ; defun
        (defun (do-defun rest))
        ; let let*
        ((let let*) (do-let rest))
        ; Binary operator
        ((+ - * / > < >= <= and or = /= mod logand logior logxor) 
         (op (trans fn) rest))
        (ash (if (minusp (second rest)) 
                 (op '>> (list (first rest) (- (second rest)))) 
               (op '<< rest)))
        ; Inline function of one argument
        (abs
         (out (trans fn) "(") (convert (first rest)) (princ ")"))
        ; Inline function of two arguments
        ((max min)
         (out (trans fn) "(") (convert (first rest)) 
         (princ ", ") (convert (second rest)) (princ ")"))
        ; Array
        (nth (convert (second rest)) (princ "[") (convert (first rest)) (princ "]"))
        ; Special things
        (progn (do-block rest))
        (1+ (op "+" (list (first rest) 1)))
        (1- (op "-" (list (first rest) 1)))
        (evenp (princ "(") (op "&" (list (first rest) 1)) (princ " == 0)"))
        (oddp (princ "(") (op "&" (list (first rest) 1)) (princ " == 1)"))
        (zerop (op "==" (list (first rest) 0)))
        ((incf decf) 
         (convert (second form)) (princ (trans fn)))
        ((setq setf)
         (convert (first rest)) (princ " = ") (convert (second rest)))
        ; Loop
        (loop (indent) (princ "for (;;) ") (do-block rest))
        (dotimes (do-dotimes rest))
        ; Conditional
        (when (princ "if ") (do-when rest))
        (unless (princ "if (!") (convert (first rest)) (princ ") ") (do-block (cdr rest)))
        (if (do-if rest))
        (cond (do-cond rest))
        ; Function
        (t (do-fun (trans fn) rest)))))
   (t (princ (trans form)))))