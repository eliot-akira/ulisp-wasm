; Wireless Message Display
; http://www.ulisp.com/list?416S
(defun on (bri)
  (dotimes (a 2)
    (with-i2c (str (+ a #x70))
      (write-byte #x21 str)
      (restart-i2c str) 
      (write-byte (+ bri #xe0) str)
      (restart-i2c str)
      (write-byte #x81 str))))

(defvar *codes* '(#x0 #x6 #x220 #x12CE #x12ED #xC24 #x235D #x400 #x2400 #x900 #x3FC0 #x12C0 
 #x800 #xC0 #x4000 #xC00 #xC3F #x6 #xDB #x8F #xE6 #x2069 #xFD #x7 #xFF #xEF #x1200 #xA00
 #x2400 #xC8 #x900 #x1083 #x2BB #xF7 #x128F #x39 #x120F #xF9 #x71 #xBD #xF6 #x1200 #x1E
 #x2470 #x38 #x536 #x2136 #x3F #xF3 #x203F #x20F3 #xED #x1201 #x3E #xC30 #x2836 #x2D00
 #x1500 #xC09 #x39 #x2100 #xF #xC03 #x0))

(defun display (x dp str)
  (if (>= x #x60) (setq x (- x #x20)))
  (let ((c (nth (- x 32) *codes*)))
    (when dp (incf c #x4000))
    (write-byte c str)
    (write-byte (ash c -8) str)))

(defun show (txt)
  (let ((i 0) (len (length txt)) dp)
    (dotimes (a 2)
      (with-i2c (str (+ a #x70))
        (write-byte #x00 str)
        (dotimes (x 4)
          (let ((c (char-code (if (< i len) (char txt i) #\space))))
            (incf i)
            (display c (and (< i len) (eq (char txt i) #\.) (incf i)) str)))))))

(defvar *ssid* "MyNetwork")
(defvar *password* "MyPassword")

(defun println (x s) (princ x s) (princ #\return s) (princ #\newline s))

(defun message-display ()
  (show (wifi-connect *ssid* *password*))
  (wifi-server)
  (on 8)
  (loop
   (with-client (s)
     (let* ((line (read-line s)))
       (print line)
       (when line
         (loop (unless (= 0 (available s))) (return))
         (println "HTTP/1.1 200 OK" s)
         (println "Content-Type: text/html" s)
         (println "Connection: close" s)
         (println "" s)
         (println "<!DOCTYPE HTML><html>Received OK</html>" s)
         (when (eq (char line 5) #\?)
           (show (subseq line 6 (- (length line) 10)))))))
   (delay 1000)))