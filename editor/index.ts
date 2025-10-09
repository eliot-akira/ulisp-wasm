// import { basicSetup } from 'codemirror'
import { EditorState } from '@codemirror/state'
import { openSearchPanel, highlightSelectionMatches } from '@codemirror/search'
import { indentWithTab, history, defaultKeymap, historyKeymap } from '@codemirror/commands'
import {
  foldGutter,
  indentOnInput,
  indentUnit,
  bracketMatching,
  foldKeymap,
  syntaxHighlighting,
  defaultHighlightStyle
} from '@codemirror/language'
import { closeBrackets, autocompletion, closeBracketsKeymap, completionKeymap } from '@codemirror/autocomplete'
import {
  lineNumbers,
  highlightActiveLineGutter,
  highlightSpecialChars,
  drawSelection,
  dropCursor,
  rectangularSelection,
  crosshairCursor,
  highlightActiveLine,
  keymap,
  EditorView
} from '@codemirror/view'

// Theme
// import { oneDark } from '@codemirror/theme-one-dark'
import { themeBase } from './theme-default/base.ts'
import { light } from './theme-default/light.ts'
// import { dark } from './theme-default/dark.ts'

// Language
// import { javascript } from '@codemirror/lang-javascript'
import { clojure } from './lang-ulisp' // '@nextjournal/lang-clojure'

import { parinferExtension, switchMode, disableParinfer, enableParinfer } from './cm6-parinfer.ts'

function createEditorState(initialContents, options = {}) {
  const state = EditorState.create({
    doc: initialContents,
    extensions: [
      lineNumbers(),
      highlightActiveLineGutter(),
      highlightSpecialChars(),
      history(),
      foldGutter(),
      drawSelection(),
      indentUnit.of('  '),
      EditorState.allowMultipleSelections.of(true),
      indentOnInput(),
      bracketMatching(),
      closeBrackets(),
      autocompletion(),
      rectangularSelection(),
      crosshairCursor(),
      highlightActiveLine(),
      highlightSelectionMatches(),
      keymap.of([
        // Ctrl or Command and Enter
        {
          key: 'Mod-Enter',
          run() {
            options?.eval()
            return true
          },
          preventDefault: true
        },
        indentWithTab,
        ...closeBracketsKeymap,
        ...defaultKeymap,
        ...historyKeymap,
        ...foldKeymap,
        ...completionKeymap
      ]),
      syntaxHighlighting(defaultHighlightStyle, { fallback: true }),
      // basicSetup,
      clojure(),
      parinferExtension({
        enabled: false,
        mode: 'smart' // smart, parent, indent, off
      }),
      themeBase,
      light,
      ...(options.extensions || [])
    ]
  })

  return state
}

function createEditorView(state, parent) {
  return new EditorView({ state, parent })
}

export function init(parent: HTMLElement, doc: string, options = {}) {
  return createEditorView(createEditorState(doc, options), parent)
}

export function switchParinferMode(view: EditorView, value: string) {
  switchMode(view, value as ParinferMode)
}

export function setParinferEnabled(view: EditorView, v: boolean) {
  if (v) {
    enableParinfer(view)
  } else {
    disableParinfer(view)
  }
}
