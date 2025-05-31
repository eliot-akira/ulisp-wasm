; LCD character display
; See http://www.ulisp.com/show?2B6A
;

; Arduino pins connected to D7 D6 D5 D4
(defvar dat '(5 4 3 2))

; Arduino pins connected to E and RS
(defvar en 8)
(defvar rs 9)

; Initialise display
(defun ini ()
  (mapc (lambda (x) (pinmode x t)) dat)
  (pinmode en t) 
  (pinmode rs t) 
  (cmd #x33)
  (cmd #x32)
  (cmd #x0e)
  (cmd #x01))

; Send command
(defun cmd (c)
  (digitalwrite rs 0)
  (byt c)
  (digitalwrite rs 1))

; Send four bit nibble to display
(defun nib (n)
  (let ((sh -4))
    (mapc (lambda (x) (digitalwrite x (logand (ash n (incf sh)) 1))) dat)
    (digitalwrite en 1)
    (digitalwrite en 0)))

; Send byte to display
(defun byt (b)
  (nib (ash b -4))
  (nib (logand b #xf)))

; Send string to display
(defun str (s)
  (dotimes (i (length s))
    (byt (char-code (char s i)))))

; Demo
(defun go ()
  (str "Hello")
  (cmd #xc0)
  (str "World!"))
