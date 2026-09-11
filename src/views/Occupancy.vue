<template>
  <div class="page">
    <div class="page-header">
      <div>
        <h2>订场率</h2>
        <p class="sub">
          订场率 = 已占用场次 ÷ 可订场次。可订场次按「场地数 × 天数 × 时段数」计算；
          已占用含普通订场与团课占用。支持多场馆、多场地、多时段筛选。
        </p>
      </div>
      <el-button type="success" plain :disabled="!byDate.length" @click="exportCsv">导出明细</el-button>
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
          <el-button size="small" @click="setRange('last30')">近30天</el-button>
        </el-button-group>
      </el-form-item>
      <el-form-item label="场馆">
        <el-select v-model="selectedVenueIds" multiple collapse-tags collapse-tags-tooltip placeholder="全部场馆" style="min-width: 200px" clearable>
          <el-option v-for="v in venueOptions" :key="v.venueId" :label="v.name" :value="v.venueId" />
        </el-select>
      </el-form-item>
      <el-form-item label="场地">
        <el-select v-model="selectedCourts" multiple collapse-tags collapse-tags-tooltip placeholder="全部场地" style="min-width: 180px" clearable>
          <el-option v-for="c in courtOptions" :key="c.venueId + c.name" :label="courtLabel(c)" :value="c.name" />
        </el-select>
      </el-form-item>
      <el-form-item label="时段">
        <el-select v-model="selectedSlots" multiple collapse-tags collapse-tags-tooltip placeholder="全部时段" style="min-width: 200px" clearable>
          <el-option v-for="t in allSlots" :key="t" :label="t" :value="t" />
        </el-select>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" :loading="loading" @click="loadData">查询</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="16" class="stat-row">
      <el-col :xs="12" :sm="8" :md="6">
        <div class="stat-card main">
          <div class="stat-label">综合订场率</div>
          <div class="stat-value">{{ summary.rate }}%</div>
          <div class="stat-split">{{ summary.occupied }} / {{ summary.capacity }} 场次</div>
        </div>
      </el-col>
      <el-col :xs="12" :sm="8" :md="6">
        <div class="stat-card">
          <div class="stat-label">已占用场次</div>
          <div class="stat-value">{{ summary.occupied }}</div>
          <div class="stat-split">含团课占用</div>
        </div>
      </el-col>
      <el-col :xs="12" :sm="8" :md="6">
        <div class="stat-card">
          <div class="stat-label">可订场次</div>
          <div class="stat-value">{{ summary.capacity }}</div>
          <div class="stat-split">{{ summary.courts }} 片场 · {{ summary.days }} 天</div>
        </div>
      </el-col>
      <el-col :xs="12" :sm="8" :md="6">
        <div class="stat-card">
          <div class="stat-label">订场记录数</div>
          <div class="stat-value">{{ summary.bookedCount }}</div>
          <div class="stat-split">booked 状态行数</div>
        </div>
      </el-col>
    </el-row>

    <div class="card">
      <div class="card-title">时段热力（按星期）</div>
      <div class="heat-wrap" v-loading="loading">
        <div class="heat-grid" :style="{ gridTemplateColumns: heatCols }">
          <div class="heat-cell head corner">时段 \ 星期</div>
          <div v-for="w in weekdayLabels" :key="w" class="heat-cell head">{{ w }}</div>
          <template v-for="t in displaySlots" :key="t">
            <div class="heat-cell time">{{ t.slice(0, 5) }}</div>
            <div
              v-for="w in 7"
              :key="t + w"
              class="heat-cell cell"
              :style="{ background: heatColor(heatCell(w, t)) }"
              :title="heatTip(w, t)"
            >
              <span v-if="heatCell(w, t) != null">{{ heatCell(w, t) }}%</span>
              <span v-else class="muted">—</span>
            </div>
          </template>
        </div>
        <div class="heat-legend">
          <span>低</span>
          <span class="bar"></span>
          <span>高</span>
        </div>
      </div>
    </div>

    <el-row :gutter="16">
      <el-col :xs="24" :md="12">
        <div class="card">
          <div class="card-title">按场地</div>
          <el-table :data="byCourt" stripe border size="small" max-height="360" v-loading="loading">
            <el-table-column prop="venueName" label="场馆" min-width="120" />
            <el-table-column prop="court" label="场地" width="90" />
            <el-table-column label="占用/可订" width="100" align="right">
              <template #default="{ row }">{{ row.occupied }}/{{ row.capacity }}</template>
            </el-table-column>
            <el-table-column label="订场率" width="110" align="right">
              <template #default="{ row }">
                <div class="rate-cell">
                  <div class="bar-bg"><div class="bar-fill" :style="{ width: Math.min(row.rate, 100) + '%' }"></div></div>
                  <span>{{ row.rate }}%</span>
                </div>
              </template>
            </el-table-column>
          </el-table>
        </div>
      </el-col>
      <el-col :xs="24" :md="12">
        <div class="card">
          <div class="card-title">按时段</div>
          <el-table :data="byTime" stripe border size="small" max-height="360" v-loading="loading">
            <el-table-column prop="time" label="时段" width="120" />
            <el-table-column label="占用/可订" width="110" align="right">
              <template #default="{ row }">{{ row.occupied }}/{{ row.capacity }}</template>
            </el-table-column>
            <el-table-column label="订场率" min-width="140" align="right">
              <template #default="{ row }">
                <div class="rate-cell">
                  <div class="bar-bg"><div class="bar-fill" :style="{ width: Math.min(row.rate, 100) + '%' }"></div></div>
                  <span>{{ row.rate }}%</span>
                </div>
              </template>
            </el-table-column>
          </el-table>
        </div>
      </el-col>
    </el-row>

    <el-row :gutter="16">
      <el-col :xs="24" :md="12">
        <div class="card">
          <div class="card-title">按场馆</div>
          <el-table :data="byVenue" stripe border size="small" max-height="320" v-loading="loading">
            <el-table-column prop="venueName" label="场馆" min-width="140" />
            <el-table-column prop="courts" label="片数" width="70" align="right" />
            <el-table-column label="占用/可订" width="110" align="right">
              <template #default="{ row }">{{ row.occupied }}/{{ row.capacity }}</template>
            </el-table-column>
            <el-table-column label="订场率" width="100" align="right">
              <template #default="{ row }">{{ row.rate }}%</template>
            </el-table-column>
          </el-table>
        </div>
      </el-col>
      <el-col :xs="24" :md="12">
        <div class="card">
          <div class="card-title">按日趋势</div>
          <el-table :data="byDate" stripe border size="small" max-height="320" v-loading="loading">
            <el-table-column prop="date" label="日期" width="120" />
            <el-table-column label="占用/可订" width="110" align="right">
              <template #default="{ row }">{{ row.occupied }}/{{ row.capacity }}</template>
            </el-table-column>
            <el-table-column label="订场率" min-width="140" align="right">
              <template #default="{ row }">
                <div class="rate-cell">
                  <div class="bar-bg"><div class="bar-fill" :style="{ width: Math.min(row.rate, 100) + '%' }"></div></div>
                  <span>{{ row.rate }}%</span>
                </div>
              </template>
            </el-table-column>
          </el-table>
        </div>
      </el-col>
    </el-row>
  </div>
</template>

<script setup>
import { ref, computed, onMounted, onUnmounted, watch } from 'vue'
import { ElMessage } from 'element-plus'

const allSlots = [
  '08:00-09:00', '09:00-10:00', '10:00-11:00', '11:00-12:00',
  '14:00-15:00', '15:00-16:00', '16:00-17:00', '17:00-18:00',
  '18:00-19:00', '19:00-20:00', '20:00-21:00'
]
const weekdayLabels = ['周一', '周二', '周三', '周四', '周五', '周六', '周日']

const loading = ref(false)
const startDate = ref('')
const endDate = ref('')
const venueOptions = ref([])
const courtOptions = ref([])
const selectedVenueIds = ref([])
const selectedCourts = ref([])
const selectedSlots = ref([])

const summary = ref({ rate: 0, occupied: 0, capacity: 0, days: 0, courts: 0, bookedCount: 0 })
const byVenue = ref([])
const byCourt = ref([])
const byTime = ref([])
const byDate = ref([])
const heatmap = ref([])
const displaySlots = ref(allSlots)

const base = import.meta.env.DEV
  ? '/api'
  : 'https://cloud1-d3g0pb1qk028e3585-d862bc2-1312769671.ap-shanghai.app.tcloudbase.com'

const heatCols = computed(() => '88px repeat(7, minmax(56px, 1fr))')

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
  } else if (type === 'last30') {
    const s = new Date(now)
    s.setDate(s.getDate() - 29)
    startDate.value = ymd(s)
    endDate.value = ymd(now)
  } else {
    const s = new Date(now)
    s.setDate(s.getDate() - 6)
    startDate.value = ymd(s)
    endDate.value = ymd(now)
  }
  loadData()
}

function courtLabel(c) {
  if (selectedVenueIds.value.length !== 1 && venueOptions.value.length > 1) {
    const v = venueOptions.value.find((x) => x.venueId === c.venueId)
    return (v ? v.name.replace(/山羊Goat网球馆|GotGoat网球馆/g, '').replace(/[（(].*?[）)]/g, '') : '') + ' ' + c.name
  }
  return c.name
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

async function loadVenues() {
  try {
    const result = await post('/adminGetVenues', {})
    venueOptions.value = (result.list || []).map((v) => ({
      venueId: v.venueId || v._id,
      name: v.name
    }))
    const cur = localStorage.getItem('venue_id') || ''
    if (cur && !selectedVenueIds.value.length) {
      selectedVenueIds.value = [cur]
    }
  } catch (e) {
    venueOptions.value = []
  }
}

async function loadCourts() {
  const vids = selectedVenueIds.value.length
    ? selectedVenueIds.value
    : venueOptions.value.map((v) => v.venueId)
  if (!vids.length) {
    courtOptions.value = []
    return
  }
  try {
    const lists = await Promise.all(
      vids.map((id) => post('/adminGetCourts', { venueId: id }))
    )
    const all = []
    lists.forEach((r, i) => {
      ;(r.list || []).forEach((c) => {
        all.push({ venueId: vids[i], name: c.name })
      })
    })
    courtOptions.value = all
  } catch (e) {
    courtOptions.value = []
  }
}

async function loadData() {
  if (!startDate.value || !endDate.value) {
    ElMessage.warning('请选择日期')
    return
  }
  loading.value = true
  try {
    const body = {
      startDate: startDate.value,
      endDate: endDate.value,
      venueIds: selectedVenueIds.value.length ? selectedVenueIds.value : undefined,
      courts: selectedCourts.value.length ? selectedCourts.value : undefined,
      timeSlots: selectedSlots.value.length ? selectedSlots.value : undefined
    }
    const result = await post('/adminGetOccupancy', body)
    if (!result.ok) {
      ElMessage.error(result.msg || '加载失败')
      return
    }
    summary.value = result.summary || { rate: 0, occupied: 0, capacity: 0, days: 0, courts: 0, bookedCount: 0 }
    byVenue.value = result.byVenue || []
    byCourt.value = result.byCourt || []
    byTime.value = result.byTime || []
    byDate.value = result.byDate || []
    heatmap.value = result.heatmap || []
    displaySlots.value = (result.slots && result.slots.length) ? result.slots : allSlots
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    loading.value = false
  }
}

function heatCell(weekday, time) {
  const row = heatmap.value.find((h) => h.weekday === weekday && h.time === time)
  return row ? row.rate : null
}
function heatTip(weekday, time) {
  const row = heatmap.value.find((h) => h.weekday === weekday && h.time === time)
  if (!row) return '无数据'
  return `${row.weekdayLabel} ${time}：${row.rate}%（${row.occupied}/${row.capacity}）`
}
function heatColor(rate) {
  if (rate == null) return '#f5f7fa'
  const r = Math.max(0, Math.min(100, Number(rate) || 0))
  const light = { r: 232, g: 245, b: 233 }
  const dark = { r: 26, g: 92, b: 58 }
  const t = r / 100
  const rr = Math.round(light.r + (dark.r - light.r) * t)
  const gg = Math.round(light.g + (dark.g - light.g) * t)
  const bb = Math.round(light.b + (dark.b - light.b) * t)
  return `rgb(${rr},${gg},${bb})`
}

function exportCsv() {
  const lines = [['维度', '名称', '占用', '可订', '订场率%'].join(',')]
  byCourt.value.forEach((r) => {
    lines.push(['场地', (r.venueName || '') + ' ' + r.court, r.occupied, r.capacity, r.rate].join(','))
  })
  byTime.value.forEach((r) => {
    lines.push(['时段', r.time, r.occupied, r.capacity, r.rate].join(','))
  })
  byDate.value.forEach((r) => {
    lines.push(['日期', r.date, r.occupied, r.capacity, r.rate].join(','))
  })
  const blob = new Blob(['\uFEFF' + lines.join('\r\n')], { type: 'text/csv;charset=utf-8;' })
  const url = URL.createObjectURL(blob)
  const a = document.createElement('a')
  a.href = url
  a.download = `订场率_${startDate.value}_${endDate.value}.csv`
  a.click()
  URL.revokeObjectURL(url)
}

watch(selectedVenueIds, () => {
  selectedCourts.value = []
  loadCourts()
})

onMounted(async () => {
  await loadVenues()
  await loadCourts()
  setRange('last7')
  window.addEventListener('venue-changed', onVenueChanged)
})
onUnmounted(() => window.removeEventListener('venue-changed', onVenueChanged))

function onVenueChanged() {
  const cur = localStorage.getItem('venue_id') || ''
  if (cur) selectedVenueIds.value = [cur]
  loadCourts().then(loadData)
}
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
  border-top: 3px solid #c0c4cc;
  box-shadow: 0 1px 4px rgba(0,0,0,.04);
}
.stat-card.main { border-top-color: #1a5c3a; }
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
.rate-cell { display: flex; align-items: center; gap: 8px; justify-content: flex-end; }
.bar-bg {
  width: 64px;
  height: 8px;
  background: #eef2ef;
  border-radius: 4px;
  overflow: hidden;
}
.bar-fill {
  height: 100%;
  background: #1a5c3a;
  border-radius: 4px;
}
.heat-wrap { overflow-x: auto; }
.heat-grid {
  display: grid;
  min-width: 640px;
  gap: 2px;
}
.heat-cell {
  min-height: 36px;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 12px;
  border-radius: 4px;
}
.heat-cell.head {
  background: #f3f7f4;
  font-weight: 600;
  color: #1a5c3a;
}
.heat-cell.time {
  background: #fafbfa;
  font-weight: 600;
  justify-content: flex-start;
  padding-left: 8px;
}
.heat-cell.cell { color: #1a1a1a; font-weight: 600; }
.heat-cell .muted { color: #c0c4cc; font-weight: 400; }
.heat-legend {
  display: flex;
  align-items: center;
  gap: 8px;
  margin-top: 10px;
  font-size: 12px;
  color: #909399;
}
.heat-legend .bar {
  width: 120px;
  height: 10px;
  border-radius: 4px;
  background: linear-gradient(90deg, #e8f5e9, #1a5c3a);
}
</style>
