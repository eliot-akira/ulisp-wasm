import { create } from './node.ts'

const ulisp = await create()

console.log(await ulisp.run(`(+ 1 2)`))
