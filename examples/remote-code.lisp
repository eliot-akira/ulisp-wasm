; Read and evaluate a function from a web page
; http://www.ulisp.com/show?2B22
(defun decode ()
  (let ((println #'(lambda (x s) (format s "~a~a~%" x #\return))))
    (with-client (s "www.ulisp.com" 80)
      (println "GET /list?21Z0 HTTP/1.0" s)
      (println "Host: www.ulisp.com" s)
      (println "Connection: close" s) 
      (println "" s)
      (loop (when (= 1 (length (read-line s))) (return)))
      (eval (read s))
      (secret))))