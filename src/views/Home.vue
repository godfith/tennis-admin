<template>
  <div class="home">
    <h1>登录成功</h1>
    <p>欢迎，{{ name }}</p>
    <p>后台首页（下一步再做完整布局）</p>
    <el-button type="primary" @click="logout">退出登录</el-button>
  </div>
</template>

<script setup>
import { ref } from 'vue'
import { useRouter } from 'vue-router'

const router = useRouter()
const name = ref(localStorage.getItem('admin_name') || '管理员')

function logout() {
  localStorage.removeItem('admin_token')
  localStorage.removeItem('admin_name')
  router.push('/login')
}
</script>

<style scoped>
.home {
  padding: 40px;
}
h1 {
  margin-bottom: 12px;
}
p {
  color: #666;
  margin-bottom: 8px;
}
</style>