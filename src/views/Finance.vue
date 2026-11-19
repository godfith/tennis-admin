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
      <div class="header-actions">
        <el-button type="success" plain :disabled="!daily.length" @click="exportCsv">导出日报</el-button>
        <el-button type="success" plain :disabled="!issueList.length && !consumeList.length" @click="exportDetail">导出明细</el-button>
        <el-button type="success" plain :disabled="!startDate || !endDate" @click="openSummaryExport">导出经营汇总</el-button>
      </div>
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
          <el-button size="small" @click="setRange('lastWeek')">上周</el-button>
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

    <el-row :gutter="16" class="stat-row">
      <el-col :xs="12" :sm="8" :md="4">
        <div class="stat-card s"><div class="stat-label">微信支付（小程序）</div><div class="stat-value sm">¥{{ fmt(sources.wechatPay != null ? sources.wechatPay : sources.wechat) }}</div></div>
      </el-col>
      <el-col :xs="12" :sm="8" :md="4">
        <div class="stat-card s"><div class="stat-label">线下支付</div><div class="stat-value sm">¥{{ fmt(sources.offlinePay != null ? sources.offlinePay : (Number(sources.offline||0)+Number(sources.cash||0))) }}</div></div>
      </el-col>
      <el-col :xs="12" :sm="8" :md="4">
        <div class="stat-card s"><div class="stat-label">美团</div><div class="stat-value sm">¥{{ fmt(sources.meituan) }}</div></div>
      </el-col>
      <el-col :xs="12" :sm="8" :md="4">
        <div class="stat-card s"><div class="stat-label">抖音核销</div><div class="stat-value sm">¥{{ fmt(sources.douyin) }}</div></div>
      </el-col>
      <el-col :xs="12" :sm="8" :md="4">
        <div class="stat-card s"><div class="stat-label">未标来源</div><div class="stat-value sm">¥{{ fmt(sources.unmarked) }}</div></div>
      </el-col>
    </el-row>

    <el-row :gutter="16" class="stat-row">
      <el-col :xs="24" :sm="12">
        <div class="stat-card l">
          <div class="stat-label">当前持卡未核销（预收款负债）</div>
          <div class="stat-value">¥{{ fmt(liability.amount) }}</div>
          <div class="stat-split">{{ liability.count }} 张有效卡 · 次卡按余次、时间卡按剩余天数 · 迁入卡记 0</div>
        </div>
      </el-col>
      <el-col :xs="24" :sm="12">
        <div class="card" style="margin-bottom:12px">
          <div class="card-title">负债按店</div>
          <el-table :data="liability.byVenue" size="small" border max-height="160">
            <el-table-column prop="venueName" label="场馆" />
            <el-table-column label="张数" width="70" align="right" prop="count" />
            <el-table-column label="金额" width="110" align="right"><template #default="{ row }">¥{{ fmt(row.amount) }}</template></el-table-column>
          </el-table>
        </div>
      </el-col>
    </el-row>

    <div class="card">
      <div class="card-title">五店对比（当前日期）</div>
      <el-table :data="venueCompare" stripe border size="small">
        <el-table-column prop="venueName" label="场馆" min-width="160" />
        <el-table-column label="发卡" align="right"><template #default="{ row }">¥{{ fmt(row.issue) }}</template></el-table-column>
        <el-table-column label="订场" align="right"><template #default="{ row }">¥{{ fmt(row.court) }}</template></el-table-column>
        <el-table-column label="退卡" align="right"><template #default="{ row }">¥{{ fmt(row.refund) }}</template></el-table-column>
        <el-table-column label="营业额" align="right"><template #default="{ row }">¥{{ fmt(row.turnover) }}</template></el-table-column>
      </el-table>
    </div>

    <div class="card">
      <div class="card-title">按操作人</div>
      <el-table :data="operatorSummary" stripe border size="small" max-height="240">
        <el-table-column prop="operatorName" label="操作人" min-width="120" />
        <el-table-column label="发卡" align="right"><template #default="{ row }">¥{{ fmt(row.issue) }}</template></el-table-column>
        <el-table-column label="订场" align="right"><template #default="{ row }">¥{{ fmt(row.court) }}</template></el-table-column>
        <el-table-column label="退卡" align="right"><template #default="{ row }">¥{{ fmt(row.refund) }}</template></el-table-column>
        <el-table-column label="合计" align="right"><template #default="{ row }">¥{{ fmt(row.total) }}</template></el-table-column>
      </el-table>
    </div>

    <div class="card">
      <div class="card-title">异常清单（{{ exceptions.length }}）</div>
      <el-table :data="exceptions" stripe border size="small" max-height="280">
        <el-table-column prop="date" label="日期" width="110" />
        <el-table-column prop="type" label="类型" width="100" />
        <el-table-column prop="name" label="内容" min-width="180" show-overflow-tooltip />
        <el-table-column prop="userName" label="会员" width="120" show-overflow-tooltip />
        <el-table-column label="金额" width="100" align="right"><template #default="{ row }">¥{{ fmt(row.amount) }}</template></el-table-column>
        <el-table-column prop="venueName" label="场馆" min-width="140" show-overflow-tooltip />
        <el-table-column prop="detail" label="说明" min-width="200" show-overflow-tooltip />
      </el-table>
    </div>

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
        <el-select v-model="issueQ.source" clearable size="small" placeholder="资金来源" style="width: 130px">
          <el-option label="微信支付" value="微信支付" />
          <el-option label="线下支付" value="线下支付" />
          <el-option label="美团" value="美团" />
          <el-option label="抖音" value="抖音" />
          <el-option label="未标" value="未标" />
        </el-select>
      </div>
      <el-table :data="issueFiltered" stripe border size="small" max-height="420">
        <el-table-column prop="timeText" label="操作时间" width="170" sortable />
        <el-table-column prop="source" label="资金来源" width="100" />
        <el-table-column prop="typeLabel" label="类型" width="80" />
        <el-table-column prop="cardName" label="卡券名称" min-width="200" show-overflow-tooltip />
        <el-table-column prop="userName" label="会员账号" width="130" show-overflow-tooltip />
        <el-table-column label="手机号" width="180">
          <template #default="{ row }">
            <span v-if="row.phone" class="phone-text">{{ row.phone }}</span>
            <el-button v-if="row.phone" link type="primary" @click="copyPhone(row.phone)">复制</el-button>
            <el-button v-if="row.phone" link @click="openUser(row.phone)">查看</el-button>
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
        <el-select v-model="useQ.source" clearable size="small" placeholder="资金来源" style="width: 130px">
          <el-option label="微信支付" value="微信支付" />
          <el-option label="线下支付" value="线下支付" />
        </el-select>
      </div>
      <el-table :data="consumeFiltered" stripe border size="small" max-height="420">
        <el-table-column prop="timeText" label="操作时间" width="170" sortable />
        <el-table-column prop="typeLabel" label="类型" width="100" />
        <el-table-column prop="cardName" label="卡券名称" min-width="180" show-overflow-tooltip />
        <el-table-column prop="name" label="场地/时段" min-width="150" show-overflow-tooltip />
        <el-table-column prop="userName" label="会员账号" width="130" show-overflow-tooltip />
        <el-table-column label="手机号" width="180">
          <template #default="{ row }">
            <span v-if="row.phone" class="phone-text">{{ row.phone }}</span>
            <el-button v-if="row.phone" link type="primary" @click="copyPhone(row.phone)">复制</el-button>
            <el-button v-if="row.phone" link @click="openUser(row.phone)">查看</el-button>
            <span v-else>-</span>
          </template>
        </el-table-column>
        <el-table-column prop="operatorName" label="操作人账号" width="120" />
        <el-table-column label="金额" width="100" align="right" sortable prop="amount">
          <template #default="{ row }">¥{{ fmt(row.amount) }}</template>
        </el-table-column>
        <el-table-column prop="source" label="资金来源" width="100" />
        <el-table-column prop="venueName" label="场馆" min-width="140" show-overflow-tooltip />
      </el-table>
      <div class="table-foot">共 {{ consumeFiltered.length }} 条</div>
    </div>

    <el-dialog v-model="summaryVisible" title="导出经营汇总" width="520px">
      <p class="summary-tip">按当前日期 {{ startDate }} ～ {{ endDate }} 导出所选门店的经营数据汇总（产品 × 门店）。</p>
      <div class="summary-venue-tools">
        <el-button size="small" @click="toggleSummaryVenues">{{ summaryAllSelected ? '取消全选' : '全选' }}</el-button>
      </div>
      <el-checkbox-group v-model="summaryVenueIds" class="summary-venue-list">
        <el-checkbox v-for="v in summaryVenueOptions" :key="v.venueId" :label="v.venueId" :value="v.venueId">
          {{ v.shortName }}
        </el-checkbox>
      </el-checkbox-group>
      <template #footer>
        <el-button @click="summaryVisible = false">取消</el-button>
        <el-button type="primary" :loading="summaryExporting" @click="confirmSummaryExport">导出</el-button>
      </template>
    </el-dialog>
  </div>
</template>

<script setup>
import { ref, computed, onMounted, onUnmounted } from 'vue'
import { useRouter } from 'vue-router'
import { ElMessage } from 'element-plus'
import { roleKind, allowedVenueIds } from '../utils/auth'

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
const sources = ref({ meituan: 0, douyin: 0, offline: 0, wechat: 0, cash: 0, unmarked: 0, offlinePay: 0, wechatPay: 0 })
const liability = ref({ amount: 0, count: 0, byVenue: [] })
const venueCompare = ref([])
const exceptions = ref([])
const operatorSummary = ref([])
const summaryVisible = ref(false)
const summaryExporting = ref(false)
const summaryVenueOptions = ref([])
const summaryVenueIds = ref([])
const summaryAllSelected = computed(() => {
  const all = summaryVenueOptions.value || []
  return all.length > 0 && all.every((v) => summaryVenueIds.value.includes(v.venueId))
})

const issueQ = ref({ timeText: '', cardName: '', userName: '', phone: '', operatorName: '', amount: '', type: '', source: '' })
const useQ = ref({ timeText: '', cardName: '', userName: '', phone: '', operatorName: '', amount: '', type: '', source: '' })

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
  const keys = ['timeText', 'cardName', 'userName', 'phone', 'operatorName', 'amount', 'type', 'source']
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
  } else if (type === 'month') {
    startDate.value = ymd(new Date(now.getFullYear(), now.getMonth(), 1))
    endDate.value = ymd(new Date(now.getFullYear(), now.getMonth() + 1, 0))
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
function copyPhone(phone) {
  const text = String(phone || '').trim()
  if (!text) return
  navigator.clipboard.writeText(text).then(() => ElMessage.success('已复制 ' + text)).catch(() => ElMessage.warning('复制失败'))
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
    if (result.debug) ElMessage.warning('查询异常：' + result.debug)
    turnover.value = result.turnover || { card: 0, court: 0, total: 0 }
    income.value = result.income || { card: 0, court: 0, total: 0 }
    imported.value = result.imported || { count: 0, amount: 0 }
    daily.value = result.daily || []
    issueList.value = (result.issueList || []).map((r) => {
      if (r.payChannelLabel) {
        r.source = r.payChannelLabel
        return r
      }
      const d = String(r.remark || r.detail || '')
      if (d.indexOf('微信') >= 0) r.source = '微信支付'
      else if (d.indexOf('美团') >= 0) r.source = '美团'
      else if (d.indexOf('抖音') >= 0) r.source = '抖音'
      else if (d.indexOf('线下') >= 0) r.source = '线下支付'
      else if (Number(r.amount) > 0 && !r.imported) r.source = '未标'
      else r.source = r.source || ''
      return r
    })
    consumeList.value = (result.consumeList || []).map((r) => {
      if (!r.source && r.payChannelLabel) r.source = r.payChannelLabel
      return r
    })
    sources.value = result.sources || { meituan: 0, douyin: 0, offline: 0, wechat: 0, cash: 0, unmarked: 0, offlinePay: 0, wechatPay: 0 }
    liability.value = result.liability || { amount: 0, count: 0, byVenue: [] }
    venueCompare.value = result.venueCompare || []
    exceptions.value = result.exceptions || []
    operatorSummary.value = result.operatorSummary || []
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    loading.value = false
  }
}

function csvCell(v) {
  const s = String(v == null ? '' : v)
  if (/[",\n]/.test(s)) return '"' + s.replace(/"/g, '""') + '"'
  return s
}
function exportDetail() {
  const lines = [['类型', '时间', '卡券/内容', '会员', '手机号', '金额', '来源', '操作人', '场馆'].map(csvCell).join(',')]
  issueFiltered.value.forEach((r) => {
    lines.push([r.typeLabel, r.timeText, r.cardName, r.userName, r.phone, fmt(r.amount), r.source || '', r.operatorName, r.venueName].map(csvCell).join(','))
  })
  consumeFiltered.value.forEach((r) => {
    lines.push([r.typeLabel, r.timeText, r.name, r.userName, r.phone, fmt(r.amount), '', r.operatorName, r.venueName].map(csvCell).join(','))
  })
  const blob = new Blob(['\uFEFF' + lines.join('\r\n')], { type: 'text/csv;charset=utf-8;' })
  const url = URL.createObjectURL(blob)
  const a = document.createElement('a')
  a.href = url
  a.download = `财报明细_${startDate.value}_${endDate.value}.csv`
  a.click()
  URL.revokeObjectURL(url)
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

function money(n) {
  return Math.round((Number(n) || 0) * 100) / 100
}
function shortVenue(name, id) {
  const s = String(name || '').trim()
  const known = ['海心沙', '花地湾', '中大', '陈家祠', '杨箕', '温莎', '木兰', '员岗']
  for (let i = 0; i < known.length; i++) {
    if (s.indexOf(known[i]) >= 0) return known[i]
  }
  const m = s.match(/[（(]([^）)]+)[）)]/)
  if (m) return String(m[1] || '').replace(/店$/, '') || s
  const vid = String(id || '')
  if (vid === 'venue_yangji') return '杨箕'
  if (vid === 'venue_weisha') return '温莎'
  return s || vid
}
function isShellVenue(v) {
  const id = String(v.venueId || '')
  const short = v.shortName || shortVenue(v.name, id)
  return id === 'venue_yangji' || id === 'venue_weisha' || short === '杨箕' || short === '温莎'
}
function preferredVenueRank(short) {
  const order = ['海心沙', '花地湾', '中大', '陈家祠']
  const i = order.indexOf(short)
  return i >= 0 ? i : 100
}
function sortExportVenues(list) {
  const pref = []
  const rest = []
  ;(list || []).forEach((v, idx) => {
    const item = Object.assign({}, v, { _idx: idx })
    if (preferredVenueRank(item.shortName) < 100) pref.push(item)
    else rest.push(item)
  })
  pref.sort((a, b) => preferredVenueRank(a.shortName) - preferredVenueRank(b.shortName) || a._idx - b._idx)
  rest.sort((a, b) => a._idx - b._idx)
  return pref.concat(rest)
}
function visibleVenueList(list) {
  let rows = (list || []).map((v) => {
    const venueId = String(v.venueId || v._id || '')
    const name = v.name || ''
    return { venueId, name, shortName: shortVenue(name, venueId) }
  }).filter((v) => v.venueId)
  if (roleKind() !== 'admin') {
    const allow = allowedVenueIds().map(String)
    if (allow.length) rows = rows.filter((v) => allow.includes(v.venueId))
  }
  return rows
}
function defaultSummaryVenueIds(list) {
  if (!list.length) return []
  if (list.length === 1) return [list[0].venueId]
  const preferred = list.filter((v) => preferredVenueRank(v.shortName) < 100).map((v) => v.venueId)
  if (preferred.length) return preferred
  const nonShell = list.filter((v) => !isShellVenue(v)).map((v) => v.venueId)
  return nonShell.length ? nonShell : []
}
async function loadSummaryVenues() {
  try {
    const result = await post('/adminGetVenues', {})
    const rows = visibleVenueList(result.list || [])
    summaryVenueOptions.value = rows
    if (!summaryVenueIds.value.length) summaryVenueIds.value = defaultSummaryVenueIds(rows)
  } catch (e) {
    summaryVenueOptions.value = []
  }
}
function toggleSummaryVenues() {
  if (summaryAllSelected.value) summaryVenueIds.value = []
  else summaryVenueIds.value = (summaryVenueOptions.value || []).map((v) => v.venueId)
}
async function openSummaryExport() {
  if (!startDate.value || !endDate.value) {
    ElMessage.warning('请选择日期')
    return
  }
  await loadSummaryVenues()
  if (!summaryVenueOptions.value.length) {
    ElMessage.error('没有可导出的场馆')
    return
  }
  const valid = new Set(summaryVenueOptions.value.map((v) => v.venueId))
  summaryVenueIds.value = (summaryVenueIds.value || []).filter((id) => valid.has(id))
  if (!summaryVenueIds.value.length) summaryVenueIds.value = defaultSummaryVenueIds(summaryVenueOptions.value)
  summaryVisible.value = true
}
function matchVenue(row, venues) {
  const id = String((row && row.venueId) || '')
  if (id) {
    const hit = venues.find((v) => String(v.venueId) === id)
    if (hit) return hit
  }
  const short = shortVenue((row && row.venueName) || '', id)
  if (!short) return null
  return venues.find((v) => v.shortName === short || shortVenue(v.name, v.venueId) === short) || null
}
function isPickleText(s) {
  return /匹克|丁克|pickle/i.test(String(s || ''))
}
function isMachineText(s) {
  return /发球机/.test(String(s || ''))
}
function machineItemName(court, name) {
  const courtS = String(court || '').trim()
  const nameS = String(name || '').replace(/\s+\d{1,2}:\d{2}.*$/, '').trim()
  const base = courtS || nameS || '发球机'
  if (/发球机/.test(base) && /全时段|闲时|双11|双十一|小时/.test(base)) return base
  const blob = courtS + ' ' + nameS
  const bits = []
  if (/双11|双十一/.test(blob)) bits.push('双11限定')
  if (/全时段/.test(blob)) bits.push('全时段')
  if (/闲时/.test(blob)) bits.push('闲时')
  if (/1小时|一小时/.test(blob) && bits.length && bits.join('').indexOf('小时') < 0) bits.push('1小时')
  else if (/小时/.test(blob) && bits.length && bits.join('').indexOf('小时') < 0 && !/小时/.test(base.replace(/发球机/g, ''))) bits.push('1小时')
  if (bits.length) return '发球机-' + bits.join('')
  if (/发球机/.test(base)) return base
  return '发球机-' + base
}
function courtCashKind(row) {
  const court = String(row.court || '').trim()
  const name = String(row.name || '').trim()
  const blob = court + ' ' + name
  if (isPickleText(blob)) {
    const item = court || name.replace(/\s+\d{1,2}:\d{2}.*$/, '').trim() || '匹克球'
    return { group: 'pickle', name: item }
  }
  if (isMachineText(blob)) return { group: 'walkin', name: machineItemName(court, name) }
  if (/号场/.test(court) || (/号场/.test(name) && !isPickleText(blob) && !isMachineText(blob))) {
    const c = court || ((name.match(/(\S*号场)/) || [])[1]) || name
    return { group: 'walkin', name: '现场订场-' + c }
  }
  const item = court || name.replace(/\s+\d{1,2}:\d{2}.*$/, '').trim() || '现场订场'
  return { group: 'walkin', name: item }
}
function isTrialClassCard(cardName) {
  const s = String(cardName || '')
  if (!/体验/.test(s)) return false
  if (/\d+(\.\d+)?\s*元/.test(s)) return false
  if (/次卡|周卡|月卡|年卡/.test(s)) return false
  return true
}
function is1v1Name(name) {
  return /1v1|1V1|1对1|一对一/.test(String(name || ''))
}
function is1v2Name(name) {
  return /1v2|1V2|1对2|一对二/.test(String(name || ''))
}
function isRetailText(s) {
  return /去点单|饮品|球拍租赁/.test(String(s || ''))
}
function retailItemName(row) {
  const s = String((row && (row.cardName || row.name || row.detail || '')) || '')
  if (/球拍租赁/.test(s)) return '球拍租赁'
  if (/饮品/.test(s)) return '饮品'
  return s || '商品'
}
function isAdjustType(t) {
  return t === '改金额' || t === '改卡实收' || t === 'court_adjust' || t === 'card_price_adjust'
}
function isImportedRow(row) {
  return !!(row && (row.imported || row.type === 'import_card'))
}
function isLockRow(row) {
  return String((row && row.userName) || '') === '锁场' || String((row && row.source) || '') === 'lock' || String((row && row.type) || '') === 'locked'
}
function makeCells() {
  return {}
}
function addCell(map, key, meta, venue, amount, count) {
  if (!map[key]) map[key] = { name: meta.name, group: meta.group, cells: makeCells() }
  const id = venue.venueId
  if (!map[key].cells[id]) map[key].cells[id] = { amount: 0, count: 0, has: false }
  map[key].cells[id].amount = money(map[key].cells[id].amount + amount)
  map[key].cells[id].count += count
  map[key].cells[id].has = true
}
function sumCells(cells, venues) {
  let amount = 0
  let count = 0
  let has = false
  ;(venues || []).forEach((v) => {
    const c = cells && cells[v.venueId]
    if (c && c.has) {
      amount = money(amount + c.amount)
      count += c.count
      has = true
    }
  })
  return has ? { amount, count, has: true } : { amount: 0, count: 0, has: false }
}
function shopCountLabel(n) {
  const map = { 1: '一', 2: '两', 3: '三', 4: '四', 5: '五', 6: '六', 7: '七', 8: '八', 9: '九', 10: '十' }
  return (map[n] || String(n)) + '店合计'
}
function titleDateRange(start, end) {
  const a = String(start || '').split('-')
  const b = String(end || '').split('-')
  if (a.length < 3 || b.length < 3) return String(start || '') + ' – ' + String(end || '')
  const left = Number(a[0]) + '.' + Number(a[1]) + '.' + Number(a[2])
  const right = (Number(b[0]) !== Number(a[0]) ? Number(b[0]) + '.' : '') + Number(b[1]) + '.' + Number(b[2])
  return left + ' – ' + right
}
function fmtAmt(n) {
  return money(n).toFixed(2)
}
function pairTexts(cell) {
  if (!cell || !cell.has) return ['', '']
  return [fmtAmt(cell.amount), String(cell.count)]
}
function walkinSort(a, b) {
  const rank = (n) => {
    if (/^现场订场-/.test(n)) {
      const m = n.match(/(\d+)/)
      return [0, m ? Number(m[1]) : 0, n]
    }
    if (/发球机/.test(n)) return [1, 0, n]
    return [2, 0, n]
  }
  const aa = rank(a)
  const bb = rank(b)
  return aa[0] - bb[0] || aa[1] - bb[1] || String(aa[2]).localeCompare(String(bb[2]), 'zh')
}
function trialSort(a, b) {
  const rank = (n) => (is1v1Name(n) ? 0 : is1v2Name(n) ? 1 : 2)
  return rank(a) - rank(b) || String(a).localeCompare(String(b), 'zh')
}
function htmlEsc(s) {
  return String(s == null ? '' : s)
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;')
}
function buildSummaryModel(data, venues) {
  const walkin = {}
  const trial = {}
  const cards = {}
  const pickle = {}
  const retail = {}
  const adjust = {}
  const pickleRefund = {}
  let allocationRan = false

  const trialNamed = {}
  const trialUnsplit = {}
  venues.forEach((v) => {
    trialNamed[v.venueId] = []
    trialUnsplit[v.venueId] = { amount: 0, count: 0, byName: {} }
  })

  ;(data.consumeList || []).forEach((row) => {
    if (!row || row.type !== 'court' || isLockRow(row)) return
    const v = matchVenue(row, venues)
    if (!v) return
    const kind = courtCashKind(row)
    const amt = money(row.amount)
    if (kind.group === 'pickle') {
      addCell(pickle, kind.name, { name: kind.name, group: 'pickle' }, v, amt, 1)
      if (amt < 0) pickleRefund[kind.name] = true
    } else {
      addCell(walkin, kind.name, { name: kind.name, group: '' }, v, amt, 1)
    }
  })
  Object.keys(pickle).forEach((name) => {
    if (pickleRefund[name] && pickle[name].name.indexOf('含退款') < 0) pickle[name].name = pickle[name].name + '(含退款)'
  })

  function retailFrom(row) {
    const blob = [row.cardName, row.name, row.detail, row.remark, row.typeLabel].join(' ')
    return isRetailText(blob)
  }

  ;(data.issueList || []).forEach((row) => {
    if (!row || isImportedRow(row) || isLockRow(row)) return
    const v = matchVenue(row, venues)
    if (!v) return
    if (retailFrom(row)) {
      addCell(retail, retailItemName(row), { name: retailItemName(row), group: 'retail' }, v, money(row.amount), 1)
      return
    }
    const cardName = String(row.cardName || row.name || '').replace(/（退卡）$/, '')
    if (isTrialClassCard(cardName) || isTrialClassCard(row.cardName) || isTrialClassCard(row.name)) {
      const nm = String(row.cardName || '').trim() || cardName || '体验课'
      if (is1v1Name(nm) || is1v2Name(nm)) {
        addCell(trial, nm, { name: nm, group: 'trial' }, v, money(row.amount), 1)
        trialNamed[v.venueId].push({ name: nm, amount: money(row.amount), count: 1 })
      } else {
        const bag = trialUnsplit[v.venueId]
        const amt = money(row.amount)
        bag.amount = money(bag.amount + amt)
        bag.count += 1
        if (!bag.byName[nm]) bag.byName[nm] = { amount: 0, count: 0 }
        bag.byName[nm].amount = money(bag.byName[nm].amount + amt)
        bag.byName[nm].count += 1
      }
      return
    }
    const item = String(row.cardName || '').trim() || cardName || '卡券'
    addCell(cards, item, { name: item, group: 'cards' }, v, money(row.amount), 1)
  })

  const allocateShorts = { 海心沙: true, 花地湾: true }
  venues.forEach((v) => {
    const bag = trialUnsplit[v.venueId] || { amount: 0, count: 0 }
    if (!bag.count && !bag.amount) return
    if (!allocateShorts[v.shortName]) {
      const names = Object.keys(bag.byName || {})
      if (!names.length) addCell(trial, '体验课', { name: '体验课', group: 'trial' }, v, bag.amount, bag.count)
      else names.forEach((name) => {
        const rec = bag.byName[name]
        addCell(trial, name, { name, group: 'trial' }, v, rec.amount, rec.count)
      })
      return
    }
    let n1 = 0
    let n2 = 0
    let t1 = ''
    let t2 = ''
    ;(trialNamed[v.venueId] || []).forEach((x) => {
      if (is1v1Name(x.name)) {
        n1 += x.count
        if (!t1) t1 = x.name
      } else if (is1v2Name(x.name)) {
        n2 += x.count
        if (!t2) t2 = x.name
      }
    })
    if (n1 + n2 === 0) {
      addCell(trial, '体验课', { name: '体验课', group: 'trial' }, v, bag.amount, bag.count)
      return
    }
    allocationRan = true
    const name1 = t1 || '1v1私教体验课'
    const name2 = t2 || '1v2私教体验课'
    if (n2 === 0) {
      addCell(trial, name1, { name: name1, group: 'trial' }, v, bag.amount, bag.count)
      return
    }
    if (n1 === 0) {
      addCell(trial, name2, { name: name2, group: 'trial' }, v, bag.amount, bag.count)
      return
    }
    const a1 = money(bag.amount * (n1 / (n1 + n2)))
    const a2 = money(bag.amount - a1)
    let c1 = Math.round(bag.count * (n1 / (n1 + n2)))
    if (c1 < 0) c1 = 0
    if (c1 > bag.count) c1 = bag.count
    const c2 = bag.count - c1
    addCell(trial, name1, { name: name1, group: 'trial' }, v, a1, c1)
    addCell(trial, name2, { name: name2, group: 'trial' }, v, a2, c2)
  })

  ;(data.consumeList || []).forEach((row) => {
    if (!row || isLockRow(row) || row.type === 'court' || row.type === 'card_use') return
    if (!retailFrom(row)) return
    const v = matchVenue(row, venues)
    if (!v) return
    addCell(retail, retailItemName(row), { name: retailItemName(row), group: 'retail' }, v, money(row.amount), 1)
  })
  ;(data.payList || []).forEach((row) => {
    if (!row || isLockRow(row) || !retailFrom(row)) return
    const v = matchVenue(row, venues)
    if (!v) return
    addCell(retail, retailItemName(row), { name: retailItemName(row), group: 'retail' }, v, money(row.amount), 1)
  })

  const adjustSrc = (data.adjustList && data.adjustList.length) ? data.adjustList : (data.exceptions || [])
  adjustSrc.forEach((row) => {
    if (!row || !isAdjustType(row.type)) return
    const v = matchVenue(row, venues)
    if (!v) return
    addCell(adjust, '补差价', { name: '补差价', group: 'adjust' }, v, money(row.amount), 1)
  })

  function itemsOf(map, sorter) {
    const keys = Object.keys(map)
    if (sorter) keys.sort(sorter)
    else keys.sort((a, b) => String(a).localeCompare(String(b), 'zh'))
    return keys.map((k) => map[k])
  }

  const pickleVenues = {}
  itemsOf(pickle).forEach((it) => {
    venues.forEach((v) => {
      if (it.cells[v.venueId] && it.cells[v.venueId].has) pickleVenues[v.shortName] = true
    })
  })
  const pickleVenueNames = Object.keys(pickleVenues)
  let pickleTitle = '匹克球'
  if (pickleVenueNames.length === 1) pickleTitle = '匹克球（' + pickleVenueNames[0] + '）'

  const groups = [
    { key: 'walkin', title: '', items: itemsOf(walkin, walkinSort), ungrouped: true },
    { key: 'trial', title: '体验课', items: itemsOf(trial, trialSort) },
    { key: 'cards', title: '卡券销售', items: itemsOf(cards) },
    { key: 'pickle', title: pickleTitle, items: itemsOf(pickle, (a, b) => String((pickle[a] && pickle[a].name) || a).localeCompare(String((pickle[b] && pickle[b].name) || b), 'zh')) },
    { key: 'retail', title: '去点单（商品）', items: itemsOf(retail) },
    { key: 'adjust', title: '补差价', items: itemsOf(adjust) }
  ].filter((g) => g.items.length)

  return { groups, allocationRan, pickleTitle }
}
function groupSubtotal(items, venues) {
  const cells = {}
  venues.forEach((v) => {
    let amount = 0
    let count = 0
    let has = false
    items.forEach((it) => {
      const c = it.cells[v.venueId]
      if (c && c.has) {
        amount = money(amount + c.amount)
        count += c.count
        has = true
      }
    })
    if (has) cells[v.venueId] = { amount, count, has: true }
  })
  return cells
}
function footerCells(groups, venues) {
  const items = []
  groups.forEach((g) => g.items.forEach((it) => items.push(it)))
  return groupSubtotal(items, venues)
}
function tdNum(text, extra) {
  const v = text === '' ? '&nbsp;' : htmlEsc(text)
  return '<td style="text-align:right;' + (extra || '') + '">' + v + '</td>'
}
function tdText(text, extra, center) {
  const v = text === '' ? '&nbsp;' : htmlEsc(text)
  return '<td style="text-align:' + (center ? 'center' : 'left') + ';' + (extra || '') + '">' + v + '</td>'
}
function pairTds(cell, extra) {
  const p = pairTexts(cell)
  return tdNum(p[0], extra) + tdNum(p[1], extra)
}
function buildSummaryHtml(model, venues, start, end) {
  const colCount = 2 + venues.length * 2 + 2
  const title = '山羊网球 · 经营数据汇总（产品 × 门店）' + titleDateRange(start, end)
  let sub = '金额单位：元 | 每店两列：金额 / 笔数 | 数据来源：后台流水 + 财报明细（与业绩明细一致）'
  if (model.allocationRan) sub += ' | 海心沙/花地湾体验课金额按次数均摊至 1v1、1v2'
  sub += ' | 本系统未接入的门店未计入'
  const dark = 'background:#1a5c3a;color:#ffffff;font-weight:700;'
  const mid = 'background:#2d7a52;color:#ffffff;font-weight:700;text-align:center;'
  const head = 'background:#c6e0b4;color:#1a5c3a;font-weight:700;text-align:center;'
  const cat = 'background:#8fbc8f;color:#143d28;font-weight:700;'
  const foot = 'background:#1a5c3a;color:#ffffff;font-weight:700;'
  const baseTd = 'font-family:\'Microsoft YaHei\',\'微软雅黑\',sans-serif;border:1px solid #1a5c3a;padding:4px 8px;white-space:nowrap;font-size:11pt;'
  let html = '<html xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns="http://www.w3.org/TR/REC-html40">'
  html += '<head><meta charset="UTF-8"><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name>经营数据汇总</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]-->'
  html += '<style>td,th{font-family:\'Microsoft YaHei\',\'微软雅黑\',sans-serif;border:1px solid #1a5c3a;padding:4px 8px;white-space:nowrap;font-size:11pt;}table{border-collapse:collapse;}</style></head><body>'
  html += '<table border="1" cellspacing="0" cellpadding="0">'
  html += '<tr><td colspan="' + colCount + '" style="' + baseTd + dark + 'text-align:center;font-size:14pt;">' + htmlEsc(title) + '</td></tr>'
  html += '<tr><td colspan="' + colCount + '" style="' + baseTd + 'background:#e8f5e9;color:#333;font-size:9pt;">' + htmlEsc(sub) + '</td></tr>'
  html += '<tr>'
  html += '<th rowspan="2" style="' + baseTd + mid + '">产品</th>'
  html += '<th rowspan="2" style="' + baseTd + mid + '">项目/商品</th>'
  venues.forEach((v) => {
    html += '<th colspan="2" style="' + baseTd + mid + '">' + htmlEsc(v.shortName) + '</th>'
  })
  html += '<th colspan="2" style="' + baseTd + mid + '">总计</th>'
  html += '</tr><tr>'
  venues.forEach(() => {
    html += '<th style="' + baseTd + head + '">金额</th><th style="' + baseTd + head + '">笔数</th>'
  })
  html += '<th style="' + baseTd + head + '">金额</th><th style="' + baseTd + head + '">笔数</th>'
  html += '</tr>'

  model.groups.forEach((g) => {
    if (g.ungrouped) {
      g.items.forEach((it) => {
        html += '<tr>'
        html += tdText('', baseTd)
        html += tdText(it.name, baseTd)
        venues.forEach((v) => { html += pairTds(it.cells[v.venueId], baseTd) })
        html += pairTds(sumCells(it.cells, venues), baseTd)
        html += '</tr>'
      })
      return
    }
    const subcells = groupSubtotal(g.items, venues)
    html += '<tr>'
    html += '<td rowspan="' + (g.items.length + 1) + '" style="' + baseTd + cat + 'vertical-align:middle;text-align:center;">' + htmlEsc(g.title) + '</td>'
    html += tdText('', baseTd + cat)
    venues.forEach((v) => { html += pairTds(subcells[v.venueId], baseTd + cat) })
    html += pairTds(sumCells(subcells, venues), baseTd + cat)
    html += '</tr>'
    g.items.forEach((it) => {
      html += '<tr>'
      html += tdText(it.name, baseTd)
      venues.forEach((v) => { html += pairTds(it.cells[v.venueId], baseTd) })
      html += pairTds(sumCells(it.cells, venues), baseTd)
      html += '</tr>'
    })
  })

  const footCells = footerCells(model.groups, venues)
  html += '<tr>'
  html += '<td colspan="2" style="' + baseTd + foot + 'text-align:center;">' + htmlEsc(shopCountLabel(venues.length)) + '</td>'
  venues.forEach((v) => { html += pairTds(footCells[v.venueId], baseTd + foot) })
  html += pairTds(sumCells(footCells, venues), baseTd + foot)
  html += '</tr>'
  html += '</table></body></html>'
  return html
}
async function confirmSummaryExport() {
  if (!startDate.value || !endDate.value) {
    ElMessage.warning('请选择日期')
    return
  }
  const allowed = visibleVenueList(summaryVenueOptions.value)
  const allowSet = new Set(allowed.map((v) => v.venueId))
  let picked = sortExportVenues(allowed.filter((v) => (summaryVenueIds.value || []).includes(v.venueId) && allowSet.has(v.venueId)))
  if (roleKind() !== 'admin') {
    const allow = allowedVenueIds().map(String)
    if (allow.length) picked = picked.filter((v) => allow.includes(String(v.venueId)))
  }
  if (!picked.length) {
    ElMessage.warning('请至少选择一个场馆')
    return
  }
  summaryExporting.value = true
  try {
    const result = await post('/adminGetFinance', {
      venueId: '',
      startDate: startDate.value,
      endDate: endDate.value
    })
    if (!result || !result.ok) {
      ElMessage.error((result && result.msg) || '加载失败，未导出文件')
      return
    }
    const model = buildSummaryModel(result, picked)
    const html = buildSummaryHtml(model, picked, startDate.value, endDate.value)
    const blob = new Blob(['\uFEFF' + html], { type: 'application/vnd.ms-excel' })
    const url = URL.createObjectURL(blob)
    const a = document.createElement('a')
    a.href = url
    a.download = '经营数据汇总_' + startDate.value + '_' + endDate.value + '.xls'
    a.click()
    URL.revokeObjectURL(url)
    summaryVisible.value = false
  } catch (e) {
    ElMessage.error((e && e.message) || '网络错误，未导出文件')
  } finally {
    summaryExporting.value = false
  }
}


onMounted(() => {
  setRange('month')
  loadSummaryVenues()
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
.header-actions {
  display: flex;
  flex-wrap: wrap;
  gap: 8px;
  flex-shrink: 0;
}
.summary-tip { margin: 0 0 10px; font-size: 13px; color: #606266; line-height: 1.5; }
.summary-venue-tools { margin-bottom: 8px; }
.summary-venue-list { display: flex; flex-direction: column; gap: 4px; }
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
.stat-card.s { border-top-color: #409eff; }
.stat-card.l { border-top-color: #6c3483; }
.stat-value.sm { font-size: 20px; }
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
.phone-text { user-select: text; margin-right: 4px; }
</style>
