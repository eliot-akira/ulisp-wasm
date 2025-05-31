; Run a Lisp server to evaluate Lisp expressions remotely
; http://www.ulisp.com/show?2B22
(defun lisp-server (ipstring)
  (let ((println #'(lambda (x s) (format s "~a~a~%" x #\return))))
    (with-client (s ipstring 8080)
      (print "Listening...")
      (loop
       (unless (= 0 (available s))
         (let* ((line (read-line s))
                (result (ignore-errors (eval (read-from-string line)))))
           (print line)
           (println (if (eq result nothing) "Error!" result) s)))
       (delay 1000)))))
