<template>
  <div class="page">
    <div class="page-header">
      <h2>教练出勤</h2>
      <div class="actions">
        <el-button :loading="loading" @click="loadData">刷新</el-button>
        <el-button type="success" :disabled="!list.length" @click="exportExcel">导出 Excel</el-button>
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
      <el-form-item>
        <el-button type="primary" :loading="loading" @click="loadData">查询</el-button>
      </el-form-item>
    </el-form>

    <div class="summary" v-if="list.length">
      共 <b>{{ list.length }}</b> 条上课记录
    </div>

    <el-table :data="list" stripe border v-loading="loading" height="calc(100vh - 280px)">
      <el-table-column prop="date" label="日期" width="120" sortable />
      <el-table-column prop="coachName" label="教练姓名" width="120" />
      <el-table-column prop="time" label="时间段" width="130" />
      <el-table-column prop="courseName" label="上的课程" min-width="140" />
      <el-table-column prop="venueName" label="门店" min-width="140" />
      <el-table-column prop="court" label="场地" width="100" />
      <el-table-column prop="userName" label="学员姓名" width="120" />
      <el-table-column prop="phone" label="学员手机号" width="130" />
      <el-table-column prop="statusText" label="状态" width="90" />
    </el-table>
  </div>
</template>

<script setup>
import { ref, reactive, onMounted, onUnmounted } from 'vue'
import { ElMessage } from 'element-plus'

const list = ref([])
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
  courseType: ''
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
      courseType: filters.courseType || ''
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '加载失败')
      list.value = []
      return
    }
    list.value = result.list || []
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
    list.value = []
  } finally {
    loading.value = false
  }
}

function exportExcel() {
  if (!list.value.length) {
    ElMessage.warning('没有可导出的数据')
    return
  }
  const headers = ['日期', '教练姓名', '时间段', '上的课程', '门店', '场地', '学员姓名', '学员手机号', '状态']
  const rows = list.value.map((r) => [
    r.date || '',
    r.coachName || '',
    r.time || '',
    r.courseName || '',
    r.venueName || '',
    r.court || '',
    r.userName || '',
    r.phone || '',
    r.statusText || ''
  ])

  const escape = (v) => {
    const s = String(v ?? '')
    if (/[",\n\r]/.test(s)) return `"${s.replace(/"/g, '""')}"`
    return s
  }

  const lines = [headers.map(escape).join(',')].concat(
    rows.map((row) => row.map(escape).join(','))
  )
  // Excel 识别 UTF-8
  const bom = '\uFEFF'
  const blob = new Blob([bom + lines.join('\r\n')], {
    type: 'text/csv;charset=utf-8;'
  })
  const url = URL.createObjectURL(blob)
  const a = document.createElement('a')
  const name = `教练出勤_${filters.startDate || ''}_${filters.endDate || ''}.csv`
  a.href = url
  a.download = name
  a.click()
  URL.revokeObjectURL(url)
  ElMessage.success('已导出，可用 Excel 打开')
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
}
.filters {
  background: #fff;
  padding: 12px 16px 0;
  border-radius: 8px;
  margin-bottom: 12px;
}
.summary {
  margin-bottom: 8px;
  color: #666;
  font-size: 13px;
}
.summary b {
  color: #1a5c3a;
}
</style>
