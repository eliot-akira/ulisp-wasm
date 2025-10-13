import { useEffect, useRef, useState } from 'react'
import * as editor from '../../editor'
import * as base64Url from 'base64-compressor'
import { createLisp } from '../lib/create-lisp'
import { EditorView } from '@codemirror/view'

function removeUrlHash() {
  window.history.replaceState({}, document.title, window.location.pathname)
}

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
  const [playerState, setPlayerState] = useState('stopped')

  const shareLinkTextDefault = 'Create share link'
  const [shareLinkText, setShareLinkText] = useState(shareLinkTextDefault)

  const editorRef = useRef(null)
  const evalRef = useRef<Function>(null)
  const editorViewRef = useRef<EditorView>(null)
  const inputResolverRef = useRef<Function>(null)

  // These refs needed to get freshest state in event callbacks..
  // TODO: Consolidate UI state with better pattern

  const playerStateRef = useRef<string>(null)
  playerStateRef.current = playerState

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
        // Result already handled by print() below
        // setConsoleOut(result)

        // TODO: Let programs return values or functions to host?
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
            consoleOutRef.current += String.fromCharCode(byte)
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
        setPlayerState('running')
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
    <div className="flex flex-col h-screen w-screen">
      <div className="flex flex-row items-center w-full py-2 px-4 border-b border-slate-300 bg-slate-100">
        <h1 className="md:w-1/2 font-semibold">
          <img className="h-6 inline-block mr-2" src="/favicon-32x32.png" alt="logo" />
          uLisp-Wasm Playground
        </h1>
        <div className="ui-toolbar md:w-1/2 text-right">
          <button
            className="mx-2 py-1 px-2
            bg-blue-100 shadow-sm active:shadow-none
            rounded cursor-pointer"
            onClick={() => {
              setPlayerState('running')
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
              if (!lisp) return
              if (playerStateRef.current !== 'stopped') {
                // running or cleared
                setPlayerState('stopped')
                lisp.stop()
              } else {
                setPlayerState('cleared')
                setConsoleOut('')
                setStep(0)
                // Clear URL hash
                // window.location.hash = ''
                removeUrlHash()
              }
            }}
          >
            {playerStateRef.current === 'running' || playerStateRef.current === 'cleared' ? 'Stop' : 'Clear'}
          </button>

          <button
            className="ml-2 py-1 px-2
            bg-emerald-100 shadow-sm active:shadow-none
            rounded cursor-pointer"
            onClick={async () => {
              if (!editorViewRef.current) return

              const code = editorViewRef.current.state.doc.toString()
              const hash = await base64Url.encode({
                code
                // TODO: title
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

          <a className="ml-4 mr-2" href="https://github.com/eliot-akira/ulisp-wasm" title="Source">
            <svg
              className="inline w-6 h-6"
              viewBox="0 0 98 96"
              // width="98" height="96"
              xmlns="http://www.w3.org/2000/svg"
            >
              <path
                fill-rule="evenodd"
                clip-rule="evenodd"
                d="M48.854 0C21.839 0 0 22 0 49.217c0 21.756 13.993 40.172 33.405 46.69 2.427.49 3.316-1.059 3.316-2.362 0-1.141-.08-5.052-.08-9.127-13.59 2.934-16.42-5.867-16.42-5.867-2.184-5.704-5.42-7.17-5.42-7.17-4.448-3.015.324-3.015.324-3.015 4.934.326 7.523 5.052 7.523 5.052 4.367 7.496 11.404 5.378 14.235 4.074.404-3.178 1.699-5.378 3.074-6.6-10.839-1.141-22.243-5.378-22.243-24.283 0-5.378 1.94-9.778 5.014-13.2-.485-1.222-2.184-6.275.486-13.038 0 0 4.125-1.304 13.426 5.052a46.97 46.97 0 0 1 12.214-1.63c4.125 0 8.33.571 12.213 1.63 9.302-6.356 13.427-5.052 13.427-5.052 2.67 6.763.97 11.816.485 13.038 3.155 3.422 5.015 7.822 5.015 13.2 0 18.905-11.404 23.06-22.324 24.283 1.78 1.548 3.316 4.481 3.316 9.126 0 6.6-.08 11.897-.08 13.526 0 1.304.89 2.853 3.316 2.364 19.412-6.52 33.405-24.935 33.405-46.691C97.707 22 75.788 0 48.854 0z"
                fill="#24292f"
              />
            </svg>
          </a>
        </div>
      </div>

      <div className="flex flex-col md:flex-row flex-grow">
        <div className="ui-panel relative md:w-1/2 overflow-hidden flex flex-col">
          <div className="absolute w-full h-full flex-grow overflow-y-auto px-4 pb-4 md:pr-2">
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
        </div>

        <div className="ui-panel md:w-1/2 relative">
          <div className="absolute w-full h-full flex-grow overflow-y-auto px-4 pb-4 md:pl-2">
            <section className="mt-4 border border-slate-300">
              <div className="py-2 px-4 bg-slate-100 border-b border-slate-300 flex flex-row items-center">
                <h4 className="flex-grow">Console</h4>
                <div className="text-xs text-slate-800">Step {currentStep}</div>
              </div>

              <pre className="font-mono py-2 px-4">
                <code className="text-wrap block min-h-38">{consoleOut}</code>
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
      </div>
    </div>
  )
}
