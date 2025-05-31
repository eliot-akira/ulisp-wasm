; Print the contents of a web page
; http://www.ulisp.com/show?2B22
(defun webpage ()
  (let ((println #'(lambda (x s) (format s "~a~a~%" x #\return))))
    (with-client (s "www.ulisp.com" 80)
      (println "GET /rss?1DQ5 HTTP/1.0" s)
      (println "Host: www.ulisp.com" s)
      (println "Connection: close" s) 
      (println "" s)
      (loop (unless (zerop (available s)) (return)))
      (loop
       (delay 100)
       (when (zerop (available s)) (return))
       (princ (read-line s))
       (terpri)))))