import tailwindcss from '@tailwindcss/vite'
import react from '@vitejs/plugin-react-swc'
import { defineConfig } from 'vite'
import tsconfigPaths from 'vite-tsconfig-paths'

const tsConfigs = tsconfigPaths({
  projects: ['tsconfig.json']
})

const publishBase = '/ulisp-wasm'

export default defineConfig(({ isSsrBuild }) => {
  if (isSsrBuild) {
    return {
      base: publishBase,
      build: {
        outDir: 'build/server',
        copyPublicDir: false
      },
      plugins: [tsConfigs]
    }
  } else {
    return {
      base: process.env.NODE_ENV === 'development' ? '/' : publishBase,
      build: {
        outDir: 'docs'
      },
      plugins: [tsConfigs, tailwindcss(), react()]
    }
  }
})
