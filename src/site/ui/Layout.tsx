import { Outlet, NavLink } from 'react-router'
import { HTML_DIVIDER } from '@/constants.ts'

const Layout = () => (
  <>
    {import.meta.env.SSR && HTML_DIVIDER}
    <Outlet />
  </>
)

export default Layout
