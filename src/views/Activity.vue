<template>
  <div class="page">
    <div class="page-header">
      <div>
        <h2>业务动态</h2>
        <p class="tip">可只搜关键词，类型为可选项 · 共 {{ rawList.length }} 条，当前显示 {{ filteredList.length }} 条</p>
      </div>
      <el-button :loading="loading" type="primary" plain @click="fetchAll">刷新</el-button>
    </div>

    <div class="filters">
      <el-select
        v-model="filterType"
        clearable
        placeholder="全部类型（可选）"
        style="width: 180px"
      >
        <el-option label="用户注册" value="register" />
        <el-option label="订场" value="booking_add" />
        <el-option label="取消预约" value="booking_cancel" />
        <el-option label="团课报名" value="group_enroll" />
        <el-option label="发卡" value="issue_card" />
      </el-select>
      <el-input
        v-model="keyword"
        clearable
        placeholder="搜索昵称 / 手机 / 详情（可不选类型）"
        style="width: 280px"
      />
      <el-button @click="clearFilters">重置</el-button>
    </div>

    <el-table :data="filteredList" stripe border v-loading="loading" :key="tableKey">
      <el-table-column label="时间" width="170">
        <template #default="{ row }">{{ formatTime(row.time) }}</template>
      </el-table-column>
      <el-table-column label="类型" width="110">
        <template #default="{ row }">
          <el-tag :type="typeTag(row.type)" size="small">{{ typeLabel(row.type) }}</el-tag>
        </template>
      </el-table-column>
      <el-table-column prop="userName" label="用户" min-width="120" />
      <el-table-column label="手机号" width="130">
        <template #default="{ row }">{{ row.phone || '-' }}</template>
      </el-table-column>
      <el-table-column prop="detail" label="详情" min-width="260" />
      <el-table-column label="场馆" width="140">
        <template #default="{ row }">{{ row.venueName || '-' }}</template>
      </el-table-column>
    </el-table>

    <div v-if="!loading && filteredList.length === 0" class="empty">
      暂无符合条件的数据
    </div>
  </div>
</template>

<script setup>
import { ref, computed, onMounted } from 'vue'
import { ElMessage } from 'element-plus'

const loading = ref(false)
const rawList = ref([])
const filterType = ref('')
const keyword = ref('')
const tableKey = ref(0)

const base = import.meta.env.DEV
  ? '/api'
  : 'https://cloud1-d0gmljq45868f5766-1312769671.ap-shanghai.app.tcloudbase.com'

const filteredList = computed(() => {
  const type = (filterType.value || '').trim()
  const k = (keyword.value || '').trim().toLowerCase()
  const source = rawList.value || []

  return source.filter((item) => {
    if (!item) return false

    // 类型：有选才过滤
    if (type) {
      if (String(item.type || '') !== type) return false
    }

    // 关键词：有填才过滤（可不选类型）
    if (k) {
      const name = String(item.userName || '').toLowerCase()
      const phone = String(item.phone || '').toLowerCase()
      const detail = String(item.detail || '').toLowerCase()
      if (!name.includes(k) && !phone.includes(k) && !detail.includes(k)) {
        return false
      }
    }

    return true
  })
})

function typeLabel(t) {
  return {
    register: '用户注册',
    booking_add: '订场',
    booking_cancel: '取消预约',
    group_enroll: '团课报名',
    issue_card: '发卡'
  }[t] || t || '-'
}

function typeTag(t) {
  return {
    register: 'success',
    booking_add: 'primary',
    booking_cancel: 'info',
    group_enroll: 'danger',
    issue_card: 'warning'
  }[t] || 'info'
}

function formatTime(t) {
  if (!t) return '-'
  if (typeof t === 'number') return new Date(t).toLocaleString()
  if (t.$date) return new Date(t.$date).toLocaleString()
  return String(t).slice(0, 19).replace('T', ' ')
}

function clearFilters() {
  filterType.value = ''
  keyword.value = ''
}

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

async function fetchAll() {
  loading.value = true
  try {
    const result = await post('/adminGetActivityLogs', {
      venueId: localStorage.getItem('venue_id') || '',
      limit: 200
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '加载失败')
      rawList.value = []
      return
    }
    rawList.value = Array.isArray(result.list) ? result.list : []
    tableKey.value += 1
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
    rawList.value = []
  } finally {
    loading.value = false
  }
}

onMounted(fetchAll)
</script>

<style scoped>
.page-header {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  margin-bottom: 16px;
}
h2 {
  margin: 0 0 4px;
  font-size: 20px;
}
.tip {
  margin: 0;
  color: #888;
  font-size: 13px;
}
.filters {
  display: flex;
  gap: 10px;
  margin-bottom: 14px;
  flex-wrap: wrap;
  align-items: center;
}
.empty {
  text-align: center;
  color: #999;
  padding: 40px;
}
</style>
