; Serve a web page displaying an ADC value
; http://www.ulisp.com/show?2B22
(defun web-server (adc)
  (let ((println #'(lambda (x s) (format s "~a~a~%" x #\return))))
    (wifi-server)
    (format t "Connect your web browser to ~a" (wifi-localip))
    (loop   
     (with-client (s)
       (loop (when (= 1 (length (read-line s))) (return)))
       (println "HTTP/1.1 200 OK" s)
       (println "Content-Type: text/html" s)
       (println "Connection: close" s)
       (println "Refresh: 5" s)
       (println "" s)
       (princ "<!DOCTYPE HTML><html><body><h1>ADC Value: " s)
       (princ (analogread adc) s)
       (println "</h1></body></html>" s)
       (println "" s))
     (delay 1000))))