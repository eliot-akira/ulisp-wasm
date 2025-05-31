; CRC-32 Cyclic Redundancy Check
; http://www.ulisp.com/show?1EO1
(defun crc32 (str)
  (let ((crc #xFFFFFFFF))
    (dotimes (k (length str))
      (let* ((c (char str k))
             (n (char-code c)))
        (dotimes (i 8)
          (setq crc 
                (if (oddp (logxor n crc))
                    (logxor (logand (ash crc -1) #x7FFFFFFF) #xEDB88320)
                  (logand (ash crc -1) #x7FFFFFFF)))
          (setq n (ash n -1)))))
    (logxor crc #xFFFFFFFF)))
