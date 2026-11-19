<template>
  <div class="page">
    <div class="page-header">
      <div>
        <h2>操作日志</h2>
        <p class="tip">店长和员工在后台替客人办的事：发卡、退卡、改卡、代客订场/取消、体验发放、团课报名、改开放时间等。共 {{ list.length }} 条。不替代「业务动态」的完整流水。</p>
      </div>
      <div class="header-actions">
        <el-button type="success" plain :disabled="!list.length" @click="exportCsv">导出当前列表</el-button>
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
        <el-button size="small" @click="setRange('lastWeek')">上周</el-button>
        <el-button size="small" @click="setRange('month')">本月</el-button>
      </el-button-group>
      <el-select v-if="isSuper" v-model="filterVenueId" clearable filterable placeholder="全部场馆" style="width: 180px">
        <el-option v-for="v in venueList" :key="v._id || v.venueId" :label="v.name" :value="String(v.venueId || v._id)" />
      </el-select>
      <el-select v-model="filterOperator" filterable allow-create default-first-option clearable placeholder="操作人" style="width: 150px">
        <el-option v-for="n in operatorOptions" :key="n" :label="n" :value="n" />
      </el-select>
      <el-select v-model="filterType" clearable placeholder="全部类型" style="width: 150px">
        <el-option v-for="opt in typeOptions" :key="opt.value" :label="opt.label" :value="opt.value" />
      </el-select>
      <el-input v-model="keyword" clearable placeholder="姓名 / 电话 / 详情" style="width: 200px" @keyup.enter="fetchAll" />
      <el-button type="primary" :loading="loading" @click="fetchAll">查询</el-button>
      <el-button @click="resetAll">重置</el-button>
    </div>

    <el-table :data="list" stripe border v-loading="loading" max-height="680">
      <el-table-column prop="timeText" label="时间" width="170" sortable />
      <el-table-column prop="operatorName" label="操作人" width="130" show-overflow-tooltip />
      <el-table-column label="类型" width="130">
        <template #default="{ row }">
          <el-tag :type="typeTag(row.type)" size="small">{{ row.typeLabel || typeLabel(row.type) }}</el-tag>
        </template>
      </el-table-column>
      <el-table-column prop="userName" label="会员" min-width="120" show-overflow-tooltip />
      <el-table-column label="电话" width="180">
        <template #default="{ row }">
          <span v-if="row.phone" class="phone-text">{{ row.phone }}</span>
          <el-button v-if="row.phone" link type="primary" @click="openUser(row.phone)">查看</el-button>
          <span v-else class="muted">-</span>
        </template>
      </el-table-column>
      <el-table-column prop="detail" label="详情" min-width="260" show-overflow-tooltip />
      <el-table-column prop="venueName" label="场馆" width="160" show-overflow-tooltip />
    </el-table>
  </div>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from 'vue'
import { useRouter } from 'vue-router'
import { ElMessage } from 'element-plus'
import { roleKind, allowedVenueIds } from '../utils/auth'

const router = useRouter()
const loading = ref(false)
const list = ref([])
const operatorOptions = ref([])
const venueList = ref([])
const filterVenueId = ref('')
const filterOperator = ref('')
const filterType = ref('')
const keyword = ref('')
const startDate = ref('')
const endDate = ref('')

const isSuper = roleKind() === 'admin'
const base = import.meta.env.DEV
  ? '/api'
  : 'https://cloud1-d3g0pb1qk028e3585-d862bc2-1312769671.ap-shanghai.app.tcloudbase.com'

const typeOptions = [
  { label: '订场', value: 'booking_add' },
  { label: '取消预约', value: 'booking_cancel' },
  { label: '改用卡', value: 'booking_convert' },
  { label: '团课报名', value: 'group_enroll' },
  { label: '发卡', value: 'issue_card' },
  { label: '退卡', value: 'refund_card' },
  { label: '延期', value: 'extend_card' },
  { label: '改卡', value: 'card_edit' },
  { label: '删卡', value: 'card_delete' },
  { label: '体验发放', value: 'gift_card' },
  { label: '体验加次', value: 'gift_add' },
  { label: '报体验课', value: 'trial_class' },
  { label: '调整余额', value: 'wallet_adjust' },
  { label: '改开放时间', value: 'hours_save' },
  { label: '改场地', value: 'court_save' },
  { label: '开关场地', value: 'court_toggle' },
  { label: '删场地', value: 'court_delete' },
  { label: '新增锁场规则', value: 'save_lock_rule' },
  { label: '编辑锁场规则', value: 'update_lock_rule' },
  { label: '删除锁场规则', value: 'delete_lock_rule' }
]

function typeLabel(t) {
  const hit = typeOptions.find((x) => x.value === t)
  return hit ? hit.label : (t || '-')
}
function typeTag(t) {
  return {
    booking_add: 'primary',
    booking_cancel: 'info',
    group_enroll: 'danger',
    issue_card: 'warning',
    refund_card: 'danger',
    card_delete: 'danger',
    gift_card: 'success',
    gift_add: 'success',
    trial_class: 'success',
    court_save: '',
    hours_save: '',
    save_lock_rule: 'warning',
    delete_lock_rule: 'danger'
  }[t] || 'info'
}

async function post(path, body = {}) {
  const res = await fetch(base + path, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(body)
  })
  const data = await res.json()
  return data.body ? (typeof data.body === 'string' ? JSON.parse(data.body) : data.body) : data
}

async function loadVenues() {
  try {
    const result = await post('/adminGetVenues', {})
    let rows = result.list || []
    if (!isSuper) {
      const allow = allowedVenueIds().map(String)
      if (allow.length) rows = rows.filter((v) => allow.includes(String(v.venueId || v._id)))
    }
    venueList.value = rows
  } catch (e) {
    venueList.value = []
  }
}

async function fetchAll() {
  loading.value = true
  try {
    const allow = allowedVenueIds().map(String)
    const body = {
      startDate: startDate.value,
      endDate: endDate.value,
      type: filterType.value,
      operator: filterOperator.value,
      keyword: keyword.value,
      roleKind: roleKind(),
      allowedVenueIds: isSuper ? [] : allow,
      limit: 2000
    }
    if (isSuper) {
      if (filterVenueId.value) body.venueId = filterVenueId.value
    } else if (allow.length === 1) {
      body.venueId = allow[0]
    } else if (allow.length > 1) {
      const current = localStorage.getItem('venue_id') || ''
      body.venueIds = allow
      if (current && allow.includes(String(current))) {
        // 仍查全部有权限的场馆，不按顶部当前馆收窄，避免店长漏看其他分管馆
      }
    }
    const result = await post('/adminGetOpLogs', body)
    if (!result.ok) {
      ElMessage.error(result.msg || '加载失败，请部署 adminGetOpLogs')
      list.value = []
      return
    }
    list.value = result.list || []
    const ops = new Set(result.operators || [])
    list.value.forEach((r) => { if (r.operatorName) ops.add(r.operatorName) })
    operatorOptions.value = Array.from(ops).sort()
  } catch (e) {
    ElMessage.error(e.message || '请部署 adminGetOpLogs')
    list.value = []
  } finally {
    loading.value = false
  }
}

function openUser(phone) {
  if (!phone) return
  router.push({ path: '/users', query: { q: phone, open: '1', from: 'op-logs' } })
}

function ymd(d) {
  const p = (n) => (n < 10 ? '0' + n : '' + n)
  return d.getFullYear() + '-' + p(d.getMonth() + 1) + '-' + p(d.getDate())
}
function startOfWeek(d) {
  const x = new Date(d)
  const day = x.getDay()
  x.setDate(x.getDate() - (day === 0 ? 6 : day - 1))
  return x
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
    const s = startOfWeek(now)
    const e = new Date(s)
    e.setDate(s.getDate() + 6)
    startDate.value = ymd(s)
    endDate.value = ymd(e)
  } else if (type === 'lastWeek') {
    const s = startOfWeek(now)
    s.setDate(s.getDate() - 7)
    const e = new Date(s)
    e.setDate(s.getDate() + 6)
    startDate.value = ymd(s)
    endDate.value = ymd(e)
  } else {
    startDate.value = ymd(new Date(now.getFullYear(), now.getMonth(), 1))
    endDate.value = ymd(new Date(now.getFullYear(), now.getMonth() + 1, 0))
  }
  fetchAll()
}
function resetAll() {
  filterType.value = ''
  filterOperator.value = ''
  filterVenueId.value = ''
  keyword.value = ''
  setRange('today')
}

function csvCell(v) {
  const s = v == null ? '' : String(v)
  if (/[",\r\n]/.test(s)) return '"' + s.replace(/"/g, '""') + '"'
  return s
}
function exportCsv() {
  if (!list.value.length) {
    ElMessage.warning('没有可导出的数据')
    return
  }
  const header = ['时间', '操作人', '类型', '会员', '电话', '详情', '场馆']
  const lines = [header.map(csvCell).join(',')]
  list.value.forEach((r) => {
    lines.push([
      r.timeText || '',
      r.operatorName || '',
      r.typeLabel || typeLabel(r.type),
      r.userName || '',
      r.phone || '',
      r.detail || '',
      r.venueName || ''
    ].map(csvCell).join(','))
  })
  const blob = new Blob(['\uFEFF' + lines.join('\r\n')], { type: 'text/csv;charset=utf-8;' })
  const url = URL.createObjectURL(blob)
  const a = document.createElement('a')
  a.href = url
  const day = startDate.value && endDate.value ? startDate.value + '_' + endDate.value : ymd(new Date())
  a.download = `操作日志_${day}.csv`
  a.click()
  URL.revokeObjectURL(url)
}

function onVenueChanged() {
  fetchAll()
}

onMounted(() => {
  loadVenues()
  setRange('today')
  window.addEventListener('venue-changed', onVenueChanged)
})
onUnmounted(() => window.removeEventListener('venue-changed', onVenueChanged))
</script>

<style scoped>
.page-header { display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 16px; gap: 12px; }
.header-actions { display: flex; gap: 8px; flex-shrink: 0; }
h2 { margin: 0 0 4px; font-size: 20px; color: #1a5c3a; }
.tip { margin: 0; color: #888; font-size: 13px; max-width: 720px; line-height: 1.5; }
.filters { display: flex; gap: 8px; margin-bottom: 12px; flex-wrap: wrap; }
.phone-text { user-select: text; margin-right: 4px; }
.muted { color: #999; }
</style>
