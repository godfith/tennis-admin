<template>
  <div class="page">
    <div class="page-header">
      <div>
        <h2>业务动态</h2>
        <p class="tip">订场、取消、发卡、体验、团课等 · 当前筛选 {{ filtered.length }} 条 / 共 {{ list.length }} 条 · 总金额 ¥{{ fmt(totalAmount) }}</p>
      </div>
      <div class="header-actions">
        <el-button type="success" plain :disabled="!filtered.length" @click="exportCsv">导出当前列表</el-button>
        <el-button :loading="loading" type="primary" plain @click="fetchAll">刷新</el-button>
      </div>
    </div>

    <div class="filters">
      <el-date-picker v-model="startDate" type="date" value-format="YYYY-MM-DD" placeholder="开始日期" style="width: 140px" />
      <el-date-picker v-model="endDate" type="date" value-format="YYYY-MM-DD" placeholder="结束日期" style="width: 140px" />
      <el-button-group>
        <el-button size="small" @click="setRange('today')">今天</el-button>
        <el-button size="small" @click="setRange('yesterday')">昨天</el-button>
        <el-button size="small" @click="setRange('week')">本周</el-button>
        <el-button size="small" @click="setRange('month')">本月</el-button>
      </el-button-group>
      <el-select v-model="filterType" clearable placeholder="全部类型" style="width: 150px">
        <el-option v-for="opt in typeOptions" :key="opt.value" :label="opt.label" :value="opt.value" />
      </el-select>
      <el-button type="primary" :loading="loading" @click="fetchAll">查询</el-button>
      <el-button @click="resetAll">重置</el-button>
    </div>

    <div class="col-filters">
      <el-date-picker v-model="col.timeText" type="date" value-format="YYYY-MM-DD" clearable size="small" placeholder="选择日期" style="width: 140px" />
      <el-select v-model="col.operatorName" filterable allow-create default-first-option clearable size="small" placeholder="操作人账号" style="width: 160px">
        <el-option v-for="v in opts.operatorName" :key="'o'+v" :label="v" :value="v" />
      </el-select>
      <el-select v-model="col.userName" filterable allow-create default-first-option clearable size="small" placeholder="用户账号" style="width: 160px">
        <el-option v-for="v in opts.userName" :key="'u'+v" :label="v" :value="v" />
      </el-select>
      <el-select v-model="col.phone" filterable allow-create default-first-option clearable size="small" placeholder="电话号码" style="width: 150px">
        <el-option v-for="v in opts.phone" :key="'p'+v" :label="v" :value="v" />
      </el-select>
      <el-select v-model="col.cardName" filterable allow-create default-first-option clearable size="small" placeholder="卡券名称" style="width: 200px">
        <el-option v-for="v in opts.cardName" :key="'c'+v" :label="v" :value="v" />
      </el-select>
      <el-select v-model="col.amount" filterable allow-create default-first-option clearable size="small" placeholder="金额" style="width: 120px">
        <el-option v-for="v in opts.amount" :key="'a'+v" :label="v" :value="v" />
      </el-select>
      <el-select v-model="col.detail" filterable allow-create default-first-option clearable size="small" placeholder="详情" style="width: 200px">
        <el-option v-for="v in opts.detail" :key="'d'+v" :label="v" :value="v" />
      </el-select>
    </div>

    <div class="sum-bar">
      <span>总数量 <b>{{ filtered.length }}</b> 条</span>
      <span>有金额 <b>{{ amountCount }}</b> 条</span>
      <span>总金额 <b>¥{{ fmt(totalAmount) }}</b></span>
    </div>

    <el-table :data="filtered" stripe border v-loading="loading" max-height="640" show-summary :summary-method="tableSummary">
      <el-table-column prop="timeText" label="操作时间" width="170" sortable />
      <el-table-column label="类型" width="110">
        <template #default="{ row }">
          <el-tag :type="typeTag(row.type)" size="small">{{ row.typeLabel || typeLabel(row.type) }}</el-tag>
        </template>
      </el-table-column>
      <el-table-column prop="operatorName" label="操作人账号" width="130" show-overflow-tooltip />
      <el-table-column prop="userName" label="用户账号" min-width="130" show-overflow-tooltip />
      <el-table-column label="电话号码" width="130">
        <template #default="{ row }">
          <el-button v-if="row.phone" link type="primary" @click="openUser(row.phone)">{{ row.phone }}</el-button>
          <span v-else class="muted">-</span>
        </template>
      </el-table-column>
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
import { useRouter } from 'vue-router'
import { ElMessage } from 'element-plus'

const router = useRouter()

const loading = ref(false)
const list = ref([])
const filterType = ref('')
const startDate = ref('')
const endDate = ref('')
const col = ref({
  timeText: '',
  operatorName: '',
  userName: '',
  phone: '',
  cardName: '',
  amount: '',
  detail: ''
})

const base = import.meta.env.DEV
  ? '/api'
  : 'https://cloud1-d3g0pb1qk028e3585-d862bc2-1312769671.ap-shanghai.app.tcloudbase.com'

const typeOptions = [
  { label: '用户注册', value: 'register' },
  { label: '订场', value: 'booking_add' },
  { label: '取消预约', value: 'booking_cancel' },
  { label: '团课报名', value: 'group_enroll' },
  { label: '发卡', value: 'issue_card' },
  { label: '迁入', value: 'import_card' },
  { label: '退卡', value: 'refund_card' },
  { label: '延期', value: 'extend_card' },
  { label: '延期', value: 'card_extend' },
  { label: '删卡', value: 'card_delete' },
  { label: '改开放时间', value: 'hours_save' },
  { label: '体验发放', value: 'gift_card' },
  { label: '体验加次', value: 'gift_add' },
  { label: '报体验课', value: 'trial_class' }
]

function typeLabel(t) {
  const hit = typeOptions.find((x) => x.value === t)
  return hit ? hit.label : (t || '-')
}
function typeTag(t) {
  return {
    register: 'success',
    booking_add: 'primary',
    booking_cancel: 'info',
    group_enroll: 'danger',
    issue_card: 'warning',
    refund_card: 'danger',
    extend_card: '',
    gift_card: 'success',
    gift_add: 'success',
    trial_class: 'success'
  }[t] || 'info'
}
function fmt(n) {
  return (Math.round((Number(n) || 0) * 100) / 100).toFixed(2)
}
const totalAmount = computed(() =>
  filtered.value.reduce((s, r) => s + (r.amount == null || r.amount === '' ? 0 : Number(r.amount) || 0), 0)
)
const amountCount = computed(() =>
  filtered.value.filter((r) => r.amount != null && r.amount !== '').length
)
function tableSummary({ columns }) {
  return columns.map((col, i) => {
    if (i === 0) return '合计'
    if (col.property === 'userName') return filtered.value.length + ' 条'
    if (col.property === 'amount' || col.label === '金额') return '¥' + fmt(totalAmount.value)
    return ''
  })
}

function uniqField(key) {
  const set = new Set()
  list.value.forEach((row) => {
    const raw = row[key]
    if (raw == null || raw === '') return
    set.add(String(raw))
    if (key === 'timeText') {
      const day = String(raw).slice(0, 10)
      if (/^\d{4}-\d{2}-\d{2}$/.test(day)) set.add(day)
    }
  })
  return Array.from(set).sort()
}
const opts = computed(() => ({
  timeText: uniqField('timeText'),
  operatorName: uniqField('operatorName'),
  userName: uniqField('userName'),
  phone: uniqField('phone'),
  cardName: uniqField('cardName'),
  amount: uniqField('amount'),
  detail: uniqField('detail')
}))

const filtered = computed(() => {
  return list.value.filter((row) => {
    const q = col.value
    const keys = ['timeText', 'operatorName', 'userName', 'phone', 'cardName', 'amount', 'detail']
    return keys.every((k) => {
      const want = String(q[k] || '').trim().toLowerCase()
      if (!want) return true
      const val = String(row[k] == null ? '' : row[k]).toLowerCase()
      return val.indexOf(want) >= 0
    })
  })
})

async function post(path, body = {}) {
  const res = await fetch(base + path, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(body)
  })
  const data = await res.json()
  return data.body ? (typeof data.body === 'string' ? JSON.parse(data.body) : data.body) : data
}

async function fetchAll() {
  loading.value = true
  try {
    const result = await post('/adminGetActivityLogs', {
      venueId: localStorage.getItem('venue_id') || '',
      type: filterType.value,
      startDate: startDate.value,
      endDate: endDate.value,
      operator: col.value.operatorName,
      userName: col.value.userName,
      phone: col.value.phone,
      cardName: col.value.cardName,
      limit: 500
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '加载失败')
      list.value = []
      return
    }
    list.value = result.list || []
  } catch (e) {
    ElMessage.error(e.message || '请部署 adminGetActivityLogs')
    list.value = []
  } finally {
    loading.value = false
  }
}

function openUser(phone) {
  if (!phone) return
  router.push({ path: '/users', query: { q: phone, open: '1', from: 'activity' } })
}
function ymd(d) {
  const p = (n) => (n < 10 ? '0' + n : '' + n)
  return d.getFullYear() + '-' + p(d.getMonth() + 1) + '-' + p(d.getDate())
}
function setRange(type) {
  const now = new Date()
  if (type === 'today') {
    startDate.value = ymd(now)
    endDate.value = ymd(now)
  } else if (type === 'yesterday') {
    const y = new Date(now)
    y.setDate(y.getDate() - 1)
    startDate.value = ymd(y)
    endDate.value = ymd(y)
  } else if (type === 'week') {
    const x = new Date(now)
    const day = x.getDay()
    x.setDate(x.getDate() - (day === 0 ? 6 : day - 1))
    startDate.value = ymd(x)
    endDate.value = ymd(now)
  } else {
    startDate.value = ymd(new Date(now.getFullYear(), now.getMonth(), 1))
    endDate.value = ymd(now)
  }
  fetchAll()
}
function resetAll() {
  filterType.value = ''
  startDate.value = ''
  endDate.value = ''
  col.value = { timeText: '', operatorName: '', userName: '', phone: '', cardName: '', amount: '', detail: '' }
  fetchAll()
}

function csvCell(v) {
  const s = v == null ? '' : String(v)
  if (/[",\r\n]/.test(s)) return '"' + s.replace(/"/g, '""') + '"'
  return s
}

function exportCsv() {
  if (!filtered.value.length) {
    ElMessage.warning('没有可导出的数据')
    return
  }
  const header = ['操作时间', '类型', '操作人账号', '用户账号', '电话号码', '卡券名称', '金额', '详情', '场馆']
  const lines = [header.map(csvCell).join(',')]
  filtered.value.forEach((r) => {
    lines.push([
      r.timeText || '',
      r.typeLabel || typeLabel(r.type),
      r.operatorName || '',
      r.userName || '',
      r.phone || '',
      r.cardName || '',
      r.amount == null || r.amount === '' ? '' : fmt(r.amount),
      r.detail || '',
      r.venueName || ''
    ].map(csvCell).join(','))
  })
  lines.push(['合计', '', '', '', '', '', fmt(totalAmount.value), filtered.value.length + '条', ''].map(csvCell).join(','))
  const blob = new Blob(['\uFEFF' + lines.join('\r\n')], { type: 'text/csv;charset=utf-8;' })
  const url = URL.createObjectURL(blob)
  const a = document.createElement('a')
  a.href = url
  const day = startDate.value && endDate.value ? startDate.value + '_' + endDate.value : new Date().toISOString().slice(0, 10)
  a.download = `业务动态_${day}.csv`
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
.col-filters :deep(.el-select) { min-width: 120px; }
.empty { text-align: center; color: #999; padding: 40px; }
.muted { color: #c0c4cc; }
.sum-bar {
  display: flex;
  gap: 24px;
  background: #f4faf6;
  border: 1px solid #d9eadf;
  border-radius: 8px;
  padding: 10px 16px;
  margin-bottom: 12px;
  color: #1a5c3a;
  font-size: 14px;
}
.sum-bar b { font-size: 18px; margin-left: 4px; }
</style>
