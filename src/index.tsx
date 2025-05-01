import * as demoEditor from './editor/index.ts'

const $console = document.getElementById('console')
const canvas = document.getElementById('canvas')

function consoleLine(text: string, isHtml = false) {
  if (isHtml) {
    $console.innerHTML += text + '<br>'
  } else {
    $console.innerText += text + '\n'
  }

  $console.scrollTop = $console.scrollHeight // focus on bottom
}

function consoleLineHtml(text: string) {
  return consoleLine(text, true)
}

;(async () => {
  const { createUlispModule } = window

  const Module = await createUlispModule({
    print: (function () {
      if (!$console) return

      // $console.innerText = ''
      return (...args) => {
        const text = args.join(' ')
        // These replacements are necessary if you render to raw HTML
        //text = text.replace(/&/g, "&amp;");
        //text = text.replace(/</g, "&lt;");
        //text = text.replace(/>/g, "&gt;");
        //text = text.replace('\n', '<br>', 'g');

        const lines = text.split('\n')
        for (const text of lines) {
          if (text.startsWith('json:')) {
            console.log(text)
            try {
              const value = JSON.parse(text.replace(/^json:/, ''))
              console.log('Got value', value)
            } catch (e) {
              console.log(e)
            }
          } else if (text) {
            console.log(text)
            consoleLine(text)
            $console.scrollTop = $console.scrollHeight // focus on bottom
          }
        }
      }
    })(),
    canvas: (() => {
      if (!canvas) return

      // As a default initial behavior, pop up an alert when webgl context is lost. To make your
      // application robust, you may want to override this behavior before shipping!
      // See http://www.khronos.org/registry/webgl/specs/latest/1.0/#5.15.2
      // canvas.addEventListener(
      //   'webglcontextlost',
      //   (e) => {
      //     alert('WebGL context lost. You will need to reload the page.')
      //     e.preventDefault()
      //   },
      //   false
      // )

      return canvas
    })(),
    setStatus: function (text) {
      console.log('this', this)

      if (!this.setStatus.last)
        this.setStatus.last = { time: Date.now(), text: '' }
      if (text === this.setStatus.last.text) return
      const m = text.match(/([^(]+)\((\d+(\.\d+)?)\/(\d+)\)/)
      const now = Date.now()
      if (m && now - this.setStatus.last.time < 30) return // if this is a progress update, skip it if too soon
      this.setStatus.last.time = now
      this.setStatus.last.text = text
      if (m) {
        text = m[1]
        // progressElement.value = parseInt(m[2])*100;
        // progressElement.max = parseInt(m[4])*100;
        // progressElement.hidden = false;
        // spinnerElement.hidden = false;
      } else {
        // progressElement.value = null;
        // progressElement.max = null;
        // progressElement.hidden = true;
        // if (!text) spinnerElement.style.display = 'none';
      }
      // statusElement.innerHTML = text;

      if (text) {
        console.log('uLisp', text)
      }
    },
    totalDependencies: 0,
    // monitorRunDependencies: (left) => {
    //   this.totalDependencies = Math.max(this.totalDependencies, left)
    //   this.setStatus(
    //     left
    //       ? 'Preparing... (' +
    //           (this.totalDependencies - left) +
    //           '/' +
    //           this.totalDependencies +
    //           ')'
    //       : 'All downloads complete.'
    //   )
    // },
  })

  // Module.setStatus('Downloading...')
  window.onerror = (event) => {
    // TODO: do not warn on ok events like simulating an infinite loop or exitStatus
    Module.setStatus('Exception thrown, see JavaScript console')
    // spinnerElement.style.display = 'none';
    Module.setStatus = (text) => {
      if (text) console.error('[post-exception status] ' + text)
    }
  }

  const tickQueue: ((value: unknown) => void)[] = []
  let shouldStop = false

  /// Wait for emscripten to be initialised
  // Module.onRuntimeInitialized = function () {
  // Module.print('Init uLisp\n')
  Module._setup()

  /**
   * TODO: Module expects a global variable `ulisp`. Move them as callbacks
   * passed to createUlisp() above.
   */
  const ulisp = (window.ulisp = {
    run,
    // Called from Module
    call(command, ...args) {
      console.log('ulisp.call', command, ...args)
      switch (command) {
        case 'analogRead':
          return args[0] / 2
          break
        case 'analogWrite':
          break
        case 'digitalRead':
          return args[0]
          break
        case 'digitalWrite':
          break
      }
    },
    escape() {
      // Return 1 to stop the runtime
      return 0
    },
    async wait_for_tick() {
      return await new Promise((resolve, reject) => {
        if (shouldStop) {
          let callback
          while ((callback = tickQueue.shift())) {
            callback(1)
          }
          return resolve(1)
        }
        tickQueue.push(resolve)
      })
    return 0
    },
    stop() {
      shouldStop = true
    },
  })

  // const $codeForm = document.getElementById('code-form')
  // const $code = document.getElementById('code')
  const $editor = document.getElementById('editor')
  const $run = document.getElementById('run')

  const exampleCode = `(defun fib (n)
  (if (< n 3) 1
    (+ (fib (- n 1)) (fib (- n 2)))))

(fib 5)`

  const editorView = demoEditor.init($editor, exampleCode)

  function switch_parinfer_mode(mode) {
    demoEditor.switchParinferMode(editorView, mode)
  }
  function set_parinfer_enabled(enabled) {
    demoEditor.setParinferEnabled(editorView, enabled)
  }

  // $codeForm.addEventListener('submit', function (e) {
  //   e.preventDefault()
  //   run($code.value)
  // })
  $run.addEventListener('click', function () {
    // run($code.value)
    run(editorView.state.doc.toString())
  })

  // $code.value = `(+ 1 (* 2 3))`
  $run.click()
  // }

  async function tick() {
    const callback = tickQueue.shift()
    if (!callback) return false
    await new Promise((resolve, reject) => {
      callback(shouldStop ? 1 : 0)

      // Next tick on event loop
      setTimeout(resolve, 0)
    })
    return tickQueue.length
  }

  async function run(code) {

    Module.print('\n> ' + code + '\n')

    shouldStop = false

    //  Allocate memory for the string and create a pointer
    const ptr = Module.stringToNewUTF8(code)
    Module._evaluate(ptr)

    let i = 0
    const maxTicks = 999

    try {
      // Call tick until done
      while (await tick()) {
        console.log('tick')
        if (i++ > maxTicks) {
          const message = `Maximum steps exceeded: ${maxTicks}`
          console.log(message)
          consoleLineHtml(`<span style="color:red">${message}</span>`)

          shouldStop = true
          break
        }
      }
    } catch (e) {
      console.log(e)
    }

    // Free the memory
    Module._free(ptr)
  }
})().catch(console.error)
