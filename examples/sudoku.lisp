; Sudoku solver
; see http://www.ulisp.com/show?33J9
;

(defvar board
  #2a((0 0 5 3 0 0 0 0 0)
      (8 0 0 0 0 0 0 2 0)
      (0 7 0 0 1 0 5 0 0)
      (4 0 0 0 0 5 3 0 0)
      (0 1 0 0 7 0 0 0 6)
      (0 0 3 2 0 0 0 8 0)
      (0 6 0 5 0 0 0 0 9)
      (0 0 4 0 0 0 0 3 0)
      (0 0 0 0 0 9 7 0 0)))

(defun guess (index)
  (let ((row (truncate index 9))
        (col (mod index 9)))
    (cond
     ((or (>= row 9) (>= col 9)) t)
     ((plusp (aref board row col)) (guess (1+ index)))
     (t
      (dotimes (i 9 (fail row col))
        (when (check (1+ i) row col)
          (setf (aref board row col) (1+ i))
          (when (guess (1+ index)) (return t))))))))

(defun fail (row col)
  (setf (aref board row col) 0)
  nil)

(defun check (num row col)
  (let ((r (* (truncate row 3) 3))
        (c (* (truncate col 3) 3)))
    (dotimes (i 9 t)
      (when (or (= num (aref board row i))
                (= num (aref board i col))
                (= num (aref board (+ r (mod i 3))
                             (+ c (truncate i 3)))))
        (return nil)))))

(defun print-board ()
  (dotimes (r 9)
    (if (zerop (mod r 3))
        (format t "~%+---+---+---+---+---+---+---+---+---+~%|") 
      (format t "~%+           +           +           +~%|"))
    (dotimes (c 9)
      (if (= 2 (mod c 3))
          (format t " ~a |" (aref board r c))
        (format t " ~a  " (aref board r c)))))
  (format t "~%+---+---+---+---+---+---+---+---+---+~%~%"))

(defun solve ()
  (if (guess 0) (print-board)
    (format t "Sorry, solution not found...")))
