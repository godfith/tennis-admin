<template>
  <div class="page">
    <div class="page-header">
      <div>
        <h2>数据看板</h2>
        <p class="tip">当前场馆：{{ venueName || '全部' }} · {{ today }}</p>
      </div>
      <el-button :loading="loading" @click="loadData">刷新</el-button>
    </div>
    <el-row :gutter="16" class="stat-row">
      <el-col :xs="12" :sm="8" :md="6" v-for="item in statCards" :key="item.key">
        <div class="stat-card" :style="{ borderTopColor: item.color }">
          <div class="stat-label">{{ item.label }}</div>
          <div class="stat-value">{{ item.value }}</div>
        </div>
      </el-col>
    </el-row>
    <el-row :gutter="16">
      <el-col :xs="24" :md="14">
        <div class="section">
          <div class="section-title">今日预约</div>
          <el-table :data="todayBookings" stripe border v-loading="loading" size="small">
            <el-table-column prop="time" label="时段" width="110" />
            <el-table-column prop="court" label="场地" width="90" />
            <el-table-column prop="userName" label="客户" min-width="90" />
            <el-table-column label="方式" min-width="120">
              <template #default="{ row }">
                <span v-if="row.isGroup">团课</span>
                <span v-else-if="row.cardName">{{ row.cardName }}</span>
                <span v-else class="muted">现金/微信</span>
              </template>
            </el-table-column>
            <el-table-column label="金额" width="80"><template #default="{ row }">{{ row.amount ? '¥' + row.amount : '-' }}</template></el-table-column>
            <el-table-column prop="coachName" label="教练" width="80"><template #default="{ row }">{{ row.coachName || '-' }}</template></el-table-column>
          </el-table>
          <div v-if="!loading && todayBookings.length === 0" class="empty">今日暂无预约</div>
        </div>
      </el-col>
      <el-col :xs="24" :md="10">
        <div class="section">
          <div class="section-title">最近动态</div>
          <div v-if="!recentLogs.length" class="empty">暂无动态</div>
          <div v-for="log in recentLogs" :key="log._id" class="log-item">
            <div class="log-top">
              <el-tag size="small">{{ typeLabel(log.type) }}</el-tag>
              <span class="log-time">{{ log.timeText }}</span>
            </div>
            <div class="log-detail">{{ log.userName || log.operatorName }} · {{ log.detail }}</div>
          </div>
        </div>
      </el-col>
    </el-row>
  </div>
</template>
<script setup>
import { ref, computed, onMounted, onUnmounted } from 'vue'
import { ElMessage } from 'element-plus'
const loading = ref(false)
const venueName = ref(localStorage.getItem('venue_name') || '')
const stats = ref({})
const todayBookings = ref([])
const recentLogs = ref([])
const base = import.meta.env.DEV ? '/api' : 'https://cloud1-d3g0pb1qk028e3585-d862bc2-1312769671.ap-shanghai.app.tcloudbase.com'
function venueId() { return localStorage.getItem('venue_id') || '' }
function formatDate(d) { return d.getFullYear() + '-' + String(d.getMonth() + 1).padStart(2, '0') + '-' + String(d.getDate()).padStart(2, '0') }
const today = formatDate(new Date())
function typeLabel(t) {
  return { register: '注册', booking_add: '订场', booking_cancel: '取消', group_enroll: '团课', issue_card: '发卡', refund_card: '退卡', extend_card: '延期', gift_card: '体验', gift_add: '加次', trial_class: '体验课' }[t] || t
}
const statCards = computed(() => [
  { key: 'today', label: '今日预约', value: stats.value.todayBookings || 0, color: '#1a5c3a' },
  { key: 'rev', label: '今日营收', value: '¥' + (stats.value.todayRevenue || 0), color: '#e6a23c' },
  { key: 'mrev', label: '本月营收', value: '¥' + (stats.value.monthRevenue || 0), color: '#f56c6c' },
  { key: 'group', label: '今日团课', value: stats.value.todayGroup || 0, color: '#409eff' },
  { key: 'card', label: '今日用卡', value: stats.value.todayCardBookings || 0, color: '#67c23a' },
  { key: 'week', label: '本周预约', value: stats.value.weekBookings || 0, color: '#909399' },
  { key: 'user', label: '会员数', value: stats.value.userCount || 0, color: '#9b59b6' },
  { key: 'cards', label: '有效持卡', value: stats.value.activeCardCount || 0, color: '#1a5c3a' }
])
async function post(path, body = {}) {
  const res = await fetch(base + path, { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify(body) })
  const data = await res.json()
  return data.body ? (typeof data.body === 'string' ? JSON.parse(data.body) : data.body) : data
}
async function loadData() {
  venueName.value = localStorage.getItem('venue_name') || ''
  loading.value = true
  try {
    const result = await post('/adminGetDashboard', { venueId: venueId(), date: today })
    if (!result.ok) { ElMessage.error(result.msg || '加载失败'); return }
    stats.value = result
    todayBookings.value = result.todayList || []
    recentLogs.value = result.recentLogs || []
  } catch (e) { ElMessage.error(e.message || '请部署 adminGetDashboard') }
  finally { loading.value = false }
}
onMounted(() => { loadData(); window.addEventListener('venue-changed', loadData) })
onUnmounted(() => window.removeEventListener('venue-changed', loadData))
</script>
<style scoped>
.page-header { display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 20px; }
h2 { margin: 0 0 4px; font-size: 20px; color: #1a5c3a; }
.tip { margin: 0; color: #888; font-size: 13px; }
.stat-row { margin-bottom: 16px; }
.stat-card { background: #fff; border-radius: 10px; padding: 16px 18px; border-top: 3px solid #1a5c3a; margin-bottom: 12px; }
.stat-label { font-size: 13px; color: #888; margin-bottom: 8px; }
.stat-value { font-size: 24px; font-weight: 700; color: #222; }
.section { background: #fff; border-radius: 12px; padding: 16px 20px; margin-bottom: 16px; }
.section-title { font-size: 16px; font-weight: 600; margin-bottom: 12px; color: #1a5c3a; }
.muted { color: #aaa; }
.empty { text-align: center; color: #999; padding: 24px; }
.log-item { padding: 8px 0; border-bottom: 1px solid #f2f2f2; }
.log-top { display: flex; justify-content: space-between; align-items: center; }
.log-time { color: #aaa; font-size: 12px; }
.log-detail { margin-top: 4px; font-size: 13px; color: #555; }
</style>
