import { useEffect, useRef, useState } from 'react'
import * as editor from '@/editor'
import { createLisp } from '../../web.ts'

export default function Page() {
  const [consoleOut, setConsoleOut] = useState('')
  const editorRef = useRef(null)
  const evalRef = useRef(null)

  useEffect(() => {
    const $editor = editorRef.current
    if (!$editor) return

    const code = `(defun fib (n)
  (if (< n 3) 1
    (+ (fib (- n 1)) (fib (- n 2)))))

(fib 5)`

    let lisp

    async function evaluate() {
      if (!lisp) return
      const code = editorView.state.doc.toString()
      const result = await lisp.eval(code)
      setConsoleOut(result)
    }

    evalRef.current = evaluate

    const editorView = editor.init($editor, code, {
      eval: evaluate
    })

    ;(async () => {
      lisp = await createLisp()
      evaluate() // Run example code
    })().catch(console.error)

    return () => {
      // Clean up
      editorView.destroy()
    }
  }, [])

  return (
    <div className="p-4 h-screen">
      <section className="">
        <h4 className='font-weight-bold'>Editor</h4>
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
