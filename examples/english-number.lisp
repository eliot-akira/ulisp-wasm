; http://forum.ulisp.com/t/writing-a-number-in-english/1799
(defun english (n)
  (let ((t10 (truncate n 10)) (m10 (mod n 10))
        (t100 (truncate n 100)) (m100 (mod n 100))
        (t1000 (truncate n 1000)) (m1000 (mod n 1000)))
    (cond
     ((not (<= 0 n 999999)) 
      (error "n must be between 0 and 999999"))
     ((< n 10)
      (nth n '("zero" "one" "two" "three" "four" "five" "six" "seven" "eight" "nine")))
     ((< n 20)
      (nth (- n 10) '("ten" "eleven" "twelve" "thirteen" "fourteen" "fifteen"
                      "sixteen" "seventeen" "eighteen" "nineteen")))
     ((and (< n 100) (zerop m10))
      (nth (- t10 2) '("twenty" "thirty" "forty" "fifty" "sixty" "seventy" "eighty"
                       "ninety")))
     ((< n 100)
      (format nil "~a-~a" (english (* t10 10)) (english m10)))
     ((and (< n 1000) (zerop m100))
      (format nil "~a hundred" (english t100)))
     ((< n 1000)
      (format nil "~a hundred and ~a" (english t100) (english m100)))
     ((zerop m1000)
      (format nil "~a thousand" (english t1000)))
     (t
      (format nil "~a thousand ~a~a" 
              (english t1000) (if (< m1000 100) "and " "") (english m1000))))))
