; Control an LED from a web page
; http://www.ulisp.com/show?2B22
(defun control-panel ()
  (let ((println #'(lambda (x s) (format s "~a~a~%" x #\return))))
    (pinmode :led-builtin t)
    (wifi-server)
    (format t "Connect your network and web browser to ~a" (wifi-localip))
    (loop
     (with-client (s)
       ; First line is request
       (let ((line (read-line s)))
          (when (search "GET /ON" line) (digitalwrite :led-builtin t))
          (when (search "GET /OFF" line) (digitalwrite :led-builtin nil)))
       ; Read up to blank line
       (loop (when (= 1 (length (read-line s))) (return)))
       ; Send response page
       (println "HTTP/1.1 200 OK" s)
       (println "Content-Type: text/html" s)
       (println "Connection: close" s)
       (println "" s)
       (princ "<!DOCTYPE HTML><html><body>" s)
       (princ "<p>Control LED: <a href='/ON'><button> On </button></a>" s)
       (princ "<a href='/OFF'><button> Off </button></a></p>" s)
       (princ "</body></html>" s)
       (println "" s))
     (delay 5000))))
