;
; DDS Signal Generator
; see http://www.ulisp.com/show?1GQS
;

(defun ini ()
  (let ((rst 10)
        (clk 13)
        (fq 9)
        (dat 11))
    (pinmode rst t)
    (pinmode clk t)
    (pinmode fq t)
    (pul rst)
    (pul clk)
    (pul fq)))

(defun pul (pin)
  (digitalwrite pin t)
  (digitalwrite pin nil))

(defun ton (f)
  (with-spi (str 9 2 t)
     (mapc (lambda (i) (write-byte i str)) f)
     (write-byte #x00 str)))

(defun dis ()
  (loop
   (let* ((a (analogread 0))
          (a1 (logand a #xff))
          (a2 (ash a -8)))
     (with-spi (str 9 2 t)
       (mapc (lambda (i) (write-byte i str)) (list 0 a1 a2 0))
       (write-byte #x00 str)))
   (delay 100)))