<template>
  <div class="page">
    <div class="page-header">
      <h2>场地管理</h2>
      <el-button :loading="loading" @click="loadData">刷新</el-button>
    </div>

    <p class="tip">当前场馆：{{ venueName || '未选择' }}</p>

    <el-table :data="list" stripe border v-loading="loading">
      <el-table-column prop="name" label="场地名称" min-width="120" />
      <el-table-column prop="type" label="类型" width="120" />
      <el-table-column prop="sort" label="排序" width="80" />
      <el-table-column prop="status" label="状态" width="100" />
      <el-table-column prop="venueId" label="场馆ID" min-width="140" />
    </el-table>

    <div v-if="!loading && list.length === 0" class="empty">暂无场地</div>
  </div>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from 'vue'
import { ElMessage } from 'element-plus'

const list = ref([])
const loading = ref(false)
const venueName = ref(localStorage.getItem('venue_name') || '')

const base = import.meta.env.DEV
  ? '/api'
  : 'https://cloud1-d0gmljq45868f5766-1312769671.ap-shanghai.app.tcloudbase.com'

async function post(path, body = {}) {
  const res = await fetch(base + path, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(body)
  })
  const data = await res.json()
  return data.body
    ? typeof data.body === 'string'
      ? JSON.parse(data.body)
      : data.body
    : data
}

async function loadData() {
  const venueId = localStorage.getItem('venue_id') || ''
  venueName.value = localStorage.getItem('venue_name') || ''

  if (!venueId) {
    list.value = []
    ElMessage.warning('请先在顶部选择场馆')
    return
  }

  loading.value = true
  try {
    const result = await post('/adminGetCourts', { venueId })
    if (!result.ok) {
      ElMessage.error(result.msg || '加载失败')
      list.value = []
      return
    }
    list.value = result.list || []
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    loading.value = false
  }
}

function onVenueChanged() {
  loadData()
}

onMounted(() => {
  loadData()
  window.addEventListener('venue-changed', onVenueChanged)
})
onUnmounted(() => {
  window.removeEventListener('venue-changed', onVenueChanged)
})
</script>

<style scoped>
.page-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 12px;
}
h2 { margin: 0; font-size: 20px; }
.tip { color: #666; margin-bottom: 16px; font-size: 14px; }
.empty { text-align: center; color: #999; padding: 40px; }
</style>