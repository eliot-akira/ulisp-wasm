import { StrictMode } from 'react'
import { createRoot, hydrateRoot } from 'react-dom/client'
import { RouterProvider } from 'react-router/dom'
import { createBrowserRouter } from 'react-router'

import createRoutes from '@/routes.tsx'

import '@/global.css'
import '@/index.scss'

declare global {
  interface Window {
    __APP_STATE__: string
  }
}

const routes = createRoutes()
const router = createBrowserRouter(routes)
const container = document.getElementById('root')
const dehydratedState = window.__APP_STATE__ || {}

if (container) {
  const app = (
    <StrictMode>
      <RouterProvider router={router} />
    </StrictMode>
  )

  if (container.children.length) {
    hydrateRoot(container, app)
  } else {
    createRoot(container).render(app)
  }
} else {
  throw new Error('Container not found, must be HTMLElement')
}
