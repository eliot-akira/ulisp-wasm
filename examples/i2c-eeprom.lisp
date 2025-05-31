; Data logging with I2C Serial EEPROM chip
; http://www.ulisp.com/show?1FCN

; Write data
(defun wr (adr lst)
  (with-i2c (str #x50)
    (write-byte (ash adr -8) str)
    (write-byte (logand adr #xFF) str)
    (dolist (b lst)
      (write-byte b str))))

; Read data
(defun rd (adr n)
  (let (lst)
    (with-i2c (str #x50)
      (write-byte (ash adr -8) str)
      (write-byte (logand adr #xFF) str)
      (restart-i2c str n)
      (dotimes (i n)
        (push (read-byte str) lst)))
    (reverse lst)))
