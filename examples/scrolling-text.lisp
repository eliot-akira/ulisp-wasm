; uLisp Scrolling Text Display
; see http://www.ulisp.com/show?1QHW

(defvar *codes* '(#x0 #x6 #x220 #x12CE #x12ED #xC24 #x235D #x400 #x2400 #x900 #x3FC0 #x12C0 
 #x800 #xC0 #x0 #xC00 #xC3F #x6 #xDB #x8F #xE6 #x2069 #xFD #x7 #xFF #xEF #x1200 #xA00 #x2400 
 #xC8 #x900 #x1083 #x2BB #xF7 #x128F #x39 #x120F #xF9 #x71 #xBD #xF6 #x1200 #x1E #x2470 #x38 
 #x536 #x2136 #x3F #xF3 #x203F #x20F3 #xED #x1201 #x3E #xC30 #x2836 #x2D00 #x1500 #xC09 #x39 
 #x2100 #xF #xC03 #x8))

(defun on (bri)
  (with-i2c (str #x70)
    (write-byte #x21 str)
    (restart-i2c str) 
    (write-byte (+ bri #xe0) str)
    (restart-i2c str)
    (write-byte #x81 str)))

(defun display (x str)
  (if (>= x #x60) (setq x (- x #x20)))
  (write-byte (nth (- x 32) *codes*) str)
  (write-byte (ash (nth (- x 32) *codes*) -8) str))

(defun scroll (string)
  (let ((len (length string)))
   (loop
    (dotimes (x (+ len 4))
      (with-i2c (str #x70)
        (write-byte #x00 str)
        (dotimes (j 4)
          (let ((i (+ x j -4)))
            (display
             (if (<= 0 i (1- len))
               (char-code (char string i))
             32)
           str))))
      (delay 250)))))
