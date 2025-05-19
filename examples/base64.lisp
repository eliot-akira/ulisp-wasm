; http://www.lispology.com/show?2D70
(defun char64 (n)
  (char "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
        (logand n #x3F)))

(defun base64 (str stm)
  (let* ((l (length str))
         (max (ceiling l 3)))
    (setq str (concatenate 'string str (string #\null) (string #\null)))
    (dotimes (i max)
      (let* ((w (* i 3))
             (a (char-code (char str w)))
             (b (char-code (char str (1+ w))))
             (c (char-code (char str (+ 2 w)))))
        (princ (char64 (ash a -2)) stm)
        (princ (char64 (logior (ash a 4) (ash b -4))) stm)
        (princ (if (>= (1+ w) l) "=" (char64 (logior (ash b 2) (ash c -6)))) stm)
        (princ (if (>= (+ 2 w) l) "=" (char64 c)) stm)))
    (princ #\return stm) (princ #\newline stm)))
