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
import { auth, db } from '../utils/cloud'

const router = useRouter()
const username = ref('')
const password = ref('')
const loading = ref(false)

async function onLogin() {
  if (!username.value || !password.value) {
    ElMessage.warning('请输入账号和密码')
    return
  }

  loading.value = true
  try {
    // 1. 匿名登录（拿到访问数据库的身份）
    try {
      await auth.signInAnonymously()
    } catch (e) {
      // 已登录过会报错，可忽略
      console.log('匿名登录：', e.message || e)
    }

    // 2. 查 admins 集合
    const res = await db
      .collection('admins')
      .where({
        username: username.value,
        password: password.value,
        status: 'active'
      })
      .get()

    console.log('查询结果：', res)

    if (!res.data || res.data.length === 0) {
      ElMessage.error('账号或密码错误')
      return
    }

    const admin = res.data[0]
    localStorage.setItem('admin_token', admin._id)
    localStorage.setItem('admin_name', admin.name || admin.username)

    ElMessage.success('登录成功')
    // 下一步再做首页，先跳到一个占位页
    router.push('/home')
  } catch (err) {
    console.error('登录失败详情：', err)
    ElMessage.error('登录失败：' + (err.message || err.errMsg || '请看控制台'))
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