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

test('interface', async () => {
  ok(true, 'ok')
})

// Standalone `bun tests/interface.ts` or part of suite
runTests()
