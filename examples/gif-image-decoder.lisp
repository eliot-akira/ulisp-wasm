; A GIF Image Decoder in uLisp - 28th April 2025
; http://www.ulisp.com/show?577T

(defvar *buf* 0)
(defvar *nbuf* 0)
(defvar *width* 0)
(defvar *block* 0)
(defvar *pixel* 0)
(defvar *x* 0)
(defvar *y* 0)

(defun get-n-bits (n str)
  (loop
   (unless (< *nbuf* n) (return))
   ;; Enough left in block?
   (when (zerop *block*)
     (setq *block* (read-byte str)))
   (setq *buf* (logior (ash (read-byte str) *nbuf*) *buf*))
   (decf *block*)
   (incf *nbuf* 8))
  (let ((result (logand *buf* (1- (ash 1 n)))))
    (setq *buf* (ash *buf* (- n)))
    (decf *nbuf* n)
    result))

(defun first-pixel (table c)
  (let ((rest (aref table c 0))
        (this (aref table c 1)))
    (cond
     ((= -1 rest) this)
     (t (first-pixel table rest)))))

(defun plot-sequence (table c)
  ; Measure backtrack
  (let ((rest c) (i 0))
    (loop
     (when (= rest -1) (return))
     (setq rest (aref table rest 0))
     (incf i))
    ; Plot backwards
    (setq *pixel* (+ *pixel* i -1))
    (setq rest c)
    (loop
     (when (= rest -1) (return))
     (draw-pixel (+ *x* (mod *pixel* *width*))
                 (+ *y* (truncate *pixel* *width*))
                 (aref colour-table (aref table rest 1)))
     (decf *pixel*)
     (setq rest (aref table rest 0)))
    (setq *pixel* (+ *pixel* i 1))))

(defun rgb (r g b)
 (logior (ash (logand r #xf8) 8) (ash (logand g #xfc) 3) (ash b -3)))

(defun skip-n-bytes (n str)
  (dotimes (x n) (read-byte str)))

(defun power-2-p (x)
  (zerop (logand x (1- x))))

(defun image-descriptor (str colbits colours table)
  (let* ((bits (1+ colbits))
        (end (1+ colours))
        (free (1+ end))
        (clr colours)
        stop)
    (skip-n-bytes 10 str)
    (setq *nbuf* 0 *buf* 0 *block* 0)
    (let ((code -1) (last -1))
      (loop                  
       (setq last code)
       (setq code (get-n-bits bits str))
       (cond
        ((= code clr)
         (setq free (1+ end))
         (setq bits (1+ colbits))
         (setq code -1))
        ((= code end)
         (setq stop t))
        ((= last -1)
         (plot-sequence table code))
        ((<= code free) ; Found in table
         (when (< free 4096)
           (setf (aref table free 0) last)
           (setf (aref table free 1)
                 (first-pixel table 
                              (if (= code free) last code)))
           (incf free)
           (when (and (power-2-p free) (< free 4096)) (incf bits)))
         (plot-sequence table code)))
       (when stop (return)))
      (unless (zerop (read-byte str)) (error "Bad block end")))))

(defun extension-block (str)
  (let ((gce (read-byte str)))
    (case gce
      (#xff
       (let ((length (read-byte str)))
         (skip-n-bytes length str)
         ;; Go past extension
         (loop
          (let ((length (read-byte str)))
            (when (zerop length) (return))
            (dotimes (x length) (read-byte str))))))
      (t
       (let ((length (read-byte str)))
         (skip-n-bytes (1+ length) str))))))

(defun display-gif (filename &optional (x 0) (y 0))
  (with-sd-card (str filename)
    (skip-n-bytes 6 str) ; id and version
    (let* ((width (+ (read-byte str) (ash (read-byte str) 8)))
           (height (+ (read-byte str) (ash (read-byte str) 8)))
           (fld (read-byte str))
           (bk (read-byte str))
           (aspect (read-byte str))
           (colbits (max (1+ (logand fld 7)) 2))
           (colours (ash 1 colbits))
           (colour-table (make-array colours)))
      (setq *x* x *y* y)
      (setq *width* width)
      (setq *pixel* 0)
      ;; Initialise colour table
      (dotimes (colour colours)
        (setf (aref colour-table colour)
              (rgb (read-byte str) (read-byte str) (read-byte str))))
      ;; Make and initialise the compression table
      (let ((table (make-array '(4096 2))))
        (dotimes (n colours) (setf (aref table n 0) -1 (aref table n 1) n))         
        ;; Parse blocks
        (loop
         (let ((header (read-byte str)))
           (case header
             ;; Parse image descriptor
             (#x2c (image-descriptor str colbits colours table))
             ;; Skip extension block
             (#x21 (extension-block str))
             ;; Terminating byte
             (#x3b (return))
             (t (error "Unknown header ~x" header)))))))))