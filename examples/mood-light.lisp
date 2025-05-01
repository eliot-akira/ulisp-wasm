; Mood light - http://www.ulisp.com/show?1BFA

(defun red (x) 
  (let ((y (mod x 768)))
    (min 
     (if (> y 255) (- y 255) (- 255 y))
     255)))

(defun grn (x) (red (+ x 256))) 
(defun blu (x) (red (+ x 512)))

(defun rgb (v)
  (mapc
   analogwrite
   '(9 10 11) 
   (list (red v) (grn v) (blu v))))

(defun run ()
  (let ((x 0))
    (loop 
     (rgb x)
     (setq x (mod (1+ x) 768))
     (delay 10))))
