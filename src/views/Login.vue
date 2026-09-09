<template>
  <div class="login-page">
    <div class="login-card">
      <div class="brand">山羊Goat网球馆</div>
      <div class="subtitle">管理后台</div>
      <el-form @submit.prevent="onLogin">
        <el-form-item>
          <el-input v-model="username" placeholder="管理员账号" size="large" />
        </el-form-item>
        <el-form-item>
          <el-input
            v-model="password"
            type="password"
            placeholder="密码"
            size="large"
            show-password
            @keyup.enter="onLogin"
          />
        </el-form-item>
        <el-button
          type="primary"
          size="large"
          class="login-btn"
          :loading="loading"
          @click="onLogin"
        >
          登 录
        </el-button>
      </el-form>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'
import { useRouter } from 'vue-router'
import { ElMessage } from 'element-plus'

const router = useRouter()
const username = ref('')
const password = ref('')
const loading = ref(false)

const LOGIN_URL = import.meta.env.DEV
  ? '/api/adminLogin'
  : 'https://cloud1-d3g0pb1qk028e3585-d862bc2-1312769671.ap-shanghai.app.tcloudbase.com/adminLogin'

async function onLogin() {
  if (!username.value || !password.value) {
    ElMessage.warning('请输入账号和密码')
    return
  }

  loading.value = true
  try {
    const res = await fetch(LOGIN_URL, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        username: username.value,
        password: password.value
      })
    })

    const data = await res.json()
    const result = data.body
      ? typeof data.body === 'string'
        ? JSON.parse(data.body)
        : data.body
      : data

    if (!result.ok) {
      ElMessage.error(result.msg || '账号或密码错误')
      return
    }

    const admin = result.admin || {}
    localStorage.setItem('admin_token', admin._id || admin.id || '')
    localStorage.setItem('admin_name', admin.name || admin.username || '')
    localStorage.setItem('admin_role', admin.role || 'admin')

    ElMessage.success('登录成功')
    router.push('/dashboard')
  } catch (err) {
    console.error('登录失败：', err)
    ElMessage.error('登录失败：' + (err.message || '网络错误'))
  } finally {
    loading.value = false
  }
}
</script>

<style scoped>
.login-page {
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  background: linear-gradient(135deg, #1a5c3a, #2d8a5e);
}
.login-card {
  width: 380px;
  background: #fff;
  border-radius: 16px;
  padding: 40px 36px;
  box-shadow: 0 20px 50px rgba(0, 0, 0, 0.2);
}
.brand {
  text-align: center;
  font-size: 24px;
  font-weight: 700;
  color: #1a5c3a;
}
.subtitle {
  text-align: center;
  color: #999;
  margin: 8px 0 28px;
  font-size: 14px;
}
.login-btn {
  width: 100%;
  background: #07c160;
  border-color: #07c160;
}
</style>
