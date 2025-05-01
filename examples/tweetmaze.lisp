; Tweetmaze - http://www.ulisp.com/show?1ANR

(defun solve (maze)
  (let ((go (1- (length maze)))
        (queue '((0))))
    (loop
     (if (= (caar queue) go) 
        (return (reverse (car queue)))
      (let* ((top (pop queue))
             (pos (first top))
             (rt (+ pos (nth pos maze)))
             (lt (- pos (nth pos maze))))
        (when (>= lt 0) (setq queue (append queue (list (cons lt top)))))
        (when (<= rt go) (setq queue (append queue (list (cons rt top))))))))))
