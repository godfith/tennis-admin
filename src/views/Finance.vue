<template>
  <div class="page">
    <div class="page-header">
      <div>
        <h2>财务报表</h2>
        <p class="sub">
          营业额只计当天<strong>实发</strong>（发卡人不是「数据迁入」）+ 订场实收 − 退卡。
          旧系统迁入卡单独列出，不进营业额。实际收入 = 未取消到场：次卡按卡价÷次数，时间卡按卡价÷有效天数；迁入卡核销金额记 0，卡名仍显示。
        </p>
      </div>
      <el-button type="success" plain :disabled="!daily.length" @click="exportCsv">导出日报</el-button>
    </div>

    <el-form :inline="true" class="filters" @submit.prevent>
      <el-form-item label="开始">
        <el-date-picker v-model="startDate" type="date" value-format="YYYY-MM-DD" style="width: 150px" />
      </el-form-item>
      <el-form-item label="结束">
        <el-date-picker v-model="endDate" type="date" value-format="YYYY-MM-DD" style="width: 150px" />
      </el-form-item>
      <el-form-item label="快捷">
        <el-button-group>
          <el-button size="small" @click="setRange('today')">今天</el-button>
          <el-button size="small" @click="setRange('yesterday')">昨天</el-button>
          <el-button size="small" @click="setRange('week')">本周</el-button>
          <el-button size="small" @click="setRange('month')">本月</el-button>
          <el-button size="small" @click="setRange('last7')">近7天</el-button>
        </el-button-group>
      </el-form-item>
      <el-form-item>
        <el-checkbox v-model="showImported">列表显示迁入卡</el-checkbox>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" :loading="loading" @click="loadData">查询</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="16" class="stat-row">
      <el-col :xs="24" :sm="12" :md="6">
        <div class="stat-card t">
          <div class="stat-label">营业额（实发+订场）</div>
          <div class="stat-value">¥{{ fmt(turnover.total) }}</div>
          <div class="stat-split">发卡 ¥{{ fmt(turnover.card) }} · 订场 ¥{{ fmt(turnover.court) }}</div>
        </div>
      </el-col>
      <el-col :xs="24" :sm="12" :md="6">
        <div class="stat-card i">
          <div class="stat-label">实际收入（核销）</div>
          <div class="stat-value">¥{{ fmt(income.total) }}</div>
          <div class="stat-split">卡核销 ¥{{ fmt(income.card) }} · 订场 ¥{{ fmt(income.court) }}</div>
        </div>
      </el-col>
      <el-col :xs="24" :sm="12" :md="6">
        <div class="stat-card d">
          <div class="stat-label">未核销（营业额-核销）</div>
          <div class="stat-value">¥{{ fmt(turnover.total - income.total) }}</div>
          <div class="stat-split">已售未用完</div>
        </div>
      </el-col>
      <el-col :xs="24" :sm="12" :md="6">
        <div class="stat-card w">
          <div class="stat-label">迁入卡（不计入营业额）</div>
          <div class="stat-value">¥{{ fmt(imported.amount) }}</div>
          <div class="stat-split">{{ imported.count }} 张 · 发卡人=数据迁入</div>
        </div>
      </el-col>
    </el-row>

    <div class="card">
      <div class="card-title">按日汇总</div>
      <el-table :data="daily" stripe border size="small" v-loading="loading">
        <el-table-column prop="date" label="日期" width="130" />
        <el-table-column label="营业额" align="right">
          <template #default="{ row }">¥{{ fmt(row.turnover) }}</template>
        </el-table-column>
        <el-table-column label="实际收入" align="right">
          <template #default="{ row }">¥{{ fmt(row.income) }}</template>
        </el-table-column>
        <el-table-column label="迁入金额" align="right">
          <template #default="{ row }">¥{{ fmt(row.issueImport) }}</template>
        </el-table-column>
      </el-table>
    </div>

    <div class="card">
      <div class="card-title">发卡 / 退卡明细</div>
      <div class="col-filters">
        <el-date-picker v-model="issueQ.timeText" type="date" value-format="YYYY-MM-DD" clearable size="small" placeholder="选择日期" style="width: 140px" />
        <el-select v-model="issueQ.cardName" filterable allow-create default-first-option clearable size="small" placeholder="卡券名称" style="width: 180px">
          <el-option v-for="v in issueOpts.cardName" :key="'ic'+v" :label="v" :value="v" />
        </el-select>
        <el-select v-model="issueQ.userName" filterable allow-create default-first-option clearable size="small" placeholder="会员账号" style="width: 140px">
          <el-option v-for="v in issueOpts.userName" :key="'iu'+v" :label="v" :value="v" />
        </el-select>
        <el-select v-model="issueQ.phone" filterable allow-create default-first-option clearable size="small" placeholder="手机号" style="width: 140px">
          <el-option v-for="v in issueOpts.phone" :key="'ip'+v" :label="v" :value="v" />
        </el-select>
        <el-select v-model="issueQ.operatorName" filterable allow-create default-first-option clearable size="small" placeholder="操作人账号" style="width: 140px">
          <el-option v-for="v in issueOpts.operatorName" :key="'io'+v" :label="v" :value="v" />
        </el-select>
        <el-select v-model="issueQ.amount" filterable allow-create default-first-option clearable size="small" placeholder="金额" style="width: 110px">
          <el-option v-for="v in issueOpts.amount" :key="'ia'+v" :label="v" :value="v" />
        </el-select>
        <el-select v-model="issueQ.type" clearable size="small" placeholder="类型" style="width: 120px">
          <el-option label="发卡" value="issue_card" />
          <el-option label="退卡" value="refund_card" />
          <el-option label="迁入" value="import_card" />
        </el-select>
      </div>
      <el-table :data="issueFiltered" stripe border size="small" max-height="420">
        <el-table-column prop="timeText" label="操作时间" width="170" sortable />
        <el-table-column prop="typeLabel" label="类型" width="80" />
        <el-table-column prop="cardName" label="卡券名称" min-width="200" show-overflow-tooltip />
        <el-table-column prop="userName" label="会员账号" width="130" show-overflow-tooltip />
        <el-table-column label="手机号" width="130">
          <template #default="{ row }">
            <el-button v-if="row.phone" link type="primary" @click="openUser(row.phone)">{{ row.phone }}</el-button>
            <span v-else>-</span>
          </template>
        </el-table-column>
        <el-table-column prop="operatorName" label="操作人账号" width="120" />
        <el-table-column label="金额" width="100" align="right" sortable prop="amount">
          <template #default="{ row }">¥{{ fmt(row.amount) }}</template>
        </el-table-column>
        <el-table-column prop="venueName" label="场馆" min-width="140" show-overflow-tooltip />
      </el-table>
      <div class="table-foot">共 {{ issueFiltered.length }} 条</div>
    </div>

    <div class="card">
      <div class="card-title">消费明细（实际收入）</div>
      <div class="col-filters">
        <el-select v-model="useQ.timeText" filterable allow-create default-first-option clearable size="small" placeholder="日期" style="width: 150px">
          <el-option v-for="v in useOpts.timeText" :key="'ut'+v" :label="v" :value="v" />
        </el-select>
        <el-select v-model="useQ.cardName" filterable allow-create default-first-option clearable size="small" placeholder="卡券名称" style="width: 180px">
          <el-option v-for="v in useOpts.cardName" :key="'uc'+v" :label="v" :value="v" />
        </el-select>
        <el-select v-model="useQ.userName" filterable allow-create default-first-option clearable size="small" placeholder="会员账号" style="width: 140px">
          <el-option v-for="v in useOpts.userName" :key="'uu'+v" :label="v" :value="v" />
        </el-select>
        <el-select v-model="useQ.phone" filterable allow-create default-first-option clearable size="small" placeholder="手机号" style="width: 140px">
          <el-option v-for="v in useOpts.phone" :key="'up'+v" :label="v" :value="v" />
        </el-select>
        <el-select v-model="useQ.operatorName" filterable allow-create default-first-option clearable size="small" placeholder="操作人账号" style="width: 140px">
          <el-option v-for="v in useOpts.operatorName" :key="'uo'+v" :label="v" :value="v" />
        </el-select>
        <el-select v-model="useQ.amount" filterable allow-create default-first-option clearable size="small" placeholder="金额" style="width: 110px">
          <el-option v-for="v in useOpts.amount" :key="'ua'+v" :label="v" :value="v" />
        </el-select>
        <el-select v-model="useQ.type" clearable size="small" placeholder="类型" style="width: 130px">
          <el-option label="用卡" value="card_use" />
          <el-option label="订场消费" value="court" />
        </el-select>
      </div>
      <el-table :data="consumeFiltered" stripe border size="small" max-height="420">
        <el-table-column prop="timeText" label="操作时间" width="170" sortable />
        <el-table-column prop="typeLabel" label="类型" width="100" />
        <el-table-column prop="cardName" label="卡券名称" min-width="180" show-overflow-tooltip />
        <el-table-column prop="name" label="场地/时段" min-width="150" show-overflow-tooltip />
        <el-table-column prop="userName" label="会员账号" width="130" show-overflow-tooltip />
        <el-table-column label="手机号" width="130">
          <template #default="{ row }">
            <el-button v-if="row.phone" link type="primary" @click="openUser(row.phone)">{{ row.phone }}</el-button>
            <span v-else>-</span>
          </template>
        </el-table-column>
        <el-table-column prop="operatorName" label="操作人账号" width="120" />
        <el-table-column label="金额" width="100" align="right" sortable prop="amount">
          <template #default="{ row }">¥{{ fmt(row.amount) }}</template>
        </el-table-column>
        <el-table-column prop="venueName" label="场馆" min-width="140" show-overflow-tooltip />
      </el-table>
      <div class="table-foot">共 {{ consumeFiltered.length }} 条</div>
    </div>
  </div>
</template>

<script setup>
import { ref, computed, onMounted, onUnmounted } from 'vue'
import { useRouter } from 'vue-router'
import { ElMessage } from 'element-plus'

const router = useRouter()

const loading = ref(false)
const startDate = ref('')
const endDate = ref('')
const showImported = ref(false)
const turnover = ref({ card: 0, court: 0, total: 0 })
const income = ref({ card: 0, court: 0, total: 0 })
const imported = ref({ count: 0, amount: 0 })
const daily = ref([])
const issueList = ref([])
const consumeList = ref([])

const issueQ = ref({ timeText: '', cardName: '', userName: '', phone: '', operatorName: '', amount: '', type: '' })
const useQ = ref({ timeText: '', cardName: '', userName: '', phone: '', operatorName: '', amount: '', type: '' })

const base = import.meta.env.DEV
  ? '/api'
  : 'https://cloud1-d3g0pb1qk028e3585-d862bc2-1312769671.ap-shanghai.app.tcloudbase.com'

function fmt(n) {
  return (Math.round((Number(n) || 0) * 100) / 100).toFixed(2)
}
function pad(n) {
  return n < 10 ? '0' + n : '' + n
}
function ymd(d) {
  return d.getFullYear() + '-' + pad(d.getMonth() + 1) + '-' + pad(d.getDate())
}
function startOfWeek(d) {
  const x = new Date(d)
  const day = x.getDay()
  x.setDate(x.getDate() - (day === 0 ? 6 : day - 1))
  return x
}
function hit(row, q) {
  const keys = ['timeText', 'cardName', 'userName', 'phone', 'operatorName', 'amount', 'type']
  return keys.every((k) => {
    const want = String(q[k] || '').trim().toLowerCase()
    if (!want) return true
    const val = String(row[k] == null ? '' : row[k]).toLowerCase()
    return val.indexOf(want) >= 0
  })
}

const issueFiltered = computed(() =>
  issueList.value.filter((r) => (showImported.value || !r.imported || r.type === 'refund_card') && hit(r, issueQ.value))
)
const consumeFiltered = computed(() =>
  consumeList.value.filter((r) => (showImported.value || !r.imported) && hit(r, useQ.value))
)

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
    startDate.value = ymd(startOfWeek(now))
    endDate.value = ymd(now)
  } else if (type === 'month') {
    startDate.value = ymd(new Date(now.getFullYear(), now.getMonth(), 1))
    endDate.value = ymd(now)
  } else {
    const s = new Date(now)
    s.setDate(s.getDate() - 6)
    startDate.value = ymd(s)
    endDate.value = ymd(now)
  }
  loadData()
}
function uniq(rows, key) {
  const set = new Set()
  ;(rows || []).forEach((row) => {
    const raw = row[key]
    if (raw == null || raw === '') return
    const s = String(raw)
    set.add(s)
    if (key === 'timeText') {
      const day = s.slice(0, 10)
      if (/^\d{4}-\d{2}-\d{2}$/.test(day)) set.add(day)
    }
  })
  return Array.from(set).sort()
}
const issueOpts = computed(() => ({
  timeText: uniq(issueList.value, 'timeText'),
  cardName: uniq(issueList.value, 'cardName'),
  userName: uniq(issueList.value, 'userName'),
  phone: uniq(issueList.value, 'phone'),
  operatorName: uniq(issueList.value, 'operatorName'),
  amount: uniq(issueList.value, 'amount')
}))
const useOpts = computed(() => ({
  timeText: uniq(consumeList.value, 'timeText'),
  cardName: uniq(consumeList.value, 'cardName'),
  userName: uniq(consumeList.value, 'userName'),
  phone: uniq(consumeList.value, 'phone'),
  operatorName: uniq(consumeList.value, 'operatorName'),
  amount: uniq(consumeList.value, 'amount')
}))
function openUser(phone) {
  if (!phone) return
  router.push({ path: '/users', query: { q: phone, open: '1', from: 'finance' } })
}

async function post(path, body) {
  const res = await fetch(base + path, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(body)
  })
  const data = await res.json()
  return data.body ? (typeof data.body === 'string' ? JSON.parse(data.body) : data.body) : data
}

async function loadData() {
  if (!startDate.value || !endDate.value) {
    ElMessage.warning('请选择日期')
    return
  }
  loading.value = true
  try {
    const result = await post('/adminGetFinance', {
      venueId: localStorage.getItem('venue_id') || '',
      startDate: startDate.value,
      endDate: endDate.value
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '加载失败')
      return
    }
    turnover.value = result.turnover || { card: 0, court: 0, total: 0 }
    income.value = result.income || { card: 0, court: 0, total: 0 }
    imported.value = result.imported || { count: 0, amount: 0 }
    daily.value = result.daily || []
    issueList.value = result.issueList || []
    consumeList.value = result.consumeList || []
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    loading.value = false
  }
}

function exportCsv() {
  const lines = [['日期', '营业额', '实际收入', '迁入金额'].join(',')]
  daily.value.forEach((r) => {
    lines.push([r.date, fmt(r.turnover), fmt(r.income), fmt(r.issueImport)].join(','))
  })
  const blob = new Blob(['\uFEFF' + lines.join('\r\n')], { type: 'text/csv;charset=utf-8;' })
  const url = URL.createObjectURL(blob)
  const a = document.createElement('a')
  a.href = url
  a.download = `财报_${startDate.value}_${endDate.value}.csv`
  a.click()
  URL.revokeObjectURL(url)
}

onMounted(() => {
  setRange('month')
  window.addEventListener('venue-changed', loadData)
})
onUnmounted(() => window.removeEventListener('venue-changed', loadData))
</script>

<style scoped>
.page-header {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  margin-bottom: 12px;
  gap: 12px;
}
h2 { margin: 0; font-size: 20px; color: #1a5c3a; }
.sub { margin: 6px 0 0; font-size: 13px; color: #909399; max-width: 820px; line-height: 1.5; }
.filters {
  background: #fff;
  padding: 10px 14px 0;
  border-radius: 8px;
  margin-bottom: 14px;
}
.stat-row { margin-bottom: 8px; }
.stat-card {
  background: #fff;
  border-radius: 10px;
  padding: 16px 18px;
  margin-bottom: 12px;
  border-top: 3px solid #1a5c3a;
  box-shadow: 0 1px 4px rgba(0,0,0,.04);
}
.stat-card.i { border-top-color: #e6a23c; }
.stat-card.d { border-top-color: #909399; }
.stat-card.w { border-top-color: #f56c6c; }
.stat-label { font-size: 13px; color: #888; }
.stat-value { font-size: 26px; font-weight: 700; color: #222; margin: 6px 0 4px; }
.stat-split { font-size: 12px; color: #909399; }
.card {
  background: #fff;
  border-radius: 10px;
  padding: 14px 16px 18px;
  margin-bottom: 14px;
}
.card-title { font-weight: 600; margin-bottom: 10px; color: #1a5c3a; }
.col-filters {
  display: flex;
  flex-wrap: wrap;
  gap: 8px;
  margin-bottom: 10px;
}
.col-filters .el-input { width: 140px; }
.table-foot { color: #909399; font-size: 12px; margin-top: 8px; }
</style>
