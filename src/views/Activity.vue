<template>
  <div class="page">
    <div class="page-header">
      <div>
        <h2>业务动态</h2>
        <p class="tip">汇总注册、订场、取消、团课报名、发卡等操作（手机端/电脑端通用）</p>
      </div>
      <el-button :loading="loading" type="primary" plain @click="loadData">刷新</el-button>
    </div>

    <div class="filters">
      <el-select v-model="filterType" clearable placeholder="全部类型" style="width: 160px" @change="onFilter">
        <el-option label="用户注册" value="register" />
        <el-option label="订场" value="booking_add" />
        <el-option label="取消预约" value="booking_cancel" />
        <el-option label="团课报名" value="group_enroll" />
        <el-option label="发卡" value="issue_card" />
      </el-select>
      <el-input
        v-model="keyword"
        clearable
        placeholder="搜索昵称/手机/会员号"
        style="width: 220px"
        @keyup.enter="onFilter"
        @clear="onFilter"
      />
      <el-button type="primary" @click="onFilter">查询</el-button>
    </div>

    <el-table :data="displayList" stripe border v-loading="loading" size="default">
      <el-table-column label="时间" width="170">
        <template #default="{ row }">
          {{ formatTime(row.time) }}
        </template>
      </el-table-column>
      <el-table-column label="类型" width="110">
        <template #default="{ row }">
          <el-tag :type="typeTag(row.type)" size="small">{{ typeLabel(row.type) }}</el-tag>
        </template>
      </el-table-column>
      <el-table-column prop="userName" label="用户" min-width="120" />
      <el-table-column prop="phone" label="手机号" width="130">
        <template #default="{ row }">
          {{ row.phone || '-' }}
        </template>
      </el-table-column>
      <el-table-column prop="detail" label="详情" min-width="260" />
      <el-table-column prop="venueName" label="场馆" width="140">
        <template #default="{ row }">
          {{ row.venueName || '-' }}
        </template>
      </el-table-column>
    </el-table>

    <div v-if="!loading && displayList.length === 0" class="empty">暂无动态</div>
  </div>
</template>

<script setup>
import { ref, computed, onMounted } from 'vue'
import { ElMessage } from 'element-plus'

const rawList = ref([])
const loading = ref(false)
const filterType = ref('')
const keyword = ref('')

const base = import.meta.env.DEV
  ? '/api'
  : 'https://cloud1-d0gmljq45868f5766-1312769671.ap-shanghai.app.tcloudbase.com'

/** 前端再过滤一层，避免云函数漏滤 */
const displayList = computed(() => {
  let arr = rawList.value || []
  if (filterType.value) {
    arr = arr.filter((x) => x.type === filterType.value)
  }
  const k = (keyword.value || '').trim().toLowerCase()
  if (k) {
    arr = arr.filter((x) => {
      const name = String(x.userName || '').toLowerCase()
      const phone = String(x.phone || '')
      const detail = String(x.detail || '').toLowerCase()
      return name.includes(k) || phone.includes(k) || detail.includes(k)
    })
  }
  return arr
})

function typeLabel(t) {
  return {
    register: '用户注册',
    booking_add: '订场',
    booking_cancel: '取消预约',
    group_enroll: '团课报名',
    issue_card: '发卡'
  }[t] || t
}
function typeTag(t) {
  return {
    register: 'success',
    booking_add: 'primary',
    booking_cancel: 'info',
    group_enroll: 'danger',
    issue_card: 'warning'
  }[t] || ''
}
function formatTime(t) {
  if (!t) return '-'
  if (typeof t === 'number') return new Date(t).toLocaleString()
  if (t.$date) return new Date(t.$date).toLocaleString()
  return String(t).slice(0, 19).replace('T', ' ')
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

async function loadData() {
  loading.value = true
  try {
    const result = await post('/adminGetActivityLogs', {
      type: '',
      keyword: '',
      venueId: localStorage.getItem('venue_id') || '',
      limit: 200
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '加载失败')
      return
    }
    rawList.value = result.list || []
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    loading.value = false
  }
}

function onFilter() {
  // displayList 是 computed，自动响应 filterType / keyword
  // 若还没加载过数据则拉一次
  if (!rawList.value.length) loadData()
}

onMounted(loadData)
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
}
.empty {
  text-align: center;
  color: #999;
  padding: 40px;
}
</style>
