var Module = (window.Module = {
  print: (function () {
    var element = document.getElementById('output')
    if (!element) return

    element.value = ''
    return (...args) => {
      var text = args.join(' ')
      // These replacements are necessary if you render to raw HTML
      //text = text.replace(/&/g, "&amp;");
      //text = text.replace(/</g, "&lt;");
      //text = text.replace(/>/g, "&gt;");
      //text = text.replace('\n', '<br>', 'g');
      console.log(text)
      element.innerText += text + '\n'
      element.scrollTop = element.scrollHeight // focus on bottom
    }
  })(),
  canvas: (() => {
    var canvas = document.getElementById('canvas')
    if (!canvas) return

    // As a default initial behavior, pop up an alert when webgl context is lost. To make your
    // application robust, you may want to override this behavior before shipping!
    // See http://www.khronos.org/registry/webgl/specs/latest/1.0/#5.15.2
    canvas.addEventListener(
      'webglcontextlost',
      (e) => {
        alert('WebGL context lost. You will need to reload the page.')
        e.preventDefault()
      },
      false
    )

    return canvas
  })(),
  setStatus: (text) => {
    if (!Module.setStatus.last)
      Module.setStatus.last = { time: Date.now(), text: '' }
    if (text === Module.setStatus.last.text) return
    var m = text.match(/([^(]+)\((\d+(\.\d+)?)\/(\d+)\)/)
    var now = Date.now()
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

    console.log('status', text)
  },
  totalDependencies: 0,
  monitorRunDependencies: (left) => {
    Module.totalDependencies = Math.max(Module.totalDependencies, left)
    Module.setStatus(
      left
        ? 'Preparing... (' +
            (Module.totalDependencies - left) +
            '/' +
            Module.totalDependencies +
            ')'
        : 'All downloads complete.'
    )
  },
})

Module.setStatus('Downloading...')
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
  //  Init uLisp interpreter
  // Module.print("Init uLisp...\n");
  Module._setup()

  runScript()
}

/// Run the script in the input box
function runScript() {
  //  Get the uLisp script
  var scr = '(+ 1 (* 2 3))'
  // var scr = document.getElementById("input").value;

  //  Create a pointer
  var ptr = Module.allocate(Module.intArrayFromString(scr), Module.ALLOC_NORMAL)

  //  Execute the uLisp script
  Module.print('\nRun: ' + scr + '\n')
  Module._evaluate(ptr)

  //  Free the memory allocated
  Module._free(ptr)

  //  More about passing a string from JavaScript to C WebAssembly:
  //  https://emscripten.org/docs/porting/connecting_cpp_and_javascript/Interacting-with-code.html
  //  https://stackoverflow.com/questions/46815205/how-to-pass-a-string-to-c-code-compiled-with-emscripten-for-webassembly
}
