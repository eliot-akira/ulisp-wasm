import { basicSetup } from 'codemirror'
import { indentUnit } from '@codemirror/language'
import { EditorState } from '@codemirror/state'
import { EditorView } from '@codemirror/view'
import type { ParinferMode } from './cm6-parinfer.ts'
import {
  parinferExtension,
  switchMode,
  disableParinfer,
  enableParinfer,
} from './cm6-parinfer.ts'
import { clojure } from './lang-ulisp' // '@nextjournal/lang-clojure'

export function init(parent: HTMLElement, doc: string) {
  return new EditorView({
    state: EditorState.create({
      doc,
      extensions: [
        indentUnit.of(' '),
        basicSetup,
        clojure(),
        parinferExtension({
          enabled: true,
          mode: 'smart', // smart, parent, indent
        }),
      ],
    }),
    parent: parent,
  })
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
