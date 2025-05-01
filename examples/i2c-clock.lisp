;
; I2C Clock
; see http://www.ulisp.com/show?1DO6
;

(defun set (hr min)
  (with-i2c (str #x68)
    (write-byte 0 str)
    (write-byte 0 str)
    (write-byte min str)
    (write-byte hr str)))

(defvar seg '(#x3F #x06 #x5B #x4F #x66 #x6D #x7D #x07 #x7F #x6F))

(defun go ()
  (with-i2c (str #x70)
    (write-byte #x21 str)
    (restart-i2c str)
    (write-byte #x81 str)
    (restart-i2c str) 
    (write-byte #xe1 str)))

(defun tim (hr min col)
  (with-i2c (str #x70)
    (write-byte 0 str)
    (dolist (c (list
                (nth (/ hr 16) seg) 
                (nth (mod hr 16) seg) 
                col
                (nth (/ min 16) seg)
                (nth (mod min 16) seg)))
      (write-byte c str)
      (write-byte 0 str))))

(defun clk ()
  (let ((col 2) hr min)
    (go)
    (loop
     ;; Read the time from the RTC
     (with-i2c (str #x68)
       (write-byte 1 str)
       (restart-i2c str 2)
       (setq min (read-byte str))
       (setq hr (read-byte str)))
     ;; Write the time to the display
     (tim hr min col)
     ;; Flash the colon
     (setq col (- 2 col))
     (delay 1000))))
