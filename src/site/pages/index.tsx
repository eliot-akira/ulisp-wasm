import { useEffect, useRef, useState } from 'react'
import * as editor from '@/editor'
import { createLisp } from '../../web.ts'

let lisp

export default function Page() {
  const [consoleOut, setConsoleOut] = useState('')
  const editorRef = useRef(null)
  const evalRef = useRef(null)

  useEffect(() => {
    const $editor = editorRef.current
    if (!$editor) return

    const code =
`(defun fib (n)
  (if (< n 3) 1
    (+ (fib (- n 1)) (fib (- n 2)))))

(fib 5)`

// Infinite loop
// `(defun b ()
//   (pinmode 13 t)
//   (loop
//    (digitalwrite 13 t)
//    (delay 1000)
//    (digitalwrite 13 nil) 
//    (delay 1000)))
// (b)`

    async function evaluate() {
      if (!lisp) return
      const code = editorView.state.doc.toString()
      try {
        const result = await lisp.eval(code)
        setConsoleOut(result)
      } catch (e) {
        console.log('eval error', e)
      }
    }

    evalRef.current = evaluate

    const editorView = editor.init($editor, code, {
      eval: evaluate
    })

    ;(async () => {
      if (!lisp) {
        // Workaround for React rendering twice in dev mode
        lisp = createLisp()
        lisp = await lisp

        console.log('uLisp', lisp.version())
        evaluate() // Run example code
      }
    })().catch(console.error)

    return () => {
      // Clean up
      editorView.destroy()
    }
  }, [])

  return (
    <div className="p-4 h-screen">
      <section className="">
        <h4 className="font-weight-bold">Editor</h4>
        <div ref={editorRef}></div>
      </section>
      <div>
        <button className="" onClick={() => evalRef.current && evalRef.current()}>
          Run (CTRL or CMD + Enter)
        </button>
      </div>
      <section>
        <h4 className="my-2">Console</h4>
        <pre className="font-mono">
          <code>{consoleOut}</code>
        </pre>
      </section>
    </div>
  )
}
