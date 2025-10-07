import fs from 'node:fs/promises'
import path, { dirname } from 'node:path'
import { fileURLToPath } from 'node:url'
import { test, is, ok, run } from 'testra'
import * as parinferTest from './parser.ts'

const __dirname = dirname(fileURLToPath(import.meta.url))

function isInteger(x) {
  return typeof x === 'number' && isFinite(x) && Math.floor(x) === x
}

function isValidTestId(id) {
  return typeof id === 'number' && id >= 1000 && id < 10000
}

function isTestIdArg(s) {
  if (typeof s !== 'string') return false
  const split = s.split(':')
  if (split.length !== 2) return false
  const testId = parseInt(split[1], 10)
  return split[0] === '--id' && isValidTestId(testId)
}

function extractJustId(s) {
  const a = s.split(':')
  return parseInt(a[1], 10)
}

test('Setup', () => {
  ok(isTestIdArg('--id:1400'))
  ok(!isTestIdArg('--id'))
  ok(!isTestIdArg('--id:78'))

  ok(extractJustId('--id:1400') === 1400)
})

// Originally the cases are compiled from Markdown to JSON

const modes = ['indent', 'paren', 'smart']
const createModeMethodName = (mode: string): keyof typeof parinferTest => `${mode}Mode` as keyof typeof parinferTest

for (const mode of modes) {
  const modeTitle = mode[0].toUpperCase() + mode.slice(1)
  const methodName = createModeMethodName(mode)

  test(`${modeTitle} mode`, async () => {
    const testCases = JSON.parse(await fs.readFile(path.join(__dirname, `./cases/${mode}-mode.json`), 'utf8'))

    ok(Array.isArray(testCases), 'test cases loaded as array')

    for (const t of testCases) {
      ok(t.id, `--- Test case ${t.id} in ${modeTitle} mode ---`)

      const { result: expected, source } = t

      const extras = {
        printTabStops: expected.tabStops,
        printParenTrails: expected.parenTrails
      }

      const parsed = parinferTest[methodName](source.in, extras)
      is(
        parsed,
        source.out,
        // `formatted output`
        `formatted output\nINPUT:\n${source.in}\n\nOUTPUT:\n${source.out}`
      )

      if (expected.error || expected.tabStops || expected.parenTrails) {
        return
      }

      const resultIn = parinferTest.transferInlineOpts(source.in, parsed)
      const parsed2 = parinferTest[methodName](resultIn, extras)
      is(parsed, parsed2, 'idempotent output')

      const crossMode = ['indent', 'smart'].includes(mode) ? 'parenMode' : 'indentMode'
      const p = parinferTest[crossMode](resultIn, extras)
      is(parsed, p, `cross-mode output from ${crossMode}`)
    }
  })
}

// test('Paren mode', async () => {
//   const testCases = JSON.parse(await fs.readFile(path.join(__dirname, './cases/paren-mode.json'), 'utf8'))

//   ok(Array.isArray(testCases), 'test cases loaded as array')
// })

// test('Smart mode', async () => {
//   const testCases = JSON.parse(await fs.readFile(path.join(__dirname, './cases/smart-mode.json'), 'utf8'))

//   ok(Array.isArray(testCases), 'test cases loaded as array')
// })

run()
