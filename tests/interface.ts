import { test, is, ok, run as runTests } from 'testra'
import { createLisp } from '../node/index.js'

let lisp, run, code

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

test('newlines', async () => {

  // These test cases also check that no unnecessary newline at the start of output.

  // TODO: After dynamic switching of output mode is supported, test the
  // different handling of `\r` and `\n`

  for (let i = 0; i < 5; i++) {
    code = `(format t "test123~%")`
    is('test123\nnil', await run(code), `${i + 1}. ${code}`)
  }

  // print outputs the value `1`, a space following it (` `), and a newline (`\n`);
  // then returns the value.
  code = `(print 1)`
  is('1 \n1', await run(code), code)
  code = `(print "1")`
  is('"1" \n"1"', await run(code), code)

  code = `(print nothing)`
  is('', await run(code), code)

  // pprint outputs the value `1` and a newline (`\n`), then returns nothing
  code = `(pprint 1)`
  is(1, await run(code), code)
  code = `(pprint "1")`
  is('1', await run(code), code)

  code = `(pprint "hello")`
  is('hello', await run(code), code)

  code = `(prin1-to-string "hello")`
  is('"hello"', await run(`(prin1-to-string "hello")`), code)

  // The variable `nothing` is pretty printed as its name
  code = `(pprint nothing)`
  is('nothing', await run(code), code)
})

runTests()
