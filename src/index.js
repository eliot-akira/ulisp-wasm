const $console = document.getElementById('console')
const canvas = document.getElementById('canvas')

const Module = (window.Module = {
  print: (function () {
    if (!$console) return

    $console.value = ''
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
          } catch(e) {
            console.log(e)
          }
        } else if (text) {
          console.log(text)
          $console.innerText += text + '\n'
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
  setStatus: (text) => {
    if (!Module.setStatus.last)
      Module.setStatus.last = { time: Date.now(), text: '' }
    if (text === Module.setStatus.last.text) return
    const m = text.match(/([^(]+)\((\d+(\.\d+)?)\/(\d+)\)/)
    const now = Date.now()
    if (m && now - Module.setStatus.last.time < 30) return // if this is a progress update, skip it if too soon
    Module.setStatus.last.time = now
    Module.setStatus.last.text = text
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
  //   Module.totalDependencies = Math.max(Module.totalDependencies, left)
  //   Module.setStatus(
  //     left
  //       ? 'Preparing... (' +
  //           (Module.totalDependencies - left) +
  //           '/' +
  //           Module.totalDependencies +
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

/// Wait for emscripten to be initialised
Module.onRuntimeInitialized = function () {
  // Module.print('Init uLisp\n')
  Module._setup()

  const ulisp = window.ulisp =  {
    run,
    // Called from Module
    call(command, ...args) {
      console.log('ulisp.call', command, ...args)
      switch(command) {
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
    }
  }

  run('(+ 1 (* 2 3))')

}

// var scr = document.getElementById("input").value;

function run(code) {

  //  Create a pointer
  const ptr = Module.allocate(Module.intArrayFromString(code), Module.ALLOC_NORMAL)

  //  Execute the uLisp script
  Module.print('\n> ' + code + '\n')
  Module._evaluate(ptr)

  //  Free the memory allocated
  Module._free(ptr)

  //  More about passing a string from JavaScript to C WebAssembly:
  //  https://emscripten.org/docs/porting/connecting_cpp_and_javascript/Interacting-with-code.html
  //  https://stackoverflow.com/questions/46815205/how-to-pass-a-string-to-c-code-compiled-with-emscripten-for-webassembly
}
