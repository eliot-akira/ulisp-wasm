;
; uLisp GSM Server
; see http://www.ulisp.com/show?1Q0L
;

(defvar ok (concatenate 'string "OK" (string #\return)))

(defvar at-textmode "AT+CMGF=1")

(defvar at-usesim "AT+CPMS=\"SM\"")

(defvar at-send "AT+CMGS=\"")

(defvar at-readall "AT+CMGL=\"ALL\"")

(defvar at-delete "AT+CMGD=")

(defun command (message)
  (with-serial (str 1)
    (write-line message str)
    (loop
     (let ((line (read-line str)))
       (print line)
       (when (string= line ok) (return))))))

; Find positions of commas in string

(defun commas (string)
  (let (commas)
    (dotimes (x (length string) (reverse commas))
      (when (eq (char string x) #\,) (push x commas)))))

; Read messages to list: n sender message

(defun get-sms ()
  (let (all)
    (with-serial (str 1)
      (write-line at-readall str)
      (read-line str)
      (loop
       (let ((head (read-line str)))
         (when (string= head ok) (return))
         (let* ((message (read-line str))
                (c (commas head))
                (nstr (subseq head 6 (first c)))
                (n (read-from-string nstr))
                (phone (read-from-string (subseq head (1+ (second c)) (third c)))))
         (push (list n phone message) all)
         (read-line str)))))
    all))

; Send an SMS message - phone number is a string

(defun send (phone message)
  (with-serial (str 1)
    (write-line (concatenate 'string at-send phone "\"") str)
    (write-string message str)
    (write-byte 26 str)))

; Delete message n

(defun delete (n)
  (command 
   (concatenate 
    'string at-delete 
    (princ-to-string n))))

; Listen for messages, evaluate them, and SMS back the result

(defun listener ()
  (command at-textmode)
  (command at-usesim)
  (loop
    (let ((check (get-sms)))
     (when check
       (print check)
       (let* ((sms (first check))
              (n (first sms))
              (phone (second sms))
              (message (third sms))
              (result (eval (read-from-string message)))
              (reply (princ-to-string result)))
         (print "Replying to ") (princ phone)
         (send phone reply)
         (delay 5000)
         (delete n))))
   (delay 5000)))