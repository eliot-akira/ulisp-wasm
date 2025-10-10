import { useEffect, useRef, useState } from 'react'
import * as editor from '../../editor'
import * as base64Url from 'base64-compressor'
import { createLisp } from '../lib/create-lisp'
import { EditorView } from '@codemirror/view'

let lisp

const exampleCode = `(defun fib (n)
  (if (< n 3) 1
    (+ (fib (- n 1)) (fib (- n 2)))))

(fib 5)`

// Blink in infinite loop
// `(defun b ()
//   (pinmode 13 t)
//   (loop
//    (digitalwrite 13 t)
//    (delay 1000)
//    (digitalwrite 13 nil)
//    (delay 1000)))
// (b)`

// Modes supported by Parinfer, and 'off' for internal use
type ExtendedParenModes = 'smart' | 'paren' | 'indent' | 'off'

export default function Page() {
  const [consoleOut, setConsoleOut] = useState('')
  const [currentStep, setStep] = useState(0)
  const [parinferMode, setParinferMode] = useState<ExtendedParenModes>('off')
  const [inputPrompt, setInputPrompt] = useState(false)
  const [inputValue, setInputValue] = useState('')

  const shareLinkTextDefault = 'Create share link'
  const [shareLinkText, setShareLinkText] = useState(shareLinkTextDefault)

  const editorRef = useRef(null)
  const evalRef = useRef<Function>(null)
  const editorViewRef = useRef<EditorView>(null)
  const inputResolverRef = useRef<Function>(null)

  const consoleOutRef = useRef('')
  consoleOutRef.current = consoleOut

  useEffect(() => {
    const $editor = editorRef.current
    if (!$editor) return

    async function evaluate() {
      if (!lisp) return
      const code = editorViewRef.current.state.doc.toString()
      try {
        // setConsoleOut('..Evaluating')
        consoleOutRef.current = ''
        setConsoleOut(consoleOutRef.current)

        const result = await lisp.eval(code)

        // Already handled by print() below
        // setConsoleOut(
        //   result == null
        //     ? ' ' // Prevent console output from collapsing - TODO: Do it with CSS
        //     : result
        // )
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
          },
          print(arg) {
            consoleOutRef.current += arg + '\n'
            setConsoleOut(consoleOutRef.current)
          },
          printError(arg) {
            // TODO: Style error differently
            consoleOutRef.current += arg + '\n'
            setConsoleOut(consoleOutRef.current)
          },
          readLine() {
            return new Promise((resolve) => {
              setInputPrompt(true)
              setInputValue('')
              inputResolverRef.current = resolve
            })
          },
          async readByte(streamType: number): Promise<number> {
            // TODO: Buffer input in console, and release each byte when called

            return -1 // No ipnut
          },
          async writeByte(streamType: number, byte: number): Promise<void> {
            console.log('writeByte', streamType, byte)
            if (byte < 0 || byte > 255) {
              console.warn('Invalid byte range')
              return
            }
            const prev = consoleOutRef.current
            consoleOutRef.current = prev + String.fromCharCode(byte)
            setConsoleOut(consoleOutRef.current)
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
        let dataFromHash: {
          code?: string
        } = {}
        if (hash) {
          // console.log('Decode from hash', hash)

          try {
            dataFromHash = await base64Url.decode(hash)
            if (typeof dataFromHash !== 'object') {
              dataFromHash = {}
            }
          } catch (e) {
            // ok
          }
        }

        const { code = exampleCode } = dataFromHash

        // Don't run shared code automatically
        // const shouldRunAutomatically = !Boolean(dataFromHash.code)

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
    <div className="md:flex h-screen w-screen">
      <div className="ui-panel md:w-1/2 md:pr-2 p-4">
        <div className="h-10">
          <h1 className="font-semibold">uLisp-Wasm Playground</h1>
        </div>

        <section className="my-4 border border-slate-300">
          <div className="py-2 px-4 bg-slate-100 border-b border-slate-300 flex flex-row items-center">
            <h4 className="flex-grow">Editor</h4>
            <div className="text-xs text-slate-800 flex items-center gap-2">
              <label htmlFor="parinfer-mode">Edit mode</label>
              <select
                id="parinfer-mode"
                value={parinferMode}
                onChange={(e) => {
                  const newMode = e.target.value as ExtendedParenModes
                  setParinferMode(newMode)
                  if (editorViewRef.current) {
                    if (newMode === 'off') {
                      editor.setParinferEnabled(editorViewRef.current, false)
                    } else {
                      editor.setParinferEnabled(editorViewRef.current, true)
                      editor.switchParinferMode(editorViewRef.current, newMode)
                    }
                  }
                }}
                className="border border-slate-300 rounded px-1 py-0.5 text-xs"
              >
                <option value="smart">Smart</option>
                <option value="paren">Paren</option>
                <option value="indent">Indent</option>
                <option value="off">Off</option>
              </select>
            </div>
          </div>
          <div className="my-1 mx-1" ref={editorRef}></div>
        </section>

        <div className="text-sm text-slate-700">Shortcut to run: CTRL or CMD + Enter</div>
      </div>

      <div className="ui-panel md:w-1/2 md:pl-2 p-4">
        <div className="ui-toolbar h-10 text-right">
          <button
            className="mx-2 py-1 px-2
            bg-blue-100 shadow-sm active:shadow-none
            rounded cursor-pointer"
            onClick={() => {
              evalRef.current && evalRef.current()
            }}
          >
            Run
          </button>

          <button
            className="mx-2 py-1 px-2
            bg-red-100 shadow-sm active:shadow-none
            rounded cursor-pointer"
            onClick={() => {
              // setConsoleOut(' ')
              // setStep(0)
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
              const hash = await base64Url.encode({
                code
                // TODO: title?
              })

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
            <code className="text-wrap block min-h-38">{
              consoleOut
            }</code>
          </pre>

          {inputPrompt && (
            <div className="border-t border-slate-300 p-2 bg-yellow-50">
              <form
                onSubmit={(e) => {
                  e.preventDefault()
                  if (inputResolverRef.current) {
                    inputResolverRef.current(inputValue + '\n')
                    inputResolverRef.current = null

                    // Echo input value to console
                    consoleOutRef.current += inputValue + '\n'
                    setConsoleOut(consoleOutRef.current)
                  }
                  setInputPrompt(false)
                  setInputValue('')
                }}
              >
                <div className="flex gap-2">
                  <input
                    type="text"
                    autoFocus
                    value={inputValue}
                    onChange={(e) => setInputValue(e.target.value)}
                    className="flex-grow px-2 py-1 border border-slate-300 rounded"
                    placeholder="Enter input..."
                  />
                  <button
                    type="submit"
                    className="px-3 py-1 bg-blue-100 shadow-sm active:shadow-none rounded cursor-pointer"
                  >
                    Submit
                  </button>
                </div>
              </form>
            </div>
          )}
        </section>
      </div>
    </div>
  )
}
