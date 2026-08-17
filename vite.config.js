import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

const CLOUD_BASE = 'https://cloud1-d0gmljq45868f5766-1312769671.ap-shanghai.app.tcloudbase.com'

const proxyPaths = [
  'adminLogin',
  'adminGetVenues',
  'adminGetCourts',
  'adminSaveCourt',
  'adminGetBookings',
  'adminSaveBooking',
  'adminSearchUsers',
  'adminGetUsers',
  'adminGetCardTemplates',
  'adminSaveCardTemplate',
  'adminGetMemberCards',
  'adminIssueCard',
  'adminGetCoaches'
]

const proxy = {}
proxyPaths.forEach((name) => {
  proxy[`/api/${name}`] = {
    target: CLOUD_BASE,
    changeOrigin: true,
    rewrite: (path) => path.replace(/^\/api/, '')
  }
})

export default defineConfig({
  plugins: [vue()],
  server: {
    port: 5173,
    proxy
  }
})
