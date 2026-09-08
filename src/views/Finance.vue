<template>
  <div class="page">
    <div class="page-header">
      <div>
        <h2>财务报表</h2>
        <p class="sub">
          营业额 = 区间内发卡金额 + 订场实收（微信/现金订单）
          · 实际收入 = 区间内到场消费：现金订场按场地价，用卡按「卡价÷次数」或时间卡「卡价÷有效天数」
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
          <el-button size="small" @click="setRange('week')">本周</el-button>
          <el-button size="small" @click="setRange('month')">本月</el-button>
          <el-button size="small" @click="setRange('last7')">近7天</el-button>
        </el-button-group>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" :loading="loading" @click="loadData">查询</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="16" class="stat-row">
      <el-col :xs="24" :sm="12" :md="8">
        <div class="stat-card t">
          <div class="stat-label">营业额</div>
          <div class="stat-value">¥{{ fmt(turnover.total) }}</div>
          <div class="stat-split">发卡 ¥{{ fmt(turnover.card) }} · 订场 ¥{{ fmt(turnover.court) }}</div>
        </div>
      </el-col>
      <el-col :xs="24" :sm="12" :md="8">
        <div class="stat-card i">
          <div class="stat-label">实际收入</div>
          <div class="stat-value">¥{{ fmt(income.total) }}</div>
          <div class="stat-split">卡核销 ¥{{ fmt(income.card) }} · 订场消费 ¥{{ fmt(income.court) }}</div>
        </div>
      </el-col>
      <el-col :xs="24" :sm="12" :md="8">
        <div class="stat-card d">
          <div class="stat-label">未核销余额（营业额-实际收入）</div>
          <div class="stat-value">¥{{ fmt(turnover.total - income.total) }}</div>
          <div class="stat-split">多为已售出未用完的卡</div>
        </div>
      </el-col>
    </el-row>

    <div class="card">
      <div class="card-title">按日汇总</div>
      <el-table :data="daily" stripe border size="small" v-loading="loading">
        <el-table-column prop="date" label="日期" width="120" />
        <el-table-column label="营业额" align="right">
          <template #default="{ row }">¥{{ fmt(row.turnover) }}</template>
        </el-table-column>
        <el-table-column label="实际收入" align="right">
          <template #default="{ row }">¥{{ fmt(row.income) }}</template>
        </el-table-column>
      </el-table>
      <div v-if="!loading && !daily.length" class="empty">该区间暂无数据</div>
    </div>

    <el-row :gutter="16">
      <el-col :xs="24" :md="12">
        <div class="card">
          <div class="card-title">发卡明细（计入营业额）</div>
          <el-table :data="issueList" stripe border size="small" max-height="360">
            <el-table-column prop="date" label="日期" width="110" />
            <el-table-column prop="name" label="卡" min-width="120" />
            <el-table-column prop="userName" label="会员" width="90" />
            <el-table-column label="金额" width="90" align="right">
              <template #default="{ row }">¥{{ fmt(row.amount) }}</template>
            </el-table-column>
          </el-table>
        </div>
      </el-col>
      <el-col :xs="24" :md="12">
        <div class="card">
          <div class="card-title">消费明细（计入实际收入）</div>
          <el-table :data="consumeList" stripe border size="small" max-height="360">
            <el-table-column prop="date" label="日期" width="110" />
            <el-table-column label="类型" width="80">
              <template #default="{ row }">{{ row.type === 'card_use' ? '用卡' : '订场' }}</template>
            </el-table-column>
            <el-table-column prop="name" label="项目" min-width="120" />
            <el-table-column prop="userName" label="会员" width="90" />
            <el-table-column label="金额" width="90" align="right">
              <template #default="{ row }">¥{{ fmt(row.amount) }}</template>
            </el-table-column>
          </el-table>
        </div>
      </el-col>
    </el-row>
  </div>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from 'vue'
import { ElMessage } from 'element-plus'

const loading = ref(false)
const startDate = ref('')
const endDate = ref('')
const turnover = ref({ card: 0, court: 0, total: 0 })
const income = ref({ card: 0, court: 0, total: 0 })
const daily = ref([])
const issueList = ref([])
const consumeList = ref([])

const base = import.meta.env.DEV
  ? '/api'
  : 'https://cloud1-d3g0pb1qk028e3585-d862bc2-1312769671.ap-shanghai.app.tcloudbase.com'

function fmtNum(n) {
  return (Math.round((Number(n) || 0) * 100) / 100).toFixed(2)
}
const fmt = fmtNum

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

function setRange(type) {
  const now = new Date()
  if (type === 'week') {
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
  const lines = [['日期', '营业额', '实际收入'].join(',')]
  daily.value.forEach((r) => {
    lines.push([r.date, fmt(r.turnover), fmt(r.income)].join(','))
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
.sub { margin: 6px 0 0; font-size: 13px; color: #909399; max-width: 720px; line-height: 1.5; }
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
.stat-label { font-size: 13px; color: #888; }
.stat-value { font-size: 28px; font-weight: 700; color: #222; margin: 6px 0 4px; }
.stat-split { font-size: 12px; color: #909399; }
.card {
  background: #fff;
  border-radius: 10px;
  padding: 14px 16px 18px;
  margin-bottom: 14px;
}
.card-title { font-weight: 600; margin-bottom: 10px; color: #1a5c3a; }
.empty { text-align: center; color: #999; padding: 20px; }
</style>
