import fs from 'node:fs'
import path from 'node:path'
import { Writable } from 'node:stream'
import { StrictMode } from 'react'
import { renderToPipeableStream } from 'react-dom/server'
import { createStaticHandler, createStaticRouter, StaticRouterProvider } from 'react-router'
import type { StaticHandlerContext } from 'react-router'

import createRoutes from '@/routes.tsx'
import { HTML_DIVIDER } from '@/constants'

const outDir = 'docs'

async function render() {
  const template = fs.readFileSync(`${outDir}/index.html`, 'utf-8')

  const renderRoutes = [
    {
      routePath: '/',
      fileName: '/index.html'
    },
    // {
    //   routePath: '/1',
    //   fileName: '/1/index.html'
    // }
    // ...[1, 2, 3, 4, 5].map((id) => ({
    //   routePath: `/products/${id}`,
    //   fileName: `/products/${id}/index.html`
    // }))
  ]

  await Promise.all(
    renderRoutes.map(async ({ routePath, fileName }) => {
      console.info(`..generating ${fileName}`)

      const t0 = performance.now()

      const request = new Request(`https://example.com${routePath}`)
      const routes = createRoutes()
      const { query, dataRoutes } = createStaticHandler(routes)
      const context = (await query(request)) as StaticHandlerContext
      const router = createStaticRouter(dataRoutes, context)

      // TODO: Pass state to initial render
      const state = {
        key: 'value'
      }

      const { pipe } = renderToPipeableStream(
        <StrictMode>
          <StaticRouterProvider router={router} context={context} />
        </StrictMode>,
        {
          onAllReady() {
            const chunks: string[] = []
            const writeable = new Writable({
              write(chunk, _encoding, callback) {
                chunks.push(chunk.toString())
                callback()
              }
            })

            writeable.on('finish', () => {

              // TODO: Resolve async data fetch

              const [head, body] = chunks.join('').split(HTML_DIVIDER)

              const html = template
                .replace('<!--head-outlet-->', head)
                .replace('<!--body-outlet-->', body)
                .replace('<!--app-outlet-->', `window.__APP_STATE__ = ${JSON.stringify(state)};`)

              const folder = path.resolve(`${outDir}${fileName.replace('index.html', '')}`)

              if (!fs.existsSync(folder)) {
                fs.mkdirSync(folder, { recursive: true })
              }

              fs.writeFileSync(path.resolve(`${outDir}${fileName}`), html)

              const t1 = performance.now()
              console.info(`✓ ${fileName} processed in ${Math.round(t1 - t0)}ms`)
            })

            pipe(writeable)
          }
        }
      )
    })
  )
}

render().catch(console.error)
