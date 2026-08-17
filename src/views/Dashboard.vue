<template>
  <div class="page">
    <div class="page-header">
      <div>
        <h2>数据看板</h2>
        <p class="tip">当前场馆：{{ venueName || '未选择' }} · {{ today }}</p>
      </div>
      <el-button :loading="loading" @click="loadData">刷新</el-button>
    </div>

    <el-row :gutter="16" class="stat-row">
      <el-col :xs="12" :sm="8" :md="4" v-for="item in statCards" :key="item.key">
        <div class="stat-card" :style="{ borderTopColor: item.color }">
          <div class="stat-label">{{ item.label }}</div>
          <div class="stat-value">{{ item.value }}</div>
        </div>
      </el-col>
    </el-row>

    <div class="section">
      <div class="section-title">今日预约</div>
      <el-table :data="todayBookings" stripe border v-loading="loading" size="small">
        <el-table-column prop="time" label="时段" width="110" />
        <el-table-column prop="court" label="场地" width="100" />
        <el-table-column prop="userName" label="客户" min-width="100" />
        <el-table-column label="用卡" min-width="140">
          <template #default="{ row }">
            <span v-if="row.cardName">
              {{ row.cardName }}
              <span v-if="row.cardRemaining != null">（剩{{ row.cardRemaining }}）</span>
            </span>
            <span v-else class="muted">现金/其他</span>
          </template>
        </el-table-column>
        <el-table-column prop="coachName" label="教练" width="100">
          <template #default="{ row }">
            {{ row.coachName || '-' }}
          </template>
        </el-table-column>
        <el-table-column prop="remark" label="备注" min-width="100">
          <template #default="{ row }">
            {{ row.remark || '-' }}
          </template>
        </el-table-column>
      </el-table>
      <div v-if="!loading && todayBookings.length === 0" class="empty">今日暂无预约</div>
    </div>
  </div>
</template>

<script setup>
import { ref, computed, onMounted, onUnmounted } from 'vue'
import { ElMessage } from 'element-plus'

const loading = ref(false)
const venueName = ref(localStorage.getItem('venue_name') || '')
const stats = ref({
  todayBookings: 0,
  todayCardBookings: 0,
  weekBookings: 0,
  courtCount: 0,
  coachCount: 0,
  userCount: 0,
  activeCardCount: 0
})
const todayBookings = ref([])

const base = import.meta.env.DEV
  ? '/api'
  : 'https://cloud1-d0gmljq45868f5766-1312769671.ap-shanghai.app.tcloudbase.com'

function venueId() {
  return localStorage.getItem('venue_id') || ''
}

function formatDate(d) {
  const y = d.getFullYear()
  const m = String(d.getMonth() + 1).padStart(2, '0')
  const day = String(d.getDate()).padStart(2, '0')
  return `${y}-${m}-${day}`
}

const today = formatDate(new Date())

const statCards = computed(() => [
  { key: 'today', label: '今日预约', value: stats.value.todayBookings, color: '#1a5c3a' },
  { key: 'card', label: '今日用卡', value: stats.value.todayCardBookings, color: '#e6a23c' },
  { key: 'week', label: '本周预约', value: stats.value.weekBookings, color: '#409eff' },
  { key: 'court', label: '场地数', value: stats.value.courtCount, color: '#67c23a' },
  { key: 'coach', label: '教练数', value: stats.value.coachCount, color: '#909399' },
  { key: 'user', label: '会员数', value: stats.value.userCount, color: '#f56c6c' },
  { key: 'cards', label: '有效持卡', value: stats.value.activeCardCount, color: '#9b59b6' }
])

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
  venueName.value = localStorage.getItem('venue_name') || ''
  if (!venueId()) {
    ElMessage.warning('请先在顶部选择场馆')
    return
  }
  loading.value = true
  try {
    const result = await post('/adminGetDashboard', {
      venueId: venueId(),
      date: today
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '加载失败')
      return
    }
    stats.value = {
      todayBookings: result.todayBookings || 0,
      todayCardBookings: result.todayCardBookings || 0,
      weekBookings: result.weekBookings || 0,
      courtCount: result.courtCount || 0,
      coachCount: result.coachCount || 0,
      userCount: result.userCount || 0,
      activeCardCount: result.activeCardCount || 0
    }
    todayBookings.value = result.todayList || []
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    loading.value = false
  }
}

onMounted(() => {
  loadData()
  window.addEventListener('venue-changed', loadData)
})
onUnmounted(() => {
  window.removeEventListener('venue-changed', loadData)
})
</script>

<style scoped>
.page-header {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  margin-bottom: 20px;
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
.stat-row {
  margin-bottom: 24px;
}
.stat-card {
  background: #fff;
  border-radius: 10px;
  padding: 16px 18px;
  border-top: 3px solid #1a5c3a;
  box-shadow: 0 1px 4px rgba(0, 0, 0, 0.06);
  margin-bottom: 12px;
}
.stat-label {
  font-size: 13px;
  color: #888;
  margin-bottom: 8px;
}
.stat-value {
  font-size: 28px;
  font-weight: 700;
  color: #222;
}
.section {
  background: #fff;
  border-radius: 12px;
  padding: 16px 20px;
  border: 1px solid #eee;
}
.section-title {
  font-size: 16px;
  font-weight: 600;
  margin-bottom: 12px;
  color: #1a5c3a;
}
.muted {
  color: #aaa;
}
.empty {
  text-align: center;
  color: #999;
  padding: 24px;
}
</style>
