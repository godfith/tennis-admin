import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

const CLOUD_BASE = 'https://cloud1-d0gmljq45868f5766-1312769671.ap-shanghai.app.tcloudbase.com'

export default defineConfig({
  plugins: [vue()],
  server: {
    port: 5173,
    proxy: {
      '/api/adminLogin': {
        target: CLOUD_BASE,
        changeOrigin: true,
        rewrite: (path) => path.replace(/^\/api/, '')
      },
      '/api/adminGetVenues': {
        target: CLOUD_BASE,
        changeOrigin: true,
        rewrite: (path) => path.replace(/^\/api/, '')
      },
      '/api/adminGetCourts': {
        target: CLOUD_BASE,
        changeOrigin: true,
        rewrite: (path) => path.replace(/^\/api/, '')
      },
      '/api/adminSaveCourt': {
        target: CLOUD_BASE,
        changeOrigin: true,
        rewrite: (path) => path.replace(/^\/api/, '')
      },
      '/api/adminGetBookings': {
        target: CLOUD_BASE,
        changeOrigin: true,
        rewrite: (path) => path.replace(/^\/api/, '')
      },
      '/api/adminSaveBooking': {
        target: CLOUD_BASE,
        changeOrigin: true,
        rewrite: (path) => path.replace(/^\/api/, '')
      },
      '/api/adminSearchUsers': {
        target: CLOUD_BASE,
        changeOrigin: true,
        rewrite: (path) => path.replace(/^\/api/, '')
      }
    }
  }
})
