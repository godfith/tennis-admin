import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

const CLOUD_BASE = 'https://cloud1-d3g0pb1qk028e3585-d862bc2-1312769671.ap-shanghai.app.tcloudbase.com'

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
  'adminRefundCard',
  'adminGetCoaches',
  'adminSaveCoach',
  'adminGetDashboard',
  'adminGetGroupClasses',
  'adminSaveGroupClass',
  'adminEnrollGroupClass',
  'adminGetGroupEnrollments',
  'adminGetActivityLogs',
  'adminGetStaff',
  'adminSaveStaff',
  'adminGetCourtPrices',
  'adminSaveCourtPrices',
  'adminGetCoachAttendance'
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
