import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

export default defineConfig({
  plugins: [vue()],
  server: {
    port: 5173,
    proxy: {
      '/api/adminLogin': {
        target: 'https://cloud1-d0gmljq45868f5766-1312769671.ap-shanghai.app.tcloudbase.com',
        changeOrigin: true,
        rewrite: (path) => path.replace(/^\/api/, '')
      },
      '/api/adminGetBookings': {
        target: 'https://cloud1-d0gmljq45868f5766-1312769671.ap-shanghai.app.tcloudbase.com',
        changeOrigin: true,
        rewrite: (path) => path.replace(/^\/api/, '')
      }
    }
  }
})