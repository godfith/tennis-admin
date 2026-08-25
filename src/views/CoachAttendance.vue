<template>
  <div class="page">
    <div class="page-header">
      <h2>教练出勤</h2>
      <div class="actions">
        <el-button :loading="loading" @click="loadData">刷新</el-button>
        <el-button type="success" :disabled="!list.length" @click="exportExcel">导出明细</el-button>
        <el-button type="warning" :disabled="!coachStats.length" @click="exportCoachSummary">导出工资汇总</el-button>
      </div>
    </div>

    <el-form :inline="true" class="filters" @submit.prevent>
      <el-form-item label="开始日期">
        <el-date-picker
          v-model="filters.startDate"
          type="date"
          value-format="YYYY-MM-DD"
          placeholder="开始"
          style="width: 150px"
        />
      </el-form-item>
      <el-form-item label="结束日期">
        <el-date-picker
          v-model="filters.endDate"
          type="date"
          value-format="YYYY-MM-DD"
          placeholder="结束"
          style="width: 150px"
        />
      </el-form-item>
      <el-form-item label="教练">
        <el-select
          v-model="filters.coachId"
          clearable
          filterable
          placeholder="全部教练"
          style="width: 160px"
        >
          <el-option
            v-for="c in coachOptions"
            :key="c._id"
            :label="c.name"
            :value="c._id"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="课程">
        <el-select v-model="filters.courseType" clearable placeholder="全部" style="width: 120px">
          <el-option label="一对一私教" value="private" />
          <el-option label="团课" value="group" />
        </el-select>
      </el-form-item>
      <el-form-item label="状态">
        <el-select v-model="filters.attendStatus" clearable placeholder="全部" style="width: 120px">
          <el-option label="已完成" value="completed" />
          <el-option label="待上课" value="pending" />
          <el-option label="已取消" value="cancelled" />
        </el-select>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" :loading="loading" @click="loadData">查询</el-button>
      </el-form-item>
    </el-form>

    <div class="summary-cards" v-if="stats">
      <div class="card">
        <div class="num">{{ stats.total }}</div>
        <div class="label">记录数</div>
      </div>
      <div class="card done">
        <div class="num">{{ stats.completedHours }}</div>
        <div class="label">总出勤课时（小时）</div>
      </div>
      <div class="card pending">
        <div class="num">{{ stats.pending }}</div>
        <div class="label">待上课</div>
      </div>
      <div class="card cancel">
        <div class="num">{{ stats.cancelled }}</div>
        <div class="label">已取消</div>
      </div>
    </div>

    <!-- 按教练汇总：发工资用 -->
    <div class="coach-block" v-if="coachStats.length">
      <div class="block-title">教练累计出勤（筛选范围内 · 发工资依据）</div>
      <el-table :data="coachStats" stripe border size="small" style="margin-bottom: 16px">
        <el-table-column prop="coachName" label="教练姓名" min-width="120" />
        <el-table-column prop="completedHours" label="累计出勤课时" width="140">
          <template #default="{ row }">
            <b class="hours-em">{{ row.completedHours }} 小时</b>
          </template>
        </el-table-column>
        <el-table-column prop="completedCount" label="已完成节数" width="110" />
        <el-table-column prop="pendingCount" label="待上课" width="90" />
        <el-table-column prop="cancelledCount" label="已取消" width="90" />
      </el-table>
    </div>

    <div class="block-title">上课明细</div>
    <el-table :data="list" stripe border v-loading="loading" height="calc(100vh - 480px)">
      <el-table-column prop="date" label="日期" width="120" sortable />
      <el-table-column prop="coachName" label="教练姓名" width="110" />
      <el-table-column prop="coachTotalHours" label="累计出勤" width="100">
        <template #default="{ row }">
          <span class="hours-em">{{ row.coachTotalHours }}h</span>
        </template>
      </el-table-column>
      <el-table-column prop="time" label="时间段" width="120" />
      <el-table-column prop="hours" label="本节课时" width="90">
        <template #default="{ row }">{{ row.hours }}h</template>
      </el-table-column>
      <el-table-column prop="courseName" label="上的课程" min-width="130" />
      <el-table-column prop="venueName" label="门店" min-width="140" />
      <el-table-column prop="court" label="场地" width="90" />
      <el-table-column prop="userName" label="学员姓名" width="110" />
      <el-table-column prop="phone" label="学员手机号" width="120" />
      <el-table-column label="状态" width="90">
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
const stats = ref(null)
const loading = ref(false)
const coachOptions = ref([])

const today = new Date()
function fmt(d) {
  const y = d.getFullYear()
  const m = String(d.getMonth() + 1).padStart(2, '0')
  const day = String(d.getDate()).padStart(2, '0')
  return `${y}-${m}-${day}`
}
const start = new Date(today)
start.setDate(start.getDate() - 7)

const filters = reactive({
  startDate: fmt(start),
  endDate: fmt(today),
  coachId: '',
  courseType: '',
  attendStatus: ''
})

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
  const lines = [headers.map(escape).join(',')].concat(
    rows.map((row) => row.map(escape).join(','))
  )
  const blob = new Blob(['\uFEFF' + lines.join('\r\n')], {
    type: 'text/csv;charset=utf-8;'
  })
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
      stats.value = null
      return
    }
    list.value = result.list || []
    coachStats.value = result.coachStats || []
    stats.value = result.stats || null
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
    list.value = []
    coachStats.value = []
    stats.value = null
  } finally {
    loading.value = false
  }
}

function exportExcel() {
  if (!list.value.length) {
    ElMessage.warning('没有可导出的数据')
    return
  }
  downloadCsv(
    `教练出勤明细_${filters.startDate || ''}_${filters.endDate || ''}.csv`,
    [
      '日期',
      '教练姓名',
      '累计出勤课时',
      '时间段',
      '本节课时',
      '上的课程',
      '门店',
      '场地',
      '学员姓名',
      '学员手机号',
      '状态'
    ],
    list.value.map((r) => [
      r.date || '',
      r.coachName || '',
      r.coachTotalHours ?? 0,
      r.time || '',
      r.hours ?? 0,
      r.courseName || '',
      r.venueName || '',
      r.court || '',
      r.userName || '',
      r.phone || '',
      r.statusText || ''
    ])
  )
  ElMessage.success('明细已导出')
}

function exportCoachSummary() {
  if (!coachStats.value.length) {
    ElMessage.warning('没有汇总数据')
    return
  }
  downloadCsv(
    `教练工资汇总_${filters.startDate || ''}_${filters.endDate || ''}.csv`,
    ['教练姓名', '累计出勤课时(小时)', '已完成节数', '待上课', '已取消'],
    coachStats.value.map((r) => [
      r.coachName || '',
      r.completedHours ?? 0,
      r.completedCount ?? 0,
      r.pendingCount ?? 0,
      r.cancelledCount ?? 0
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

onUnmounted(() => {
  window.removeEventListener('venue-changed', onVenueChanged)
})
</script>

<style scoped>
.page-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 12px;
}
h2 {
  margin: 0;
  font-size: 20px;
}
.actions {
  display: flex;
  gap: 8px;
  flex-wrap: wrap;
}
.filters {
  background: #fff;
  padding: 12px 16px 0;
  border-radius: 8px;
  margin-bottom: 12px;
}
.summary-cards {
  display: flex;
  gap: 12px;
  margin-bottom: 12px;
  flex-wrap: wrap;
}
.summary-cards .card {
  background: #fff;
  border-radius: 8px;
  padding: 12px 20px;
  min-width: 120px;
  border: 1px solid #ebeef5;
}
.summary-cards .num {
  font-size: 22px;
  font-weight: 700;
  color: #303133;
}
.summary-cards .label {
  font-size: 12px;
  color: #909399;
  margin-top: 4px;
}
.summary-cards .done .num {
  color: #1a5c3a;
}
.summary-cards .pending .num {
  color: #e6a23c;
}
.summary-cards .cancel .num {
  color: #909399;
}
.block-title {
  font-size: 14px;
  font-weight: 600;
  color: #303133;
  margin-bottom: 8px;
}
.hours-em {
  color: #1a5c3a;
  font-weight: 700;
}
.coach-block {
  margin-bottom: 8px;
}
</style>
