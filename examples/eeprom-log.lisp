; Data logging - http://www.ulisp.com/show?1FCN

; Write a list of up to 64 bytes to the EPROM:

(defun wr (adr lst)
  (with-i2c (str #x50)
    (write-byte (ash adr -8) str)
    (write-byte (logand adr #xFF) str)
    (dolist (b lst)
      (write-byte b str))))

; Read n bytes of data

(defun rd (adr n)
  (let (lst)
    (with-i2c (str #x50)
      (write-byte (ash adr -8) str)
      (write-byte (logand adr #xFF) str)
      (restart-i2c str n)
      (dotimes (i n)
        (push (read-byte str) lst)))
    (reverse lst)))
