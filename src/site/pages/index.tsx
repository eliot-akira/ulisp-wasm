import { useEffect, useRef, useState } from 'react'
import * as editor from '@/editor'
import * as base64Url from 'base64-compressor'
import { createLisp } from '../lib/create-lisp'
import { EditorView } from '@codemirror/view'

let lisp

export default function Page() {
  const [consoleOut, setConsoleOut] = useState(' ')
  const [currentStep, setStep] = useState(0)

  const shareLinkTextDefault = 'Create share link'
  const [shareLinkText, setShareLinkText] = useState(shareLinkTextDefault)

  const editorRef = useRef(null)
  const evalRef = useRef(null)

  const editorViewRef = useRef<EditorView>(null)

  useEffect(() => {
    const $editor = editorRef.current
    if (!$editor) return

    async function evaluate() {
      if (!lisp) return
      const code = editorViewRef.current.state.doc.toString()
      try {
        // setConsoleOut('..Evaluating')
        const result = await lisp.eval(code)
        setConsoleOut(
          result == null
            ? ' ' // Prevent console output from collapsing - TODO: Do it with CSS
            : result
        )
      } catch (e) {
        console.log('eval error', e)
      }
    }

    evalRef.current = evaluate
    ;(async () => {
      if (!lisp) {
        lisp = createLisp({
          step(n: number) {
            setStep(n)
          }
        })
        lisp.stop = async () => {
          await lisp
          lisp.stop()
        }
        // Workaround for React rendering twice in dev mode
        lisp = await lisp

        console.log('uLisp', lisp) // .version()

        const hash = window.location.hash.slice(1)
        let codeFromHash = ''
        if (hash) {
          // console.log('Decode from hash', hash)

          try {
            codeFromHash = await base64Url.decode(hash)
          } catch (e) {
            // ok
          }
        }

        // Don't run shared code automatically
        // const shouldRunAutomatically = !Boolean(codeFromHash)

        const code =
          Boolean(codeFromHash)
            ? codeFromHash
            : `(defun fib (n)
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

        editorViewRef.current = editor.init($editor, code, {
          eval: evaluate
        })

        editorViewRef.current.focus()

        // if (shouldRunAutomatically)
        evaluate() // Run example code
      }
    })().catch(console.error)

    return () => {
      // Clean up
      editorViewRef.current && editorViewRef.current.destroy()

      // if (lisp) {
      //   lisp.stop()
      // }
      // lisp = null
    }
  }, [editorRef, evalRef, editorViewRef])

  return (
    <div className="lg:flex h-screen w-screen">
      <div className="ui-panel lg:w-1/2 lg:pr-2 p-4">
        <div className="h-10">
          <h1 className="font-semibold">uLisp-Wasm Playground</h1>
        </div>

        <section className="my-4 border border-slate-300">
          <h4 className="py-2 px-4 bg-slate-100 border-b border-slate-300">Editor</h4>
          <div className="my-1 mx-1" ref={editorRef}></div>
        </section>

        <div className="text-sm text-slate-700">Shortcut to run: CTRL or CMD + Enter</div>
      </div>

      <div className="ui-panel lg:w-1/2 lg:pl-2 p-4">
        <div className="ui-toolbar h-10 text-right">
          <button
            className="mx-2 py-1 px-2
            bg-blue-100 shadow-sm active:shadow-none
            rounded cursor-pointer"
            onClick={() => evalRef.current && evalRef.current()}
          >
            Run
          </button>

          <button
            className="mx-2 py-1 px-2
            bg-red-100 shadow-sm active:shadow-none
            rounded cursor-pointer"
            onClick={() => {
              setConsoleOut(' ')
              setStep(0)
              lisp && lisp.stop()
            }}
          >
            Stop
          </button>

          <button
            className="mx-2 py-1 px-2
            bg-emerald-100 shadow-sm active:shadow-none
            rounded cursor-pointer"
            onClick={async () => {
              if (!editorViewRef.current) return

              const code = editorViewRef.current.state.doc.toString()
              const hash = await base64Url.encode(code)

              // console.log('URL', hash)

              window.location.hash = hash

              if (navigator.clipboard) {
                navigator.clipboard.writeText(window.location.href)
                setShareLinkText(`Copied to clipboard!`)
              } else {
                setShareLinkText(`Copy URL from address bar`)
              }
              setTimeout(() => {
                if (editorViewRef.current) {
                  // Still mounted
                  setShareLinkText(shareLinkTextDefault)
                }
              }, 3000)
            }}
          >
            {
              // `Create share link`
              shareLinkText
            }
          </button>
        </div>

        <section className="my-4 border border-slate-300">
          <div className="py-2 px-4 bg-slate-100 border-b border-slate-300 flex flex-row items-center">
            <h4 className="flex-grow">Console</h4>
            <div className="text-xs text-slate-800">Step {currentStep}</div>
          </div>

          <pre className="font-mono py-2 px-4">
            <code className='text-wrap'>{consoleOut}</code>
          </pre>
        </section>
      </div>
    </div>
  )
}
