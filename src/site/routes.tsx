import type { RouteObject } from 'react-router'
import { lazy } from 'react'
import Layout from '@/ui/Layout'

const createRoutes = (): RouteObject[] => {
  return [
    {
      path: '/',
      Component: Layout,
      children: [
        {
          index: true,
          Component: lazy(() => import('@/pages')),
          loader: async () => {
            // if (import.meta.env.SSR) {
            //   await queryClient.prefetchQuery(productsQuery());
            // }
          }
        },
        // {
        //   path: '/1',
        //   Component: lazy(() => import('@/pages/1')),
        //   loader: async ({ params }) => {
        //     // if (import.meta.env.SSR) {
        //     //   await queryClient.prefetchQuery(productQuery(params.id));
        //     // }
        //   }
        // }
        // {
        //   path: '/products/:id',
        //   Component: lazy(() => import('@/pages/product')),
        //   loader: async ({ params }) => {
        //     if (import.meta.env.SSR) {
        //       await queryClient.prefetchQuery(productQuery(params.id));
        //     }
        //   }
        // }
      ]
    }
  ]
}

export default createRoutes
