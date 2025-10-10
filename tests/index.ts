import { test, is, run as runTests } from 'testra'

runTests(async () => {

  // Tests can run standalone, like `bun tests/core`, or part of suite `bun tests`

  await import('./core.ts')
  await import('./interface.ts')

})
