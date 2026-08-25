<template>
  <div class="page">
    <div class="page-header">
      <div>
        <h2>教练出勤</h2>
        <p class="period" v-if="filters.startDate || filters.endDate">
          统计区间：{{ filters.startDate || '…' }} ~ {{ filters.endDate || '…' }}
          <span class="period-tip">（累计课时随区间变化，作发工资依据）</span>
        </p>
      </div>
      <div class="actions">
        <el-button :loading="loading" @click="loadData">刷新</el-button>
        <el-button type="success" plain :disabled="!list.length" @click="exportExcel">导出明细</el-button>
        <el-button type="warning" :disabled="!coachStats.length" @click="exportCoachSummary">导出工资汇总</el-button>
      </div>
    </div>

    <el-form :inline="true" class="filters" @submit.prevent>
      <el-form-item label="开始">
        <el-date-picker v-model="filters.startDate" type="date" value-format="YYYY-MM-DD" style="width: 140px" />
      </el-form-item>
      <el-form-item label="结束">
        <el-date-picker v-model="filters.endDate" type="date" value-format="YYYY-MM-DD" style="width: 140px" />
      </el-form-item>
      <el-form-item label="快捷">
        <el-button-group>
          <el-button size="small" @click="setRange('week')">本周</el-button>
          <el-button size="small" @click="setRange('month')">本月</el-button>
          <el-button size="small" @click="setRange('last7')">近7天</el-button>
        </el-button-group>
      </el-form-item>
      <el-form-item label="教练">
        <el-select v-model="filters.coachId" clearable filterable placeholder="全部" style="width: 140px">
          <el-option v-for="c in coachOptions" :key="c._id" :label="c.name" :value="c._id" />
        </el-select>
      </el-form-item>
      <el-form-item label="课程">
        <el-select v-model="filters.courseType" clearable placeholder="全部" style="width: 110px">
          <el-option label="一对一" value="private" />
          <el-option label="团课" value="group" />
        </el-select>
      </el-form-item>
      <el-form-item label="状态">
        <el-select v-model="filters.attendStatus" clearable placeholder="全部" style="width: 110px">
          <el-option label="已完成" value="completed" />
          <el-option label="待上课" value="pending" />
          <el-option label="已取消" value="cancelled" />
        </el-select>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" :loading="loading" @click="loadData">查询</el-button>
      </el-form-item>
    </el-form>

    <!-- 教练区间累计：发工资主视图 -->
    <div class="coach-grid" v-if="coachStats.length">
      <div v-for="c in coachStats" :key="c.coachId || c.coachName" class="coach-card">
        <div class="cname">{{ c.coachName }}</div>
        <div class="chours">{{ c.completedHours }}<span class="unit">h</span></div>
        <div class="cmeta">
          已完成 {{ c.completedCount }} 节
          <template v-if="c.pendingCount"> · 待上 {{ c.pendingCount }}</template>
          <template v-if="c.cancelledCount"> · 取消 {{ c.cancelledCount }}</template>
        </div>
      </div>
    </div>
    <el-empty v-else-if="!loading" description="该区间暂无教练上课记录" :image-size="64" />

    <div class="detail-head">
      <span>上课明细</span>
      <span class="detail-tip">本节未上完/已取消 = 0h；「区间累计」= 该教练在上方统计区间内已完成总课时</span>
    </div>

    <el-table :data="list" stripe border v-loading="loading" size="small" class="detail-table">
      <el-table-column prop="date" label="日期" width="110" sortable />
      <el-table-column prop="coachName" label="教练" width="90" />
      <el-table-column label="区间累计" width="90" align="center">
        <template #default="{ row }">
          <span class="em">{{ row.coachTotalHours || 0 }}h</span>
        </template>
      </el-table-column>
      <el-table-column prop="time" label="时间段" width="110" />
      <el-table-column label="本节" width="70" align="center">
        <template #default="{ row }">
          <span :class="row.hours > 0 ? 'em' : 'muted'">{{ row.hours || 0 }}h</span>
        </template>
      </el-table-column>
      <el-table-column prop="courseName" label="课程" min-width="120" />
      <el-table-column prop="venueName" label="门店" min-width="120" show-overflow-tooltip />
      <el-table-column prop="court" label="场地" width="80" />
      <el-table-column prop="userName" label="学员" width="90" />
      <el-table-column prop="phone" label="手机号" width="120" />
      <el-table-column label="状态" width="88" align="center">
        <template #default="{ row }">
          <el-tag
            size="small"
            :type="row.attendStatus === 'completed' ? 'success' : row.attendStatus === 'cancelled' ? 'info' : 'warning'"
          >
            {{ row.statusText }}
          </el-tag>
        </template>
      </el-table-column>
    </el-table>
  </div>
</template>

<script setup>
import { ref, reactive, onMounted, onUnmounted } from 'vue'
import { ElMessage } from 'element-plus'

const list = ref([])
const coachStats = ref([])
const loading = ref(false)
const coachOptions = ref([])

function fmt(d) {
  const y = d.getFullYear()
  const m = String(d.getMonth() + 1).padStart(2, '0')
  const day = String(d.getDate()).padStart(2, '0')
  return `${y}-${m}-${day}`
}

function startOfWeek(d) {
  const x = new Date(d)
  const day = x.getDay()
  const diff = day === 0 ? 6 : day - 1 // 周一起
  x.setDate(x.getDate() - diff)
  return x
}

const today = new Date()
const filters = reactive({
  startDate: fmt(startOfWeek(today)),
  endDate: fmt(today),
  coachId: '',
  courseType: '',
  attendStatus: ''
})

function setRange(type) {
  const now = new Date()
  if (type === 'week') {
    filters.startDate = fmt(startOfWeek(now))
    filters.endDate = fmt(now)
  } else if (type === 'month') {
    const s = new Date(now.getFullYear(), now.getMonth(), 1)
    filters.startDate = fmt(s)
    filters.endDate = fmt(now)
  } else if (type === 'last7') {
    const s = new Date(now)
    s.setDate(s.getDate() - 6)
    filters.startDate = fmt(s)
    filters.endDate = fmt(now)
  }
  loadData()
}

const base = import.meta.env.DEV
  ? '/api'
  : 'https://cloud1-d0gmljq45868f5766-1312769671.ap-shanghai.app.tcloudbase.com'

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

function downloadCsv(filename, headers, rows) {
  const escape = (v) => {
    const s = String(v ?? '')
    if (/[",\n\r]/.test(s)) return `"${s.replace(/"/g, '""')}"`
    return s
  }
  const lines = [headers.map(escape).join(',')].concat(rows.map((row) => row.map(escape).join(',')))
  const blob = new Blob(['\uFEFF' + lines.join('\r\n')], { type: 'text/csv;charset=utf-8;' })
  const url = URL.createObjectURL(blob)
  const a = document.createElement('a')
  a.href = url
  a.download = filename
  a.click()
  URL.revokeObjectURL(url)
}

async function loadCoaches() {
  const venueId = localStorage.getItem('venue_id') || ''
  try {
    const result = await post('/adminGetCoaches', { venueId })
    if (result.ok) coachOptions.value = result.list || []
  } catch (e) {
    console.error(e)
  }
}

async function loadData() {
  loading.value = true
  try {
    const venueId = localStorage.getItem('venue_id') || ''
    const result = await post('/adminGetCoachAttendance', {
      venueId,
      startDate: filters.startDate || '',
      endDate: filters.endDate || '',
      coachId: filters.coachId || '',
      courseType: filters.courseType || '',
      attendStatus: filters.attendStatus || ''
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '加载失败')
      list.value = []
      coachStats.value = []
      return
    }
    list.value = result.list || []
    coachStats.value = result.coachStats || []
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
    list.value = []
    coachStats.value = []
  } finally {
    loading.value = false
  }
}

function exportExcel() {
  if (!list.value.length) return ElMessage.warning('没有明细')
  downloadCsv(
    `出勤明细_${filters.startDate}_${filters.endDate}.csv`,
    ['日期', '教练', '区间累计课时', '时间段', '本节课时', '课程', '门店', '场地', '学员', '手机号', '状态'],
    list.value.map((r) => [
      r.date, r.coachName, r.coachTotalHours || 0, r.time, r.hours || 0,
      r.courseName, r.venueName, r.court, r.userName, r.phone, r.statusText
    ])
  )
  ElMessage.success('明细已导出')
}

function exportCoachSummary() {
  if (!coachStats.value.length) return ElMessage.warning('没有汇总')
  downloadCsv(
    `工资汇总_${filters.startDate}_${filters.endDate}.csv`,
    ['教练', '区间累计出勤课时', '已完成节数', '待上课', '已取消'],
    coachStats.value.map((r) => [
      r.coachName, r.completedHours, r.completedCount, r.pendingCount, r.cancelledCount
    ])
  )
  ElMessage.success('工资汇总已导出')
}

function onVenueChanged() {
  loadCoaches()
  loadData()
}

onMounted(() => {
  loadCoaches()
  loadData()
  window.addEventListener('venue-changed', onVenueChanged)
})
onUnmounted(() => window.removeEventListener('venue-changed', onVenueChanged))
</script>

<style scoped>
.page-header {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  margin-bottom: 12px;
  gap: 12px;
}
h2 {
  margin: 0;
  font-size: 20px;
}
.period {
  margin: 6px 0 0;
  font-size: 13px;
  color: #606266;
}
.period-tip {
  color: #909399;
  font-size: 12px;
}
.actions {
  display: flex;
  gap: 8px;
  flex-wrap: wrap;
}
.filters {
  background: #fff;
  padding: 10px 14px 0;
  border-radius: 8px;
  margin-bottom: 14px;
}
.coach-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(160px, 1fr));
  gap: 12px;
  margin-bottom: 16px;
}
.coach-card {
  background: #fff;
  border: 1px solid #e4e7ed;
  border-radius: 10px;
  padding: 14px 16px;
  border-left: 4px solid #1a5c3a;
}
.cname {
  font-size: 14px;
  color: #303133;
  font-weight: 600;
}
.chours {
  font-size: 28px;
  font-weight: 700;
  color: #1a5c3a;
  line-height: 1.2;
  margin: 6px 0 4px;
}
.chours .unit {
  font-size: 14px;
  font-weight: 600;
  margin-left: 2px;
}
.cmeta {
  font-size: 12px;
  color: #909399;
}
.detail-head {
  display: flex;
  align-items: baseline;
  gap: 12px;
  margin-bottom: 8px;
  font-size: 14px;
  font-weight: 600;
  color: #303133;
}
.detail-tip {
  font-size: 12px;
  font-weight: 400;
  color: #909399;
}
.detail-table {
  background: #fff;
}
.em {
  color: #1a5c3a;
  font-weight: 700;
}
.muted {
  color: #c0c4cc;
}
</style>
