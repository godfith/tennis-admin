<template>
  <div class="page">
    <div class="page-header">
      <div>
        <h2>业务动态</h2>
        <p class="tip">订场、取消、发卡、体验、团课等 · 当前 {{ filtered.length }} / {{ list.length }} 条</p>
      </div>
      <div class="header-actions">
        <el-button type="success" plain :disabled="!filtered.length" @click="exportCsv">导出当前列表</el-button>
        <el-button :loading="loading" type="primary" plain @click="fetchAll">刷新</el-button>
      </div>
    </div>
    <div class="filters">
      <el-date-picker v-model="startDate" type="date" value-format="YYYY-MM-DD" placeholder="开始日期" style="width: 140px" />
      <el-date-picker v-model="endDate" type="date" value-format="YYYY-MM-DD" placeholder="结束日期" style="width: 140px" />
      <el-select v-model="filterType" clearable placeholder="全部类型" style="width: 150px">
        <el-option v-for="opt in typeOptions" :key="opt.value" :label="opt.label" :value="opt.value" />
      </el-select>
      <el-button type="primary" :loading="loading" @click="fetchAll">查询</el-button>
      <el-button @click="resetAll">重置</el-button>
    </div>
    <div class="col-filters">
      <el-input v-model="col.timeText" clearable size="small" placeholder="筛操作时间" />
      <el-input v-model="col.operatorName" clearable size="small" placeholder="筛操作人账号" />
      <el-input v-model="col.userName" clearable size="small" placeholder="筛用户账号" />
      <el-input v-model="col.phone" clearable size="small" placeholder="筛电话号码" />
      <el-input v-model="col.cardName" clearable size="small" placeholder="筛卡券名称" />
      <el-input v-model="col.amount" clearable size="small" placeholder="筛金额" />
      <el-input v-model="col.detail" clearable size="small" placeholder="筛详情" />
    </div>
    <el-table :data="filtered" stripe border v-loading="loading" max-height="640">
      <el-table-column prop="timeText" label="操作时间" width="170" sortable />
      <el-table-column label="类型" width="110">
        <template #default="{ row }">
          <el-tag :type="typeTag(row.type)" size="small">{{ row.typeLabel || typeLabel(row.type) }}</el-tag>
        </template>
      </el-table-column>
      <el-table-column prop="operatorName" label="操作人账号" width="130" show-overflow-tooltip />
      <el-table-column prop="userName" label="用户账号" min-width="130" show-overflow-tooltip />
      <el-table-column prop="phone" label="电话号码" width="120" />
      <el-table-column prop="cardName" label="卡券名称" min-width="180" show-overflow-tooltip />
      <el-table-column label="金额" width="100" align="right" sortable prop="amount">
        <template #default="{ row }">
          <span v-if="row.amount != null && row.amount !== ''">¥{{ fmt(row.amount) }}</span>
          <span v-else class="muted">-</span>
        </template>
      </el-table-column>
      <el-table-column prop="detail" label="详情" min-width="220" show-overflow-tooltip />
      <el-table-column prop="venueName" label="场馆" width="160" show-overflow-tooltip />
    </el-table>
    <div v-if="!loading && !filtered.length" class="empty">暂无符合条件的数据</div>
  </div>
</template>
<script setup>
import { ref, computed, onMounted } from 'vue'
import { ElMessage } from 'element-plus'
const loading = ref(false)
const list = ref([])
const filterType = ref('')
const startDate = ref('')
const endDate = ref('')
const col = ref({ timeText: '', operatorName: '', userName: '', phone: '', cardName: '', amount: '', detail: '' })
const base = import.meta.env.DEV ? '/api' : 'https://cloud1-d3g0pb1qk028e3585-d862bc2-1312769671.ap-shanghai.app.tcloudbase.com'
const typeOptions = [
  { label: '用户注册', value: 'register' }, { label: '订场', value: 'booking_add' }, { label: '取消预约', value: 'booking_cancel' },
  { label: '团课报名', value: 'group_enroll' }, { label: '发卡', value: 'issue_card' }, { label: '退卡', value: 'refund_card' },
  { label: '延期', value: 'extend_card' }, { label: '延期', value: 'card_extend' }, { label: '删卡', value: 'card_delete' },
  { label: '改开放时间', value: 'hours_save' }, { label: '体验发放', value: 'gift_card' }, { label: '体验加次', value: 'gift_add' }, { label: '报体验课', value: 'trial_class' }
]
function typeLabel(t) { const hit = typeOptions.find((x) => x.value === t); return hit ? hit.label : (t || '-') }
function typeTag(t) {
  return { register: 'success', booking_add: 'primary', booking_cancel: 'info', group_enroll: 'danger', issue_card: 'warning', refund_card: 'danger', extend_card: '', gift_card: 'success', gift_add: 'success', trial_class: 'success' }[t] || 'info'
}
function fmt(n) { return (Math.round((Number(n) || 0) * 100) / 100).toFixed(2) }
const filtered = computed(() => list.value.filter((row) => {
  const q = col.value
  return ['timeText', 'operatorName', 'userName', 'phone', 'cardName', 'amount', 'detail'].every((k) => {
    const want = String(q[k] || '').trim().toLowerCase()
    if (!want) return true
    return String(row[k] == null ? '' : row[k]).toLowerCase().indexOf(want) >= 0
  })
}))
async function post(path, body = {}) {
  const res = await fetch(base + path, { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify(body) })
  const data = await res.json()
  return data.body ? (typeof data.body === 'string' ? JSON.parse(data.body) : data.body) : data
}
async function fetchAll() {
  loading.value = true
  try {
    const result = await post('/adminGetActivityLogs', {
      venueId: localStorage.getItem('venue_id') || '', type: filterType.value,
      startDate: startDate.value, endDate: endDate.value,
      operator: col.value.operatorName, userName: col.value.userName, phone: col.value.phone, cardName: col.value.cardName, limit: 500
    })
    if (!result.ok) { ElMessage.error(result.msg || '加载失败'); list.value = []; return }
    list.value = result.list || []
  } catch (e) { ElMessage.error(e.message || '请部署 adminGetActivityLogs'); list.value = [] }
  finally { loading.value = false }
}
function resetAll() {
  filterType.value = ''; startDate.value = ''; endDate.value = ''
  col.value = { timeText: '', operatorName: '', userName: '', phone: '', cardName: '', amount: '', detail: '' }
  fetchAll()
}
function csvCell(v) { const s = v == null ? '' : String(v); return /[",\r\n]/.test(s) ? '"' + s.replace(/"/g, '""') + '"' : s }
function exportCsv() {
  if (!filtered.value.length) { ElMessage.warning('没有可导出的数据'); return }
  const header = ['操作时间', '类型', '操作人账号', '用户账号', '电话号码', '卡券名称', '金额', '详情', '场馆']
  const lines = [header.map(csvCell).join(',')]
  filtered.value.forEach((r) => {
    lines.push([r.timeText || '', r.typeLabel || typeLabel(r.type), r.operatorName || '', r.userName || '', r.phone || '', r.cardName || '', r.amount == null || r.amount === '' ? '' : fmt(r.amount), r.detail || '', r.venueName || ''].map(csvCell).join(','))
  })
  const blob = new Blob(['\uFEFF' + lines.join('\r\n')], { type: 'text/csv;charset=utf-8;' })
  const url = URL.createObjectURL(blob)
  const a = document.createElement('a')
  a.href = url
  a.download = `业务动态_${startDate.value && endDate.value ? startDate.value + '_' + endDate.value : new Date().toISOString().slice(0, 10)}.csv`
  a.click()
  URL.revokeObjectURL(url)
}
onMounted(fetchAll)
</script>
<style scoped>
.page-header { display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 16px; gap: 12px; }
.header-actions { display: flex; gap: 8px; flex-shrink: 0; }
h2 { margin: 0 0 4px; font-size: 20px; color: #1a5c3a; }
.tip { margin: 0; color: #888; font-size: 13px; }
.filters, .col-filters { display: flex; gap: 8px; margin-bottom: 12px; flex-wrap: wrap; }
.col-filters .el-input { width: 150px; }
.empty { text-align: center; color: #999; padding: 40px; }
.muted { color: #c0c4cc; }
</style>
