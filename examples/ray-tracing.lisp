; Ray tracing using the uLisp Graphics Extensions
; See http://www.ulisp.com/show?2NWA

; Convert red, green, blue components 0 to 1 to a 16-bit 565 RGB value
(defun rgb (r g b)
 (logior
  (ash (logand (truncate (* 255 r)) #xf8) 8)
  (ash (logand (truncate (* 255 g)) #xfc) 3)
  (ash (truncate (* 255 b)) -3)))

; Vector routines

(defun colour (r g b) (list r g b))
(defun point (x y z) (list x y z))
(defun vect (x y z) (list x y z))

(defun dot (v w) (apply + (mapcar * v w)))
(defun mul (k v) (mapcar (lambda (z) (* k z)) v))
(defun add (v w) (mapcar + v w))
(defun sub (v w) (mapcar - v w))

(defun sq (x) (* x x))
(defun mag (v) (sqrt (apply + (mapcar sq v))))

(defun unit-vector (v)
  (let ((d (mag v)))
    (mapcar (lambda (j) (/ j d)) v)))

(defun distance (p1 p2)
  (mag (mapcar - p1 p2)))

(defvar *world* nil)
(defvar *eye* nil)
(defvar *light* nil)

; Objects

(defun sphere-center (s) (second s))
(defun sphere-radius (s) (third s))
(defun sphere-colour (s) (nth 3 s))

(defun plane-point (s) (second s))
(defun plane-normal (s) (third s))
(defun plane-colour (s) (nth 3 s))

(defun make (&rest list)
  (push list *world*))

; Methods

; Get the colour of the object s
(defun object-colour (s)
  (case (first s)
    (sphere (sphere-colour s))
    (plane (plane-colour s))))

; Get the normal to the surface of object s at the point pt
(defun object-normal (s pt)
  (case (first s)
    (sphere (sphere-normal s pt))
    (plane (plane-normal s))))

(defun sphere-normal (s pt)
  (unit-vector (sub (sphere-center s) pt)))

; Find where the ray defined by pt and pr hits object s and return distance
(defun object-hit (s pt pr)
  (case (first s)
    (sphere (sphere-hit s pt pr))
    (plane (plane-hit s pt pr))))

(defun sphere-hit (s pt pr)
  (let* ((c (sphere-center s))
         (oc (mapcar - pt c)))
    (minroot
     (apply + (mapcar sq pr))
     (* 2 (dot oc pr))
     (- (dot oc oc) (sq (sphere-radius s))))))

(defun minroot (a b c)
  (if (zerop a)
      (/ (- c) b)
    (let ((disc (- (sq b) (* 4 a c))))
      (unless (minusp disc)
        (min (/ (+ (- b) (sqrt disc)) (* 2 a))
             (/ (- (- b) (sqrt disc)) (* 2 a)))))))

(defun plane-hit (s pt pr)
  (let ((denom (dot (plane-normal s) pr)))
    (unless (zerop denom)
      (let ((n (/ (dot (sub (plane-point s) pt) (plane-normal s)) denom)))
        (when (>= n 0) n)))))

(defun background (x y) (colour 0.5 0.7 1))

(defun tracer (width height)
    (dotimes (x width)
      (dotimes (y height)
        (draw-pixel x y (apply rgb (colour-at (- x (/ width 2)) (- (/ height 2) y)))))))

(defun colour-at (x y)
  (let ((c (send-ray 
            *eye*
            (unit-vector
             (sub (list x y 0) *eye*)))))
   (or c (background x y))))

; Return colour where ray hits first object, or nil if no hit
(defun send-ray (pt pr)
  (let* ((f (first-hit pt pr))
         (s (first f))
         (hit (second f)))
    (when s
      (let* ((c (mul (lambert s hit pr) (object-colour s)))
             (f2 (first-hit *light* (unit-vector (sub hit *light*))))
             (h2 (second f2)))
        (cond
         ((< (distance hit h2) 1) c)
         (t (mul .75 c)))))))

; Return nearest surface in world, and hit point
(defun first-hit (pt pr)
  (let (surface hit dist)
    (dolist (s *world*)
      (let ((d (object-hit s pt pr)))
        (when d
          (let ((h (add pt (mul d pr))))
            (when (or (null dist) (< d dist))
              (setq surface s)
              (setq hit h)
              (setq dist d))))))
    (list surface hit)))

(defun lambert (s hit pr)
  (max 0 (dot pr (object-normal s hit))))

(defun ray-trace (width height)
  (setq *world* nil)
  (setq *eye* (point 0.0 10.0 (cond ((< width 240.0) 180.0) ((< width 320.0) 300.0) (t 400.0))))
  (setq *light* (point -5000 10000 -1200))
  (make 'plane (point 0 -200 0) (vect 0 -1 0) (colour 2 2 2))
  (make 'sphere (point -250 0 -1000) 200 (colour 0 1 .5))
  (make 'sphere (point 50 0 -1200) 200 (colour 1 .5 0))
  (make 'sphere (point 400 0 -1400) 200 (colour 0 .5 1))
  (make 'sphere (point -50 -150 -600) 50 (colour 0 0 1))
  (make 'sphere (point 200 -150 -800) 50 (colour 1 0 0))
  (tracer width height))