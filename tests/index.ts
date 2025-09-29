import { createLisp } from '../node/index.js'
import { test, is, run as runTests } from 'testra'

let lisp, run, code
let t = true
let nil = null
let nothing = '' // ?

test('create', async () => {
  is(true, createLisp instanceof Function, 'createLisp is a function')

  let result: any = createLisp()

  is(true, result instanceof Promise, 'create returns a promise')

  lisp = await result

  is(true, lisp instanceof Object, 'promise resolves to module instance')

  run = lisp.eval

  is(true, run instanceof Function, 'eval is a function')

  code = `(+ 1 2)`
  result = await run(code)
  is(3, result, code)

  code = `
(defun fib (n)
(if (< n 3) 1
  (+ (fib (- n 1)) (fib (- n 2)))))
(fib 5)
`

  result = await run(code)
  is(5, result, '(fib 5)')

  code = `"hi"`
  result = await run(code)
  is('hi', result, code)

  // TODO: Define a function that can be called from Lisp
  // is(123, await run(`(let ((cat 123)) cat)`))
})

/**
 * Tests ported from ./builder/Test Suites/AutoTester 32-bit.lisp
 */

test('Symbols', async () => {
  is(123, await run(`(let ((cat 123)) cat)`), 'let')
  is(79, await run(`(let ((ca% 79)) ca%)`), 'let')
  is(83, await run(`(let ((1- 83)) 1-)`), 'let')
  is(13, await run(`(let ((12a 13)) 12a)`), 'let')
  is(17, await run(`(let ((-1- 17)) -1-)`), 'let')
  is(66, await run(`(let ((abcdef 66)) abcdef)`), 'let')
  is(77, await run(`(let ((abcdefg 77)) abcdefg)`), 'let')
  is(88, await run(`(let ((abcdefgh 88)) abcdefgh)`), 'let')
  is(99, await run(`(let ((abcdefghi 99)) abcdefghi)`), 'let')
  is(1010, await run(`(let ((abcdefghij 1010)) abcdefghij)`), 'let')
  is('ab9', await run(`(princ-to-string 'ab9)`), 'let')
  is(t, await run(`(eq 'me 'me)`), 'let')
  is(t, await run(`(eq 'fishcake 'fishcake)`), 'let')
  is(nil, await run(`(eq 'fishcak 'fishca)`), 'let')
})

test('Arithmetic', async () => {
  is(9, await run(`(* -3 -3)`), '*')
  is(32580, await run(`(* 180 181)`), '*')
  is(1, await run(`(*)`), '*')
  is(32767, await run(`(+ 32765 1 1)`), '+')
  is(0, await run(`(+)`), '+')
  is(-2, await run(`(+ -1 -1)`), '+')
  is(-4, await run(`(- 4)`), '-')
  is(0, await run(`(- 4 2 1 1)`), '-')
  is(2, await run(`(/ 60 10 3)`), '/')
  is(2, await run(`(1+ 1)`), '1+')
  is(0, await run(`(1+ -1)`), '1+')
  is(0, await run(`(1- 1)`), '1-')
})

test('Comparisons', async () => {
  is(t, await run(`(< -32768 32767)`), '<')
  is(t, await run(`(< -1 0)`), '<')
  is(t, await run(`(< 1 2 3 4)`), '<')
  is(nil, await run(`(< 1 2 2 4)`), '<')
  is(t, await run(`(<= 1 2 2 4)`), '<')
  is(nil, await run(`(<= 1 3 2 4)`), '<')
  is(t, await run(`(> 4 3 2 1)`), '<')
  is(nil, await run(`(> 4 2 2 1)`), '<')
  is(t, await run(`(>= 4 2 2 1)`), '<')
  is(nil, await run(`(>= 4 2 3 1)`), '<')
  is(t, await run(`(< 1)`), '<')
  is(nil, await run(`(< 1 3 2)`), '<')
  is(nil, await run(`(< -1 -2)`), '<')
  is(nil, await run(`(< 10 10)`), '<')
  is(t, await run(`(<= 10 10)`), '<=')
  is(t, await run(`(= 32767 32767)`), '=')
  is(t, await run(`(>= 10 10)`), '>=')
  is(nil, await run(`(>= 9 10)`), '>=')
  is(t, await run(`(/= 1)`), '/=')
  is(nil, await run(`(/= 1 2 1)`), '/=')
  is(nil, await run(`(/= 1 2 3 1)`), '/=')
  is(t, await run(`(/= 1 2 3 4)`), '/=')
  is(t, await run(`(plusp 1)`), 'plusp')
  is(nil, await run(`(plusp 0)`), 'plusp')
  is(nil, await run(`(plusp -1)`), 'plusp')
  is(nil, await run(`(minusp 1)`), 'minusp')
  is(nil, await run(`(minusp 0)`), 'minusp')
  is(t, await run(`(minusp -1)`), 'minusp')
  is(nil, await run(`(zerop 1)`), 'zerop')
  is(t, await run(`(zerop 0)`), 'zerop')
  is(nil, await run(`(zerop -1)`), 'zerop')
  is(nil, await run(`(evenp 1)`), 'evenp')
  is(t, await run(`(evenp 0)`), 'evenp')
  is(nil, await run(`(evenp -1)`), 'evenp')
  is(t, await run(`(oddp 1)`), 'oddp')
  is(nil, await run(`(oddp 0)`), 'oddp')
  is(t, await run(`(oddp -1)`), 'oddp')
})

test('Maths functions', async () => {
  is(10, await run(`(abs 10)`), 'abs')
  is(10, await run(`(abs -10)`), 'abs')
  is(45, await run(`(max 23 45)`), 'max')
  is(-23, await run(`(max -23 -45)`), 'max')
  is(23, await run(`(min 23 45)`), 'min')
  is(-45, await run(`(min -23 -45)`), 'min')
  is(t, await run(`(zerop 0)`), 'zerop')
  is(nil, await run(`(zerop 32767)`), 'zerop')
  is(1, await run(`(mod 13 4)`), 'mod')
  is(3, await run(`(mod -13 4)`), 'mod')
  is(-3, await run(`(mod 13 -4)`), 'mod')
  is(-1, await run(`(mod -13 -4)`), 'mod')
})

test('Number entry', async () => {
  is(-1, await run(`#xFFFFFFFF`), 'hex')
  is(1, await run(`#x0001`), 'hex')
  is(4112, await run(`#x1010`), 'hex')
  is(511, await run(`#o777`), 'oct')
  is(1, await run(`#o1`), 'oct')
  is(65535, await run(`#o177777`), 'oct')
  is(-1, await run(`#b11111111111111111111111111111111`), 'bin')
  is(10, await run(`#b1010`), 'bin')
  is(0, await run(`#b0`), 'bin')
  is(12, await run(`#'12`), 'hash')
  is(6, await run(`(funcall #'(lambda (x) (+ x 2)) 4)`), 'hash')
})

test('Boolean', async () => {
  is(7, await run(`(and t t 7)`), 'and')
  is(nil, await run(`(and t nil 7)`), 'and')
  is(t, await run(`(or t nil 7)`), 'or')
  is(1, await run(`(or 1 2 3)`), 'or')
  is(nil, await run(`(or nil nil nil)`), 'or')
  is('a', await run(`(or 'a 'b 'c)`), 'or')
  is(1, await run(`(let ((x 0)) (or (incf x)) x)`), 'or')
})

test('Bitwise', async () => {
  is(-1, await run(`(logand)`), 'logand')
  is(170, await run(`(logand #xAA)`), 'logand')
  is(0, await run(`(logand #xAAAA #x5555)`), 'logand')
  is(0, await run(`(logior)`), 'logior')
  is(170, await run(`(logior #xAA)`), 'logior')
  is(0xFFFF, await run(`(logior #xAAAA #x5555)`), 'logior')
  is(0, await run(`(logxor)`), 'logxor')
  is(170, await run(`(logior #xAA)`), 'logxor')
  is(255, await run(`(logxor #xAAAA #xAA55)`), 'logxor')
  is(-43691, await run(`(lognot #xAAAA)`), 'lognot')
  is(492, await run(`(ash 123 2)`), 'ash')
  is(65535, await run(`(ash #xFFFF 0)`), 'ash')
  is(16383, await run(`(ash #xFFFF -2)`), 'ash')
  is(262140, await run(`(ash #xFFFF 2)`), 'ash')
  is(8191, await run(`(ash #x7FFF -2)`), 'ash')
  is(t, await run(`(logbitp 0 1)`), 'logbitp')
  is(t, await run(`(logbitp 1000 -1)`), 'logbitp')
  is(nil, await run(`(logbitp 1000 0)`), 'logbitp')
})

test('Tests', async () => {
  is(t, await run(`(atom nil)`), 'atom')
  is(t, await run(`(atom t)`), 'atom')
  is(nil, await run(`(atom '(1 2))`), 'atom')
  is(nil, await run(`(consp 'b)`), 'consp')
  is(t, await run(`(consp '(a b))`), 'consp')
  is(nil, await run(`(consp nil)`), 'consp')
  is(nil, await run(`(listp 'b)`), 'listp')
  is(t, await run(`(listp '(a b))`), 'listp')
  is(t, await run(`(listp nil)`), 'listp')
  is(t, await run(`(numberp (+ 1 2))`), 'numberp')
  is(nil, await run(`(numberp 'b)`), 'numberp')
  is(nil, await run(`(numberp nil)`), 'numberp')
  is(t, await run(`(symbolp 'b)`), 'symbolp')
  is(nil, await run(`(symbolp 3)`), 'symbolp')
  is(t, await run(`(symbolp nil)`), 'symbolp')
  is(nil, await run(`(streamp 'b)`), 'streamp')
  is(nil, await run(`(streamp nil)`), 'streamp')
  is(t, await run(`(let (x) (boundp 'x))`), 'boundp')
  is(nil, await run(`(let (x) (boundp 'y))`), 'boundp')
})

test('cxr operations', async () => {
  is('a', await run(`(car '(a b c))`), 'car')
  is(nil, await run(`(car nil)`), 'car')
  is('a', await run(`(first '(a b c))`), 'first')
  is(nil, await run(`(first nil)`), 'first')
  is('b', await run(`(cdr '(a . b))`), 'cdr')
  is('b', await run(`(car (cdr '(a b)))`), 'cdr')
  is(nil, await run(`(cdr nil)`), 'cdr')
  is('b', await run(`(rest '(a . b))`), 'rest')
  is('b', await run(`(car (rest '(a b)))`), 'rest')
  is(nil, await run(`(rest nil)`), 'rest')
  is('a', await run(`(caaar '(((a))))`), 'caaar')
  is(nil, await run(`(caaar nil)`), 'caaar')
  is('b', await run(`(caadr '(a (b)))`), 'caadr')
  is(nil, await run(`(caadr nil)`), 'caadr')
  is('a', await run(`(caar '((a)))`), 'caar')
  is(nil, await run(`(caar nil)`), 'caar')
  is('c', await run(`(cadar '((a c) (b)))`), 'cadar')
  is(nil, await run(`(cadar nil)`), 'cadar')
  is('c', await run(`(caddr '(a b c))`), 'caddr')
  is(nil, await run(`(caddr nil)`), 'caddr')
  is('b', await run(`(cadr '(a b))`), 'cadr')
  is(nil, await run(`(second '(a))`), 'second')
  is('b', await run(`(second '(a b))`), 'second')
  is(nil, await run(`(cadr '(a))`), 'cadr')
  is('c', await run(`(caddr '(a b c))`), 'caddr')
  is(nil, await run(`(caddr nil)`), 'caddr')
  is('c', await run(`(third '(a b c))`), 'third')
  is(nil, await run(`(third nil)`), 'third')
  is('b', await run(`(car (cdaar '(((a b)) b c)))`), 'cdaar')
  is(nil, await run(`(cdaar nil)`), 'cdaar')
  is('c', await run(`(car (cdadr '(a (b c))))`), 'cdadr')
  is(nil, await run(`(cdadr nil)`), 'cdadr')
  is('b', await run(`(car (cdar '((a b c))))`), 'cdar')
  is(nil, await run(`(cdar nil)`), 'cdar')
  is('c', await run(`(car (cddar '((a b c))))`), 'cddar')
  is(nil, await run(`(cddar nil)`), 'cddar')
  is('d', await run(`(car (cdddr '(a b c d)))`), 'cdddr')
  is(nil, await run(`(car (cdddr '(a b c)))`), 'cdddr')
  is('c', await run(`(car (cddr '(a b c)))`), 'cddr')
  is(nil, await run(`(cddr '(a))`), 'cddr')
})

test('List operations', async () => {
  is('a', await run(`(car (cons 'a 'b))`), 'cons')
  is(nil, await run(`(car (cons nil 'b))`), 'cons')
  is(6, await run(`(length (append '(a b c) '(d e f)))`), 'append')
  is(nil, await run(`(append nil nil)`), 'append')

  is('(1 2 3 4 5 . 6)', await run(`(append '(1 2 3) '(4 5 . 6))`), 'append')

  is(nil, await run(`(car (list nil))`), 'list')
  is('a', await run(`(car (list 'a 'b 'c))`), 'list')
  is('c', await run(`(car (reverse '(a b c)))`), 'reverse')
  is(nil, await run(`(reverse nil)`), 'reverse')
  is(0, await run(`(length nil)`), 'length')
  is(4, await run(`(length '(a b c d))`), 'length')
  is(2, await run(`(length '(nil nil))`), 'length')
  is(nil, await run(`(assoc 'b nil)`), 'assoc')
  is(nil, await run(`(assoc 'b '(nil nil))`), 'assoc')
  is('(b . 12)', await run(`(assoc 'b '((a . 10) (b . 12)))`), 'assoc')
  is('(nil . 12)', await run(`(assoc nil '((a . 10) (nil . 12)))`), 'assoc')
  is('(b)', await run(`(assoc 'b '((a . 10) (b)))`), 'assoc')
  is('("three" . 3)', await run(`(assoc "three" '(("one" . 1) ("two" . 2) ("three" . 3)) :test string=)`), 'assoc')
  is('(3 4)', await run(`(member 3 '(1 2 3 4))`), 'member')
  is(nil, await run(`(member 5 '(1 2 3 4))`), 'member')
  is('(3 4)', await run(`(member 3 '(1 2 3 4) :test eq)`), 'member')
  is('("three" "four")', await run(`(member "three" '("one" "two" "three" "four") :test string=)`), 'member')
  is('("two" "three" "four")', await run(`(member "three" '("one" "two" "three" "four") :test string<)`), 'member')
})

test('map operations', async () => {
  is(2, await run(`(cadr (mapc + '(1 2 3 4)))`), 'mapc')
  is(10, await run(`(let ((x 0)) (mapc (lambda (y) (incf x y)) '(1 2 3 4)) x)`), 'mapc')
  is('(1 4 9 16)', await run(`(mapcar (lambda (x) (* x x)) '(1 2 3 4))`), 'mapcar')
  is('(1 4 9 16)', await run(`(mapcar * '(1 2 3 4) '(1 2 3 4))`), 'mapcar')
  is('(1 4 9 16 25)', await run(`(mapcar (lambda (x) (* x x)) '(1 2 3 4 5))`), 'mapcar')
  is('(1 4 2 5 3 6)', await run(`(mapcan #'list '(1 2 3) '(4 5 6))`), 'mapcan')
  is('(1 3 2 4)', await run(`(mapcan list '(1 2) '(3 4))`), 'mapcan')
  is('(1 5 9 2 6 10 3 7 11)', await run(`(mapcan list '(1 2 3 4) '(5 6 7 8) '(9 10 11))`), 'mapcan')
  is('(1 2 3 . 4)', await run(`(mapcan (lambda (x) x) '((1) (2) (3 . 4)))`), 'mapcan')
  is('(2 3 . 4)', await run(`(mapcan (lambda (x) x) '(nil (2) (3 . 4)))`), 'mapcan')
  is('(((1 2 3) 6 7 8) ((2 3) 7 8) ((3) 8))', await run(`(maplist #'cons '(1 2 3) '(6 7 8))`), 'maplist')
  is('(1 2 3)', await run(`(mapl #'cons '(1 2 3) '(6 7 8))`), 'maplist')
  is(
    '(3 7 11)',
    await run(`(mapcon (lambda (x) (when (eq (first x) (second x)) (list (car x)))) '(1 2 3 3 5 7 7 8 9 11 11))`),
    'mapcan'
  )
})

test('let/let*/lambda', async () => {
  is(7, await run(`(let ((x 7)) (let ((x 6) (y x)) y))`), 'let')
  is(6, await run(`(let* ((x 7)) (let* ((x 6) (y x)) y))`), 'let*')
  is(t, await run(`(let ((x t) (y nil) (w) z) (and x (null y) (null w) (null z)))`), 'let')
  is(t, await run(`(let* ((x t) (y nil) (w) z) (and x (null y) (null w) (null z)))`), 'let*')
  is(2, await run(`((lambda (x y) (setq y x) y) 2 3)`), 'lambda')
  is(9, await run(`((lambda (&rest x) (apply + x)) 2 3 4)`), 'lambda')
  is(8, await run(`((lambda (x &optional (y 4)) (* x y)) 2)`), 'lambda')
  is(6, await run(`((lambda (x &optional (y 4)) (* x y)) 2 3)`), 'lambda')
  is(6, await run(`((lambda (x &optional y) (* x y)) 2 3)`), 'lambda')
  is(123, await run(`((lambda (list) list) 123)`), 'lambda')
})

test('loops and control', async () => {
  is(8, await run(`(let ((x 6)) (progn (incf x) (incf x)))`), 'progn')
  is(21, await run(`(let ((x 6)) (dotimes (y 6 x) (setq x (+ x y))))`), 'dotimes')
  is(6, await run(`(let ((x 6)) (dotimes (y 6 y) (setq x (+ x y))))`), 'dotimes')
  is(0, await run(`(let ((x 6)) (dotimes (y 0 y) (setq x (+ x y))))`), 'dotimes')
  is(6, await run(`(let ((x 0)) (dolist (y '(1 2 3) x) (setq x (+ x y))))`), 'dolist')
  is(nil, await run(`(let ((x 0)) (dolist (y '(1 2 3)) (setq x (+ x y))))`), 'dolist')
  is(nil, await run(`(let ((x 0)) (dolist (y '(1 2 3) y) (setq x (+ x y))))`), 'dolist')
  is(6, await run(`(let ((x 0)) (loop (when (= x 6) (return x)) (incf x)))`), 'loop')
  is(6, await run(`(let ((x 0)) (loop (unless (< x 6) (return x)) (incf x)))`), 'loop')
  is('a', await run(`(let ((a 7)) (loop (progn (return 'a))))`), 'return')
  is(nil, await run(`(loop (return))`), 'return')
  is('a', await run(`(let ((a 7)) (loop (progn (return 'a) nil)))`), 'return')
  is(2, await run(`(do* ((x 1 (1+ x)) (y 0 (1+ x))) ((= 3 y) x))`), 'do')
  is(3, await run(`(do ((x 1 (1+ x)) (y 0 (1+ x))) ((= 3 y) x))`), 'do')
  is(720, await run(`(do* ((n 6) (f 1 (* j f)) (j n (- j 1))) ((= j 0) f))`), 'do')
  is(720, await run(`(let ((n 6)) (do ((f 1 (* j f)) (j n (- j 1))  ) ((= j 0) f)))`), 'do')
  is(10, await run(`(do (a (b 1 (1+ b))) ((> b 10) a) (setq a b))`), 'do')
})

test('conditions', async () => {
  is(3, await run(`(let ((a 2)) (if (= a 2) 3 4))`), 'if')
  is(4, await run(`(let ((a 2)) (if (= a 3) 3 4))`), 'if')
  is(4, await run(`(let ((a 3)) (if (= a 3) 4))`), 'if')
  is(nil, await run(`(let ((a 4)) (if (= a 3) 4))`), 'if')
  is(4, await run(`(let ((a 3)) (when (= a 3) 4))`), 'when')
  is(nil, await run(`(let ((a 2)) (when (= a 3) 4))`), 'when')
  is(nil, await run(`(let ((a 3)) (unless (= a 3) 4))`), 'unless')
  is(4, await run(`(let ((a 2)) (unless (= a 3) 4))`), 'unless')
  is(8, await run(`(let ((a 2)) (cond ((= a 3) 7) ((= a 2) 8) (t 9)))`), 'cond')
  is(9, await run(`(let ((a 1)) (cond ((= a 3) 7) ((= a 2) 8) (9)))`), 'cond')
  is(nil, await run(`(let ((a 1)) (cond ((= a 3) 7) ((= a 2) 8)))`), 'cond')
  is(12, await run(`(car (cond ((evenp 3) (list (* 2 3))) ((list (* 3 4)))))`), 'cond')
  is(222, await run(`(let ((j 1)) (case j ((0 1) 111 222) ((t) 333) (t 444)))`), 'case')
  is(333, await run(`(let ((j t)) (case j ((0 1) 111 222) ((t) 333) (t 444)))`), 'case')
  is(444, await run(`(let ((j 2)) (case j ((0 1) 111 222) ((t) 333) (t 444)))`), 'case')
})

test('eval/funcall/apply', async () => {
  is(10, await run(`(funcall + 1 2 3 4)`), 'funcall')
  is('a', await run(`(funcall car '(a b c d))`), 'funcall')
  is(3, await run(`(let ((x 0)) (funcall (lambda (y) (incf x y)) 3) x)`), 'funcall')
  is(10, await run(`(apply + '(1 2 3 4))`), 'apply')
  is(13, await run(`(apply + 1 2 '(1 2 3 4))`), 'apply')
  is(10, await run(`(eval (list + 1 2 3 4))`), 'eval')
  is(nil, await run(`(eval nil)`), 'eval')
  is(999, await run(`(let ((x 999)) (funcall (lambda (x) x) x))`), 'funcall')
  is(
    4,
    await run(`(let ((x2 (lambda (fun) (lambda (x) (funcall fun (funcall fun x)))))) (funcall (x2 '1+) 2))`),
    'funcall'
  )

  code = `(let ((x2 (lambda (fun) (lambda (x) (fun (fun x)))))) ((x2 '1+) 2))`
  console.log('TODO:', code)
  // console.log(await run(code))
  // is(4, await run(code), 'funcall')

  is(5, await run(`(let* ((my (lambda (x y) (+ x y))) (han '(my))) (apply (first han) '(2 3)))`), 'apply')
})

test('in-place operations', async () => {
  is(5, await run(`(let ((x 0)) (+ (incf x) (incf x 2) (incf x -2)))`), 'incf')
  is(-5, await run(`(let ((x 0)) (+ (decf x) (decf x 2) (decf x -2)))`), 'decf')
  is(12, await run(`(let ((x 0)) (+ (incf x 2) (incf x 2) (incf x 2)))`), 'incf')
  is(
    36,
    await run(`(let ((n 10)) (let* ((f1 (lambda () (incf n) n))) (+ (funcall f1) (funcall f1) (funcall f1))))`),
    'incf'
  )
  is(25, await run(`(let ((a 3) (b 4)) (setf a (* a 3) b (* b 4)) (+ a b))`), 'setf')
  is(9, await run(`(let ((a '(2 3))) (setf (car a) 6) (apply + a))`), 'setf')
  is(12, await run(`(let ((a '(2 3))) (setf (cdr a) '(6)) (apply * a))`), 'setf')
  is(220, await run(`(let ((a '(2 3 4))) (setf (nth 1 a) 11 (nth 2 a) 10) (apply * a))`), 'setf')
})

test('recursion', async () => {
  is(55, await run(`(let ((fib (lambda (n) (if (< n 3) 1 (+ (fib (- n 1)) (fib (- n 2))))))) (fib 10))`), 'lambda')
  is(5040, await run(`(let ((f (lambda (n) (if (= n 0) 1 (* n (f (- n 1))))))) (f 7))`), 'lambda')
  is(10, await run(`(let ((a 0)) (let ((f (lambda (n) (incf a n) (when (> n 0) (f (1- n)))))) (f 4)) a)`), 'lambda')
})

test('streams', async () => {
  is('<string-stream 0>', await run(`(with-output-to-string (s) (princ s s))`), 'stream')

  code = `(with-output-to-string (st) (format st "~a ~a ~a" 12 23 34))`
  console.log(await run(code))
  is('12 23 34', await run(code), 'stream')
})

test('features', async () => {
  is(t, await run(`(not (not (member :floating-point *features*)))`), 'features')
  is(t, await run(`(not (not (member :arrays *features*)))`), 'features')
})

test('printing', async () => {
  is('hello', await run(`(princ-to-string "hello")`), 'princ')
  is('hello "David"', await run(`(princ-to-string "hello \\"David\\"")`), 'princ')
  is('"hello"', await run(`(prin1-to-string "hello")`), 'prin1')
  is('"hello \\"David\\""', await run(`(prin1-to-string "hello \\"David\\"")`), 'prin1')
})

test('prettyprinting', async () => {
  is('hello', await run(`(princ-to-string "hello")`), 'princ')

  code = `(let ((n 0) (st (with-output-to-string (str) (pprint aeq str)))) (dotimes (i (length st) n) (incf n (char-code (char st i)))))`
  console.log(`TODO:`, code)
  // is( 10996, await run(code), 'pprint' )
})

test('documentation', async () => {
  is('(progn apropos apropos-list unwind-protect)', await run(`(apropos-list 'pro)`), 'apropos')
  is('(progn apropos apropos-list unwind-protect)', await run(`(apropos-list "pro")`), 'apropos')
  is(
    7397,
    await run(
      `(let ((n 0)) (let ((st (documentation '?))) (dotimes (i (length st) n) (incf n (char-code (char st i))))))`
    ),
    'documentation'
  )
})

test('format', async () => {
  is('hello', await run(`(format nil "hello")`), 'format')
  is('Hello23Goodbye', await run(`(format nil "Hello~aGoodbye" 23)`), 'format')
  is('   17', await run(`(format nil "~5x" 23)`), 'format')
  is(' 10111', await run(`(format nil "~6b" 23)`), 'format')
  is('   17    23 23   ', await run(`(format nil "~5x ~5d ~5a" 23 23 23)`), 'format')
  is('00017 00023', await run(`(format nil "~5,'0x ~5,'0d" 23 23)`), 'format')
  is('01-45-07', await run(`(format nil "~2,'0d-~2,'0d-~2,'0d" 1 45 7)`), 'format')
  is('Hello42', await run(`(format nil "Hello~a" 42)`), 'format')
  is('[1,2,3]', await run(`(format nil "[~{~a~^,~}]" '(1 2 3))`), 'format')
  is('0003.14159', await run(`(format nil "~10,'0g" 3.14159)`), 'format')

  code = `(format nil "~a ~{ ~a ~} ~a" nil nil nil)`
  is('nil  nil', await run(code), 'format')
})

test('strings', async () => {
  is(t, await run(`(stringp "hello")`), 'stringp')
  is(nil, await run(`(stringp 5)`), 'stringp')
  is(nil, await run(`(stringp '(a b))`), 'stringp')
  is(nil, await run(`(numberp "hello")`), 'numberp')
  is(t, await run(`(atom "hello")`), 'atom')
  is(nil, await run(`(consp "hello")`), 'consp')
  is(nil, await run(`(eq "hello" "hello")`), 'eq')
  is(t, await run(`(let ((a "hello")) (eq a a))`), 'eq')
  is(0, await run(`(length "")`), 'length')
  is(5, await run(`(length "hello")`), 'length')
  is(t, await run(`(string= (concatenate 'string "A" "B") "AB")`), 'concatenate')
  is(3, await run(`(length (concatenate 'string "A" "BC"))`), 'concatenate')
  is(0, await run(`(length (concatenate 'string))`), 'concatenate')
  is('ABCD', await run(`(concatenate 'string "AB" "CD")`), 'concatenate')
  is('ABCDE', await run(`(concatenate 'string "AB" "CDE")`), 'concatenate')
  is('ABCDE', await run(`(concatenate 'string "ABC" "DE")`), 'concatenate')
  is('ABCDEF', await run(`(concatenate 'string "ABC" "DEF")`), 'concatenate')
  is(nil, await run(`(string= "cat" "cat ")`), 'string=')
  is(t, await run(`(string= "cat" "cat")`), 'string=')
  is(3, await run(`(string/= "cat" "catx")`), 'string/=')
  is(nil, await run(`(string/= "cat" "cat")`), 'string/=')
  is(nil, await run(`(string/= "catt" "catt")`), 'string/=')
  is(nil, await run(`(string< "cat" "cat")`), 'string<')
  is(3, await run(`(string<= "cat" "cat")`), 'string<=')
  is(3, await run(`(string< "cat" "cat ")`), 'string<')
  is(4, await run(`(string< "fish" "fish ")`), 'string<')
  is(nil, await run(`(string> "cat" "cat")`), 'string>')
  is(3, await run(`(string>= "cat" "cat")`), 'string>=')
  is(5, await run(`(string>= "cattx" "cattx")`), 'string>=')
  is(0, await run(`(string> "c" "a")`), 'string>')
  is(1, await run(`(string> "fc" "fa")`), 'string>')
  is(2, await run(`(string> "ffc" "ffa")`), 'string>')
  is(3, await run(`(string> "fffc" "fffa")`), 'string>')
  is(4, await run(`(string> "ffffc" "ffffa")`), 'string>')
  is(5, await run(`(string> "fffffc" "fffffa")`), 'string>')
  is(nil, await run(`(string< "fffffc" "fffffa")`), 'string>')
  is('albatross', await run(`(string "albatross")`), 'string')
  is('x', await run(`(string #\\x)`), 'string')
  is('cat', await run(`(string 'cat)`), 'string')
  is('albatross', await run(`(string 'albatross)`), 'string')
})

test('subseq and search', async () => {
  is('hello', await run(`(subseq "hellofromdavid" 0 5)`), 'subseq')
  is('fromdavid', await run(`(subseq "hellofromdavid" 5)`), 'subseq')
  is('(2 3 4)', await run(`(subseq '(0 1 2 3 4) 2)`), 'subseq')
  is('(2)', await run(`(subseq '(0 1 2 3 4) 2 3)`), 'subseq')
  is(nil, await run(`(subseq '() 0)`), 'subseq')
  is(4, await run(`(search "cat" "the cat sat on the mat")`), 'search')
  is(19, await run(`(search "mat" "the cat sat on the mat")`), 'search')
  is(nil, await run(`(search "hat" "the cat sat on the mat")`), 'search')
  is(1, await run(`(search '(1 2) '( 0 1 2 3 4))`), 'search')
  is(nil, await run(`(search '(2 1 2 3 4 5) '(2 1 2 3 4))`), 'search')
})

test('characters', async () => {
  is(97, await run(`(char-code #\\a)`), 'char-code')
  is(13, await run(`(char-code #\\return)`), 'char-code')
  is(255, await run(`(char-code #\\255)`), 'char-code')
  is('#\\Return', await run(`(code-char 13)`), 'code-char')
  is('#\\a', await run(`(code-char 97)`), 'code-char')
  is('#\\255', await run(`(code-char 255)`), 'code-char')
  is(t, await run(`(eq #\\b #\\b)`), 'eq')
  is(nil, await run(`(eq #\\b #\\B)`), 'eq')
  is(nil, await run(`(numberp #\\b)`), 'numberp')
  is(t, await run(`(characterp #\\b)`), 'characterp')
  is('#\\o', await run(`(char "hello" 4)`), 'char')
  is('#\\h', await run(`(char "hello" 0)`), 'char')
  is('A', await run(`(princ-to-string (code-char 65))`), 'char')
  is('[#\\Bell]', await run(`(format nil "[~s]" (code-char 7))`), 'char')
  is('[#\\Return]', await run(`(format nil "[~s]" #\\return)`), 'char')
  is('[#\\127]', await run(`(format nil "[~s]" #\\127)`), 'char')
  is('[#\\255]', await run(`(format nil "[~s]" #\\255)`), 'char')
})

test('read-from-string', async () => {
  is(123, await run(`(read-from-string "123")`), 'read-from-string')
  is(144, await run(`(eval (read-from-string "((lambda (x) (* x x)) 12)"))`), 'read-from-string')
  is(t, await run(`(eval (read-from-string "(eq (+ 2 3) 5)"))`), 'read-from-string')
  is(nil, await run(`(read-from-string "()")`), 'read-from-string')
})

test('Closures', async () => {
  is('lex', await run(`(let ((lex nil)) (funcall (let ((lex t)) (lambda () (if lex 'lex 'dyn)))))`), 'closure')
  is(
    103,
    await run(`(let* ((c 100) (two (lambda (d) (+ c d))) (one (lambda (c) (funcall two 3)))) (funcall one 1))`),
    'closure'
  )
  is(4, await run(`(let ((x 0)) (funcall (lambda (y) (incf x y)) 4) x)`), 'closure')
  is(0, await run(`(let ((x 0)) (funcall (let ((x 7)) (lambda (y) (setq x (+ x y) ))) 4) x)`), 'closure')
  is(
    '(8 10 13 17)',
    await run(
      `(let ((x 0) (clo (lambda () (let ((x 7)) (lambda (y) (incf x y)))))) (mapcar (funcall clo) '(1 2 3 4)))`
    ),
    'closure'
  )
  is(
    3,
    await run(`(let ((y 0) (test (lambda (x) (+ x 1)))) (dotimes (x 3 y) (progn (test (+ x 2))) (incf y x)))`),
    'closure'
  )
})

test('Arrays', async () => {
  is('(0 0)', await run(`(array-dimensions #2a())`), 'array')
  is('(1 0)', await run(`(array-dimensions #2a(()))`), 'array')
  is('(2 0)', await run(`(array-dimensions #2a(() ()))`), 'array')
  is('(0)', await run(`(array-dimensions (make-array '(0)))`), 'array')
  is('(0)', await run(`(array-dimensions (make-array 0))`), 'array')
  is(1, await run(`(let ((a (make-array 3 :initial-element 0))) (incf (aref a (+ 1 1))) (aref a 2))`), 'array')
  is(1, await run(`(let ((a (make-array '(3) :initial-element 0))) (incf (aref a (+ 1 1))) (aref a 2))`), 'array')
  is(1, await run(`(let ((a (make-array '(2 3) :initial-element 0))) (incf (aref a 1 (+ 1 1))) (aref a 1 2))`), 'array')
  is(
    1,
    await run(`(let ((a (make-array '(2 3 2 2) :initial-element 0))) (incf (aref a 1 (+ 1 1) 1 1)) (aref a 1 2 1 1))`),
    'array'
  )
  is(10, await run(`(length (make-array 10 :initial-element 1))`), 'array')
})

test('Bit arrays', async () => {
  is('(0)', await run(`(array-dimensions (make-array '(0) :element-type 'bit))`), 'array')
  is('(1 1)', await run(`(array-dimensions (make-array '(1 1) :element-type 'bit))`), 'array')
  is(10, await run(`(length (make-array '(10) :element-type 'bit))`), 'array')
  is(10, await run(`(length (make-array 10 :element-type 'bit))`), 'array')
  is(1, await run(`(let ((a (make-array 3 :element-type 'bit))) (incf (aref a (+ 1 1))) (aref a 2))`), 'array')
  is(
    1,
    await run(`(let ((a (make-array 3 :initial-element 0 :element-type 'bit))) (incf (aref a (+ 1 1))) (aref a 2))`),
    'array'
  )
  is(
    0,
    await run(`(let ((a (make-array 10 :element-type 'bit :initial-element 1))) (decf (aref a 4)) (aref a 4))`),
    'array'
  )
  is(
    1,
    await run(`(let ((a (make-array 40 :element-type 'bit :initial-element 0))) (incf (aref a 39)) (aref a 39))`),
    'array'
  )
  is(
    0,
    await run(
      `(let ((a (make-array 40 :element-type 'bit :initial-element 0))) (incf (aref a 39)) (decf (aref a 39)) (aref a 39))`
    ),
    'array'
  )
})

test('Repl', async () => {
  is(23, await run(`(read-from-string "23(2)")`), 'repl')
  is(nil, await run(`(read-from-string "()23")`), 'repl')
  is(23, await run(`(read-from-string "23\\"Hi\\"")`), 'repl')
  is('Hi', await run(`(read-from-string "\\"Hi\\"23")`), 'repl')
// TODO:   is('#\\1', await run(`(read-from-string " #\\1\\"Hi\\"")`), 'repl')
  is('Hi', await run(`(read-from-string (format nil "\\"Hi\\"~a~a"  #\\# "*0101"))`), 'repl')
})

test('Equal', async () => {
  is(t, await run(`(equal '(1 2 3) '(1 2 3))`), 'equal')
  is(t, await run(`(equal '(1 2 (4) 3) '(1 2 (4) 3))`), 'equal')
  is(nil, await run(`(equal '(1 2 (4) 3) '(1 2 (4 nil) 3))`), 'equal')
  is(t, await run(`(equal "cat" "cat")`), 'equal')
  is(nil, await run(`(equal "cat" "Cat")`), 'equal')
  is(t, await run(`(equal 'cat 'Cat)`), 'equal')
  is(t, await run(`(equal 2 (+ 1 1))`), 'equal')
  is(t, await run(`(equal '("cat" "dog") '("cat" "dog"))`), 'equal')
  is(nil, await run(`(equal '("cat" "dog") '("cat" "dig"))`), 'equal')
  is(nil, await run(`(equal '("cat" "dog") '("cat" "Dog"))`), 'equal')
})

test('Keywords', async () => {
  is(t, await run(`(keywordp :led-builtin)`) !== nil, 'keywordp')
  is(nil, await run(`(keywordp print)`), 'keywordp')
  is(nil, await run(`(keywordp nil)`), 'keywordp')
  is(nil, await run(`(keywordp 12)`), 'keywordp')
  is(t, await run(`(keywordp :fred)`) !== nil, 'keywordp')
  is(t, await run(`(keywordp :initial-element)`) !== nil, 'keywordp')
  is(t, await run(`(keywordp :element-type)`) !== nil, 'keywordp')
})

test('Errors', async () => {
  is(7, await run(`(let ((x 7)) (ignore-errors (setq x (/ 1 0))) x)`), 'error')
  is(5, await run(`(unwind-protect (+ 2 3) 13)`), 'error')
})

test('Printing floats', async () => {
  is(t, await run(`(string= (princ-to-string 101.0) "101.0")`), 'print')
  is(t, await run(`(string= (princ-to-string 1010.0) "1010.0")`), 'print')
  is(t, await run(`(string= (princ-to-string 10100.0) "10100.0")`), 'print')
  is(t, await run(`(string= (princ-to-string 101000.0) "1.01e5")`), 'print')
  is(t, await run(`(string= (princ-to-string 1010000.0) "1.01e6")`), 'print')
  is(t, await run(`(string= (princ-to-string 1.01E7) "1.01e7")`), 'print')
  is(t, await run(`(string= (princ-to-string 1.01E8) "1.01e8")`), 'print')
  is(t, await run(`(string= (princ-to-string 7.0) "7.0")`), 'print')
  is(t, await run(`(string= (princ-to-string 70.0) "70.0")`), 'print')
  is(t, await run(`(string= (princ-to-string 700.0) "700.0")`), 'print')
  is(t, await run(`(string= (princ-to-string 7000.0) "7000.0")`), 'print')
  is(t, await run(`(string= (princ-to-string 70000.0) "70000.0")`), 'print')
  is(t, await run(`(string= (princ-to-string 700000.0) "7.0e5")`), 'print')
  is(t, await run(`(string= (princ-to-string 0.7) "0.7")`), 'print')
  is(t, await run(`(string= (princ-to-string 0.07) "0.07")`), 'print')
  is(t, await run(`(string= (princ-to-string 0.007) "0.007")`), 'print')
  is(t, await run(`(string= (princ-to-string 7.0E-4) "7.0e-4")`), 'print')
  is(t, await run(`(string= (princ-to-string 7.0E-5) "7.0e-5")`), 'print')
  is(t, await run(`(string= (princ-to-string 7.0E-6) "7.0e-6")`), 'print')
  is(t, await run(`(string= (princ-to-string 0.9) "0.9")`), 'print')
  is(t, await run(`(string= (princ-to-string 0.99) "0.99")`), 'print')
  is(t, await run(`(string= (princ-to-string 0.999) "0.999")`), 'print')
  is(t, await run(`(string= (princ-to-string 0.9999) "0.9999")`), 'print')
  is(t, await run(`(string= (princ-to-string 0.99999) "0.99999")`), 'print')
  is(t, await run(`(string= (princ-to-string 0.999999) "0.999999")`), 'print')
  is(t, await run(`(string= (princ-to-string 0.9999999) "1.0")`), 'print')
  is(t, await run(`(string= (princ-to-string 1.0) "1.0")`), 'print')
  is(t, await run(`(string= (princ-to-string 10.0) "10.0")`), 'print')
  is(t, await run(`(string= (princ-to-string 100.0) "100.0")`), 'print')
  is(t, await run(`(string= (princ-to-string 1000.0) "1000.0")`), 'print')
  is(t, await run(`(string= (princ-to-string 10000.0) "10000.0")`), 'print')
  is(t, await run(`(string= (princ-to-string 100000.0) "1.0e5")`), 'print')
  is(t, await run(`(string= (princ-to-string 9.0) "9.0")`), 'print')
  is(t, await run(`(string= (princ-to-string 90.0) "90.0")`), 'print')
  is(t, await run(`(string= (princ-to-string 900.0) "900.0")`), 'print')
  is(t, await run(`(string= (princ-to-string 9000.0) "9000.0")`), 'print')
  is(t, await run(`(string= (princ-to-string 90000.0) "90000.0")`), 'print')
  is(t, await run(`(string= (princ-to-string 900000.0) "9.0e5")`), 'print')
  is(t, await run(`(string= (princ-to-string -9.0) "-9.0")`), 'print')
  is(t, await run(`(string= (princ-to-string -90.0) "-90.0")`), 'print')
  is(t, await run(`(string= (princ-to-string -900.0) "-900.0")`), 'print')
  is(t, await run(`(string= (princ-to-string -9000.0) "-9000.0")`), 'print')
  is(t, await run(`(string= (princ-to-string -90000.0) "-90000.0")`), 'print')
  is(t, await run(`(string= (princ-to-string -900000.0) "-9.0e5")`), 'print')
  is(t, await run(`(string= (princ-to-string 1.0) "1.0")`), 'print')
  is(t, await run(`(string= (princ-to-string 1.01) "1.01")`), 'print')
  is(t, await run(`(string= (princ-to-string 1.001) "1.001")`), 'print')
  is(t, await run(`(string= (princ-to-string 1.0001) "1.0001")`), 'print')
  is(t, await run(`(string= (princ-to-string 1.00001) "1.00001")`), 'print')
  is(t, await run(`(string= (princ-to-string 1.000001) "1.0")`), 'print')
  is(t, await run(`(string= (princ-to-string 0.0012345678) "0.00123457")`), 'print')
  is(t, await run(`(string= (princ-to-string 1.2345678E-4) "1.23457e-4")`), 'print')
  is(t, await run(`(string= (princ-to-string 1234567.9) "1.23457e6")`), 'print')
  is(t, await run(`(string= (princ-to-string 1.2345679E7) "1.23457e7")`), 'print')
  is(t, await run(`(string= (princ-to-string 1.2E-9) "1.2e-9")`), 'print')
  is(t, await run(`(string= (princ-to-string 9.9E-8) "9.9e-8")`), 'print')
  is(t, await run(`(string= (princ-to-string 9.9999E-5) "9.9999e-5")`), 'print')
  is(t, await run(`(string= (princ-to-string 9.01) "9.01")`), 'print')
  is(t, await run(`(string= (princ-to-string 0.9999999) "1.0")`), 'print')
  is(t, await run(`(string= (princ-to-string 0.8999999) "0.9")`), 'print')
  is(t, await run(`(string= (princ-to-string 0.01) "0.01")`), 'print')
  is(t, await run(`(string= (princ-to-string 1.2345679) "1.23457")`), 'print')
  is(t, await run(`(string= (princ-to-string 12.345679) "12.3457")`), 'print')
  is(t, await run(`(string= (princ-to-string 123.45679) "123.457")`), 'print')
  is(t, await run(`(string= (princ-to-string 1234.5679) "1234.57")`), 'print')
  is(t, await run(`(string= (princ-to-string 12345.679) "12345.7")`), 'print')
  is(t, await run(`(string= (princ-to-string 123456.79) "1.23457e5")`), 'print')
  is(t, await run(`(string= (princ-to-string 1234567.9) "1.23457e6")`), 'print')
  is(t, await run(`(string= (princ-to-string 0.12345679) "0.123457")`), 'print')
  is(t, await run(`(string= (princ-to-string 0.012345679) "0.0123457")`), 'print')
  is(t, await run(`(string= (princ-to-string 0.0012345678) "0.00123457")`), 'print')
  is(t, await run(`(string= (princ-to-string 1.2345679E-4) "1.23457e-4")`), 'print')
})

test('Arithmetic', async () => {
  is(t, await run(`(= (- 4 2 1 1) 0)`), '=')
  is(9, await run(`(* -3 -3)`), '*')
  is(32580, await run(`(* 180 181)`), '*')
  is(1, await run(`(*)`), '*')
  is(t, await run(`(string= "-4.29497e9" (princ-to-string (* 2 -2147483648)))`), '*')
  is(-2147483648, await run(`(* 2 -1073741824)`), '*')
  is(32767, await run(`(+ 32765 1 1)`), '+')
  is(0, await run(`(+)`), '+')
  is(-2, await run(`(+ -1 -1)`), '+')
  is(-4, await run(`(- 4)`), '-')
  is(2, await run(`(/ 60 10 3)`), '/')
  is(2.5, await run(`(1+ 1.5)`), '1+')
  is(2147483647, await run(`(1+ 2147483646)`), '1+')
  is(t, await run(`(string= "2.14748e9" (princ-to-string (1+ 2147483647)))`), '1+')
  is(0.5, await run(`(1- 1.5)`), '1-')
  is(-2147483648, await run(`(1- -2147483647)`), '1-')
  is(t, await run(`(string= "-2.14748e9" (princ-to-string (1- -2147483648)))`), '1-')
})

test('Arithmetic', async () => {
  is(1.75, await run(`(/ 3.5 2)`), '/')
  is(1.75, await run(`(/ 3.5 2.0)`), '/')
  is(0.0625, await run(`(/ 1 16)`), '/')
  is(0.0625, await run(`(/ 1.0 16)`), '/')
  is(0.0625, await run(`(/ 1 16.0)`), '/')
  is(2, await run(`(/ 12 2 3)`), '/')
  is(2.0, await run(`(/ 12.0 2 3)`), '/')
  is(2.0, await run(`(/ 12 2.0 3)`), '/')
  is(2.0, await run(`(/ 12 2 3.0)`), '/')
  is(1, await run(`(/ 1)`), '/')
  console.log(`TODO: Integer overflow (evaluating 'original(...args)')`)
  // is(t, await run(`(string= "2.14748e9" (princ-to-string (/ -2147483648 -1)))`), '/')
  is(2147483647, await run(`(/ -2147483647 -1)`), '/')
  is(0.5, await run(`(/ 2)`), '/')
  is(1.0, await run(`(* 0.0625 16)`), '*')
  is(1.0, await run(`(* 0.0625 16.0)`), '*')
})

test('Place', async () => {
  is(5.4, await run(`(let ((x 0)) (+ (incf x) (incf x 0.2) (incf x 2)))`), 'incf')
  is(-5.4, await run(`(let ((x 0)) (+ (decf x) (decf x 0.2) (decf x 2)))`), 'decf')
  is(
    30.6,
    await run(`(let ((n 10)) (let* ((f1 (lambda () (incf n 0.1) n))) (+ (funcall f1) (funcall f1) (funcall f1))))`),
    'incf'
  )
  is('hellx', await run(`(let ((s "hello")) (setf (char s 4) #\\x) s)`), 'setf')
})

test('Comparisons', async () => {
  is(t, await run(`(< 1 2 3 4)`), '<')
  is(nil, await run(`(< 1 2 3 2)`), '<')
  is(t, await run(`(< 1.0 2 3 4)`), '<')
  is(nil, await run(`(< 1 2 3 2)`), '<')
  is(t, await run(`(< 1.0 1.001 3 4)`), '<')
  is(nil, await run(`(< 1.001 1.0 3 4)`), '<')
  is(t, await run(`(< 1.001 1.002 1.003 1.004)`), '<')
  is(t, await run(`(< 1. 2. 3. 4.)`), '<')
  is(nil, await run(`(< 1. 2. 2. 4.)`), '<')
  is(t, await run(`(<= 1. 2. 2. 4.)`), '<')
  is(nil, await run(`(<= 1. 3. 2. 4.)`), '<')
  is(t, await run(`(> 4. 3. 2. 1.)`), '<')
  is(nil, await run(`(> 4. 2. 2. 1.)`), '<')
  is(t, await run(`(>= 4. 2. 2. 1.)`), '<')
  is(nil, await run(`(>= 4. 2. 3. 1.)`), '<')
  is(t, await run(`(= 1. 1. 1. 1.)`), '/=')
  is(nil, await run(`(= 1. 1. 2. 1.)`), '/=')
  is(nil, await run(`(/= 1. 2. 3. 1.)`), '/=')
  is(t, await run(`(/= 1. 2. 3. 4.)`), '/=')
})

test('Transcendental', async () => {
  is(0.841471, await run(`(sin 1)`), 'sin')
  is(0.0, await run(`(sin 0)`), 'sin')
  is(0.841471, await run(`(sin 1.0)`), 'sin')
  is(0.0, await run(`(sin 0.0)`), 'sin')
  is(0.540302, await run(`(cos 1)`), 'cos')
  is(0.540302, await run(`(cos 1.0)`), 'cos')
  is(1.55741, await run(`(tan 1)`), 'tan')
  is(1.55741, await run(`(tan 1.0)`), 'tan')
  is(1.5708, await run(`(asin 1)`), 'asin')
  is(1.5708, await run(`(asin 1)`), 'asin')
  is(0.0, await run(`(asin 0)`), 'asin')
  is(0.0, await run(`(asin 0.0)`), 'asin')
  is(0.0, await run(`(acos 1)`), 'acos')
  is(0.0, await run(`(acos 1.0)`), 'acos')
  is(1.0472, await run(`(acos 0.5)`), 'acos')
  is(0.463648, await run(`(atan 0.5)`), 'atan')
  is(0.110657, await run(`(atan 1 9)`), 'atan')
  is(0.0499584, await run(`(atan 1 20)`), 'atan')
  is(0.785398, await run(`(atan 1 1)`), 'atan')
  is(0.785398, await run(`(atan .5 .5)`), 'atan')
  is(1.1752, await run(`(sinh 1)`), 'sinh')
  is(1.1752, await run(`(sinh 1.0)`), 'sinh')
  is(0.0, await run(`(sinh 0)`), 'sinh')
  is(0.0, await run(`(sin 0.0)`), 'sinh')
  is(1.54308, await run(`(cosh 1)`), 'cosh')
  is(1.54308, await run(`(cosh 1.0)`), 'cosh')
  is(0.761594, await run(`(tanh 1)`), 'tanh')
  is(0.761594, await run(`(tanh 1.0)`), 'tanh')
})

test('Rounding', async () => {
  is(3, await run(`(truncate 10 3)`), 'truncate')
  is(3, await run(`(truncate 3.3333333)`), 'truncate')
  is(4, await run(`(ceiling 10 3)`), 'ceiling')
  is(4, await run(`(ceiling 3.3333333)`), 'ceiling')
  is(3, await run(`(round 10 3)`), 'round')
  is(3, await run(`(round 3.3333333)`), 'round')
  is(3, await run(`(floor 10 3)`), 'floor')
  is(3, await run(`(floor 3.3333333)`), 'floor')
  is(-3, await run(`(truncate -10 3)`), 'truncate')
  is(-3, await run(`(truncate -3.3333333)`), 'truncate')
  is(-3, await run(`(ceiling -10 3)`), 'ceiling')
  is(-3, await run(`(ceiling -3.3333333)`), 'ceiling')
  is(-3, await run(`(round -10 3)`), 'round')
  is(-3, await run(`(round -3.3333333)`), 'round')
  is(-4, await run(`(floor -10 3)`), 'floor')
  is(-4, await run(`(floor -3.3333333)`), 'floor')
  is(10.0, await run(`(abs 10.0)`), 'abs')
  is(10.0, await run(`(abs -10.0)`), 'abs')
  is(t, await run(`(string= "2.14748e9" (princ-to-string (abs -2147483648)))`), 'abs')
  is(2147483647, await run(`(abs -2147483647)`), 'abs')
  is(1.0, await run(`(mod 13.0 4)`), 'mod')
  is(3.0, await run(`(mod -13.0 4)`), 'mod')
  is(-3.0, await run(`(mod 13.0 -4)`), 'mod')
  is(-1.0, await run(`(mod -13.0 -4)`), 'mod')
  is(-3.0, await run(`(mod 13.0 -4)`), 'mod')
  is(1.0, await run(`(mod -12.5 1.5)`), 'mod')
  is(0.5, await run(`(mod 12.5 1.5)`), 'mod')
})

test('Log and exp', async () => {
  is(2.71828, await run(`(exp 1)`), 'exp')
  is(2.71828, await run(`(exp 1.0)`), 'exp')
  is(0.367879, await run(`(exp -1)`), 'exp')
  is(0.367879, await run(`(exp -1.0)`), 'exp')
  is(0.367879, await run(`(exp -1.0)`), 'exp')
  is(0.0, await run(`(log 1.0)`), 'log')
  is(4.0, await run(`(log 16 2)`), 'log')
  is(4.0, await run(`(log 16.0 2)`), 'log')
  is(4.0, await run(`(log 16 2.0)`), 'log')
  is(4.0, await run(`(log 16.0 2.0)`), 'log')
  is(1.0, await run(`(log 2 2)`), 'log')
  is(1.0, await run(`(log 2.5 2.5)`), 'log')
  is(2.30259, await run(`(log 10)`), 'log')
  is(2.30259, await run(`(log 10)`), 'log')
  is(1024, await run(`(expt 2 10)`), 'expt')
  is(1024.0, await run(`(expt 2.0 10.0)`), 'expt')
  is(1073741824, await run(`(expt 2 30)`), 'expt')
  is(t, await run(`(string= "2.14748e9" (princ-to-string (expt 2 31)))`), 'expt')
  is(t, await run(`(string= "4.29497e9" (princ-to-string (expt 2 32)))`), 'expt')
  is(1024, await run(`(expt -2 10)`), 'expt')
  is(-2048, await run(`(expt -2 11)`), 'expt')
})

test('Tests', async () => {
  is(nil, await run(`(floatp 1)`), 'floatp')
  is(nil, await run(`(floatp nil)`), 'floatp')
  is(t, await run(`(floatp 2.3)`), 'floatp')
  is(t, await run(`(integerp 1)`), 'integerp')
  is(nil, await run(`(integerp nil)`), 'integerp')
  is(nil, await run(`(integerp 2.3)`), 'integerp')
})

test('error checks', async () => {
  is(nothing, await run(`(ignore-errors (dolist 12 (print x)))`), 'dolist')
  is(nothing, await run(`(ignore-errors (dolist () (print x)))`), 'dolist')
  is(nothing, await run(`(ignore-errors (dolist (x) (print x)))`), 'dolist')
  is(nothing, await run(`(ignore-errors (dolist (x nil x x) (print x)))`), 'dolist')
  is(nothing, await run(`(ignore-errors (dotimes 12 (print x)))`), 'dotimes')
  is(nothing, await run(`(ignore-errors (dotimes () (print x)))`), 'dotimes')
  is(nothing, await run(`(ignore-errors (dotimes (x) (print x)))`), 'dotimes')
  is(nothing, await run(`(ignore-errors (dotimes (x 1 x x) (print x)))`), 'dotimes')
  is(nothing, await run(`(ignore-errors (for-millis 12 (print 12)))`), 'for-millis')
  is(nothing, await run(`(ignore-errors (for-millis (12 12) (print 12)))`), 'for-millis')
  is(nothing, await run(`(ignore-errors (let ((a #*00000000)) (push 1 (aref a 1)) a))`), 'push')
  is(nothing, await run(`(ignore-errors (let ((s "hello")) (setf (char s 5) #\\x) s))`), 'setf')
  is(nothing, await run(`(ignore-errors (let ((s "hello")) (setf (char s 20) #\\x) s))`), 'setf')
})

runTests()
