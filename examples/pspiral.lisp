; Prime number spiral
; see http://www.ulisp.com/show?35SJ

(defun spiral (n)
  (let* ((k (ceiling (/ (1- (sqrt n)) 2)))
         (j (1+ (* 2 k)))
         (m (* j j))
         (j (1- j)))
    (cond
     ((>= n (- m j)) (list (- k (- m n)) (- k)))
     ((>= n (- (decf m j) j)) (list (- k) (+ (- k) (- m n))))
     ((>= n (- (decf m j) j)) (list (+ (- k) (- m n)) k))
     (t (list k (- k (- m n j)))))))

(defun pspiral (width height &optional print)
  (let* ((size (* height height))
         (a (make-array size :element-type 'bit :initial-element 1))
         (x0 (truncate width 2)) (y0 (truncate height 2))
         (plotn (lambda (n colour) 
                  (let ((c (spiral n)))
                    (draw-pixel 
                     (+ (truncate width 2) (first c) -1)
                     (- (truncate height 2) (second c))
                     colour))))
         (white #xFFFF)
         (black 0)
         (green #b0000011111100000)
         (p 1) (n 0))
    (fill-screen 0)
    (fill-rect (truncate (- width height) 2) 0 height height)
    (setf (aref a p) 0) (plotn p 0)
    ; Sieve of Eratosthenes
    (loop
     ; Set p to next uncrossed number
     (loop
      (incf p)
      (when (>= p size) (setq p nil) (return))
      (when (= (aref a p) 1) (return)))
     (when (null p) (return))
     ; Print next prime and plot it in green
     (when print
       (format t "~6d" p) (incf n)
       (when (= n 20) (setq n 0) (format t "~%")))
     (plotn p green)
     ; Cross out all increments of p
     (let ((i p))
       (loop
        (incf i p)
        (when (>= i size) (return))
        (setf (aref a i) 0) (plotn i 0))))))

(defun run () (pspiral 320 240))
