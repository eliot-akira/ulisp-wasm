; Dot-matrix Clock
; see http://www.ulisp.com/show?3AC6

; 3x8 pixel dot-matrix character definitions
(defvar *digits*
  '((#x7F #x41 #x7F) (#x00 #x20 #x7F) (#x4F #x49 #x79) (#x49 #x49 #x7F) (#x78 #x08 #x7F)
    (#x79 #x49 #x4F) (#x7F #x49 #x4F) (#x40 #x40 #x7F) (#x7F #x49 #x7F) (#x79 #x49 #x7F)))

#|
;; Alternative rounded digits
(defvar *digits*
  '((#x3E #x41 #x3E) (#x00 #x20 #x7F) (#x27 #x49 #x31) (#x2A #x49 #x36) (#x18 #x28 #x7F)
    (#x7A #x49 #x4E) (#x3E #x49 #x26) (#x47 #x48 #x70) (#x36 #x49 #x36) (#x30 #x48 #x3F)))
|#

; Display

(defvar adr2 116)
(defvar adr1 117)

(defun setup (addr bri)
  (with-i2c (s addr)
    (write-byte #x21 s)
    (restart-i2c s)
    (write-byte #x81 s)
    (restart-i2c s)
    (write-byte (+ #xe0 bri) s)))

(defun put (addr byt)
  (with-i2c (s addr)
    (write-byte 0 s)
    (dolist (item byt)
      (write-byte (logior (ash item -1) (ash item 7)) s)
      (write-byte 0 s))))

(defun showtime (hours mins)
  (put adr1
       (append
        (if (zerop (truncate hours 10)) '(0 0) (cdadr *digits*))
        '(0)
        (nth (mod hours 10) *digits*)
        '(0 #x12)))
  (put adr2
       (append
        '(0)
        (nth (truncate mins 10) *digits*)
        '(0)
        (nth (mod mins 10) *digits*))))

(defun clock (h m s)
    (setup adr1 8)
    (setup adr2 8)
    (loop
     (for-millis (1000)
       (showtime h m)
       (incf s)
       (when (= s 60) (incf m) (setq s 0)
         (when (= m 60) (incf h) (setq m 0)
           (when (= h 13) (setq h 1)))))))