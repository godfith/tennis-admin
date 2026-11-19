<template>
  <div class="page">
    <div class="page-header">
      <div>
        <h2>订场率</h2>
        <p class="sub">
          按工作日 / 周末、合并时段统计。订场率 = 已占用小时 ÷ 可订小时（场地数 × 该段内开放的小时 × 对应星期的天数）。
          已占用含普通订场、锁场和团课。闭馆时段显示为 —，不记成 0%。海心沙匹克球单独一行。
        </p>
      </div>
      <el-button type="success" plain @click="openExportDialog">导出明细</el-button>
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
          <el-button size="small" @click="setRange('lastWeek')">上周</el-button>
          <el-button size="small" @click="setRange('month')">本月</el-button>
          <el-button size="small" @click="setRange('last7')">近7天</el-button>
          <el-button size="small" @click="setRange('last30')">近30天</el-button>
        </el-button-group>
      </el-form-item>
      <el-form-item label="场馆">
        <div class="export-venue-row">
          <el-select v-model="selectedVenueIds" multiple collapse-tags collapse-tags-tooltip placeholder="全部场馆" style="min-width: 200px" clearable>
            <el-option v-for="v in venueOptions" :key="v.venueId" :label="v.name" :value="v.venueId" />
          </el-select>
          <el-button @click="togglePageVenues">{{ pageVenuesAllSelected ? '取消全选' : '全选' }}</el-button>
        </div>
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
          <div class="stat-value">{{ formatSummaryRate(summary.rate) }}</div>
          <div class="stat-split">{{ summary.occupied }} / {{ summary.capacity }} 小时</div>
        </div>
      </el-col>
      <el-col :xs="12" :sm="8" :md="6">
        <div class="stat-card">
          <div class="stat-label">已占用小时</div>
          <div class="stat-value">{{ summary.occupied }}</div>
          <div class="stat-split">含订场、锁场、团课</div>
        </div>
      </el-col>
      <el-col :xs="12" :sm="8" :md="6">
        <div class="stat-card">
          <div class="stat-label">可订小时</div>
          <div class="stat-value">{{ summary.capacity }}</div>
          <div class="stat-split">{{ summary.courts }} 片场 · {{ summary.days }} 天</div>
        </div>
      </el-col>
      <el-col :xs="12" :sm="8" :md="6">
        <div class="stat-card">
          <div class="stat-label">订场记录数</div>
          <div class="stat-value">{{ summary.bookedCount }}</div>
          <div class="stat-split">booked / locked / pending_pay</div>
        </div>
      </el-col>
    </el-row>

    <div
      class="card"
      v-for="part in matrix.dayParts"
      v-show="!matrix.rows.length || visibleBucketsFor(part).length"
      :key="part.id"
    >
      <div class="card-title">
        {{ dateRangeTitle }}　{{ part.label }}
        <span class="part-days" v-if="part.days && part.days.length">（{{ part.days.length }} 天）</span>
      </div>
      <div class="matrix-wrap" v-loading="loading">
        <table class="matrix">
          <thead>
            <tr>
              <th class="corner">门店</th>
              <th v-for="b in visibleBucketsFor(part)" :key="b.id" :class="'bucket bucket-' + b.id">{{ b.label }}</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="row in matrix.rows" :key="part.id + row.key">
              <td class="store" :class="{ pickle: row.sport === 'pickleball' }">
                {{ row.label }}
                <span class="store-meta" v-if="row.courts === 0">（暂无开放场地）</span>
              </td>
              <td
                v-for="b in visibleBucketsFor(part)"
                :key="row.key + b.id"
                class="rate"
                :style="{ background: cellColor(cellOf(row, part.id, b.id)) }"
                :title="cellTip(row, part.id, b.id)"
              >
                {{ cellOf(row, part.id, b.id).display }}
              </td>
            </tr>
            <tr v-if="!matrix.rows.length">
              <td class="empty" :colspan="1 + (visibleBucketsFor(part).length || 8)">暂无数据，请选择日期后查询</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="card">
      <div class="card-title">时段热力（按星期，小时明细）</div>
      <div class="heat-wrap" v-loading="loading">
        <div class="heat-grid" :style="{ gridTemplateColumns: heatCols }">
          <div class="heat-cell head corner">时段 \ 星期</div>
          <div v-for="w in weekdayLabels" :key="w" class="heat-cell head">{{ w }}</div>
          <template v-for="t in visibleHeatSlots" :key="t">
            <div class="heat-cell time">{{ t.slice(0, 5) }}</div>
            <div
              v-for="w in 7"
              :key="t + w"
              class="heat-cell cell"
              :style="{ background: heatColor(heatCell(w, t)) }"
              :title="heatTip(w, t)"
            >
              <span v-if="heatCell(w, t) != null">{{ formatSummaryRate(heatCell(w, t)) }}</span>
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
                  <div class="bar-bg"><div class="bar-fill" :style="{ width: Math.min(row.rate || 0, 100) + '%' }"></div></div>
                  <span>{{ formatSummaryRate(row.rate) }}</span>
                </div>
              </template>
            </el-table-column>
          </el-table>
        </div>
      </el-col>
      <el-col :xs="24" :md="12">
        <div class="card">
          <div class="card-title">按时段</div>
          <el-table :data="visibleByTime" stripe border size="small" max-height="360" v-loading="loading">
            <el-table-column prop="time" label="时段" width="120" />
            <el-table-column label="占用/可订" width="110" align="right">
              <template #default="{ row }">{{ row.occupied }}/{{ row.capacity }}</template>
            </el-table-column>
            <el-table-column label="订场率" min-width="140" align="right">
              <template #default="{ row }">
                <div class="rate-cell">
                  <div class="bar-bg"><div class="bar-fill" :style="{ width: Math.min(row.rate || 0, 100) + '%' }"></div></div>
                  <span>{{ formatSummaryRate(row.rate) }}</span>
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
            <el-table-column label="订场率" width="110" align="right">
              <template #default="{ row }">{{ formatSummaryRate(row.rate) }}</template>
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
                  <div class="bar-bg"><div class="bar-fill" :style="{ width: Math.min(row.rate || 0, 100) + '%' }"></div></div>
                  <span>{{ formatSummaryRate(row.rate) }}</span>
                </div>
              </template>
            </el-table-column>
          </el-table>
        </div>
      </el-col>
    </el-row>

    <el-dialog v-model="exportVisible" title="导出明细" width="520px">
      <el-form label-width="80px">
        <el-form-item label="开始" required>
          <el-date-picker v-model="exportStartDate" type="date" value-format="YYYY-MM-DD" style="width: 100%" />
        </el-form-item>
        <el-form-item label="结束" required>
          <el-date-picker v-model="exportEndDate" type="date" value-format="YYYY-MM-DD" style="width: 100%" />
        </el-form-item>
        <el-form-item label="场馆">
          <div class="export-venue-row">
            <el-select v-model="exportVenueIds" multiple collapse-tags collapse-tags-tooltip placeholder="全部场馆" clearable style="flex: 1">
              <el-option v-for="v in venueOptions" :key="v.venueId" :label="v.name" :value="v.venueId" />
            </el-select>
            <el-button @click="toggleExportVenues">{{ exportVenuesAllSelected ? '取消全选' : '全选' }}</el-button>
          </div>
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="exportVisible = false">取消</el-button>
        <el-button type="primary" :loading="exportLoading" @click="doExport">导出</el-button>
      </template>
    </el-dialog>
  </div>
</template>

<script setup>
import { ref, computed, onMounted, onUnmounted, watch } from 'vue'
import { ElMessage } from 'element-plus'

const FALLBACK_SLOTS = [
  '08:00-09:00', '09:00-10:00', '10:00-11:00', '11:00-12:00',
  '12:00-13:00', '13:00-14:00',
  '14:00-15:00', '15:00-16:00', '16:00-17:00', '17:00-18:00',
  '18:00-19:00', '19:00-20:00', '20:00-21:00', '21:00-22:00'
]
const allSlots = ref(FALLBACK_SLOTS.slice())
const weekdayLabels = ['周一', '周二', '周三', '周四', '周五', '周六', '周日']
const emptyMatrix = () => ({
  buckets: [
    { id: '08-10', label: '8-10点' },
    { id: '10-12', label: '10-12点' },
    { id: '12-13', label: '12-13点' },
    { id: '13-15', label: '13-15点' },
    { id: '15-18', label: '15-18点' },
    { id: '18-19', label: '18-19点' },
    { id: '19-21', label: '19-21点' },
    { id: '21-22', label: '21-22点' }
  ],
  dayParts: [
    { id: 'weekday', label: '周一至五', days: [] },
    { id: 'weekend', label: '周六日', days: [] }
  ],
  rows: []
})

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
const displaySlots = ref(FALLBACK_SLOTS.slice())
const matrix = ref(emptyMatrix())

const exportVisible = ref(false)
const exportLoading = ref(false)
const exportStartDate = ref('')
const exportEndDate = ref('')
const exportVenueIds = ref([])

const base = import.meta.env.DEV
  ? '/api'
  : 'https://cloud1-d3g0pb1qk028e3585-d862bc2-1312769671.ap-shanghai.app.tcloudbase.com'

const heatCols = computed(() => '88px repeat(7, minmax(56px, 1fr))')
const dateRangeTitle = computed(() => formatRangeTitle(startDate.value, endDate.value))
const visibleHeatSlots = computed(() => heatSlotsWithCapacity(displaySlots.value, heatmap.value))
const visibleByTime = computed(() => (byTime.value || []).filter((r) => (r.capacity || 0) > 0))
const exportVenuesAllSelected = computed(() => {
  const all = venueOptions.value || []
  return all.length > 0 && exportVenueIds.value.length === all.length
})
const pageVenuesAllSelected = computed(() => {
  const all = venueOptions.value || []
  return all.length > 0 && selectedVenueIds.value.length === all.length
})
function toggleExportVenues() {
  if (exportVenuesAllSelected.value) exportVenueIds.value = []
  else exportVenueIds.value = (venueOptions.value || []).map((v) => v.venueId)
}
function togglePageVenues() {
  if (pageVenuesAllSelected.value) selectedVenueIds.value = []
  else selectedVenueIds.value = (venueOptions.value || []).map((v) => v.venueId)
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
function formatRangeTitle(start, end) {
  if (!start || !end) return ''
  return start.slice(5).replace('-', '.') + '-' + end.slice(5).replace('-', '.')
}

function setRange(type) {
  const now = new Date()
  if (type === 'week') {
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

function formatSummaryRate(rate) {
  if (rate == null || rate === '') return '—'
  const n = Number(rate)
  if (!Number.isFinite(n)) return '—'
  return n.toFixed(2) + '%'
}

function cellOf(row, partId, bucketId) {
  const cell = row && row.cells && row.cells[partId] && row.cells[partId][bucketId]
  if (cell) return cell
  return { capacity: 0, occupied: 0, rate: null, display: '—' }
}

function cellTip(row, partId, bucketId) {
  const cell = cellOf(row, partId, bucketId)
  if (!cell.capacity) return (row.label || '') + ' 该时段不开门'
  return `${row.label} ${cell.display}（${cell.occupied}/${cell.capacity}）`
}

function cellColor(cell) {
  if (!cell || !cell.capacity || cell.rate == null) return '#eef0f2'
  return heatColor(cell.rate)
}

function heatSlotsWithCapacity(slots, heatRows) {
  const list = (slots && slots.length) ? slots : []
  const heat = heatRows || []
  return list.filter((t) => heat.some((h) => h.time === t && (h.capacity || 0) > 0))
}

function visibleBucketsFor(part, matrixData) {
  const m = matrixData || matrix.value
  const buckets = m.buckets || []
  const rows = m.rows || []
  const partId = part && part.id
  if (!partId || !rows.length) return buckets
  return buckets.filter((b) => rows.some((row) => (cellOf(row, partId, b.id).capacity || 0) > 0))
}

async function loadHours() {
  const vids = selectedVenueIds.value.length
    ? selectedVenueIds.value
    : (localStorage.getItem('venue_id') ? [localStorage.getItem('venue_id')] : [])
  const vid = vids[0] || ''
  if (!vid) {
    allSlots.value = FALLBACK_SLOTS.slice()
    return
  }
  try {
    const result = await post('/adminGetVenueHours', { venueId: vid })
    const slots = (result && result.ok && Array.isArray(result.slots) && result.slots.length)
      ? result.slots.slice()
      : FALLBACK_SLOTS.slice()
    slots.sort()
    allSlots.value = slots
    selectedSlots.value = selectedSlots.value.filter((t) => allSlots.value.includes(t))
  } catch (e) {
    allSlots.value = FALLBACK_SLOTS.slice()
  }
}

async function loadVenues() {
  try {
    const result = await post('/adminGetVenues', {})
    venueOptions.value = (result.list || []).map((v) => ({
      venueId: v.venueId || v._id,
      name: v.name
    }))
    // 订场率主表按全部门店对比，不再默认只看当前登录场馆
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
    displaySlots.value = (result.slots && result.slots.length) ? result.slots : FALLBACK_SLOTS.slice()
    matrix.value = (result.matrix && result.matrix.rows)
      ? result.matrix
      : emptyMatrix()
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
  return `${row.weekdayLabel} ${time}：${formatSummaryRate(row.rate)}（${row.occupied}/${row.capacity}）`
}
function toHex(n) {
  const s = Math.round(n).toString(16)
  return s.length < 2 ? '0' + s : s
}
function heatColor(rate) {
  if (rate == null) return '#f5f7fa'
  const r = Math.max(0, Math.min(100, Number(rate) || 0))
  const light = { r: 232, g: 245, b: 233 }
  const dark = { r: 26, g: 92, b: 58 }
  const t = r / 100
  return '#' + toHex(light.r + (dark.r - light.r) * t) + toHex(light.g + (dark.g - light.g) * t) + toHex(light.b + (dark.b - light.b) * t)
}

function shortVenueName(name) {
  const s = String(name || '')
    .replace(/山羊Goat网球馆|GotGoat网球馆/g, '')
    .replace(/[（(].*?[）)]/g, '')
    .replace(/\s+/g, '')
    .trim()
  return s || name || ''
}

function venueNamesFor(ids) {
  if (!ids || !ids.length) return '全部场馆'
  return ids.map((id) => {
    const v = venueOptions.value.find((x) => x.venueId === id)
    return v ? v.name : id
  }).join('、')
}

function exportFileName(start, end, venueIds) {
  let extra = ''
  if (venueIds && venueIds.length) {
    const names = venueIds.map((id) => {
      const v = venueOptions.value.find((x) => x.venueId === id)
      return shortVenueName(v ? v.name : '')
    }).filter(Boolean)
    let joined = names.join('+')
    if (joined.length > 24) {
      joined = names.slice(0, 2).join('+') + (names.length > 2 ? '等' : '')
    }
    if (joined) extra = '_' + joined
  }
  return `订场率_${start}_${end}${extra}.xls`
}

function escapeHtml(s) {
  return String(s == null ? '' : s)
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;')
}

function openExportDialog() {
  exportStartDate.value = startDate.value
  exportEndDate.value = endDate.value
  exportVenueIds.value = (selectedVenueIds.value || []).slice()
  exportVisible.value = true
}

function buildOccupancyHtml(result, opts) {
  const start = opts.startDate
  const end = opts.endDate
  const matrixData = (result.matrix && result.matrix.rows) ? result.matrix : emptyMatrix()
  const heatRows = result.heatmap || []
  const slots = heatSlotsWithCapacity(
    (result.slots && result.slots.length) ? result.slots : FALLBACK_SLOTS,
    heatRows
  )
  const sum = result.summary || { rate: 0, occupied: 0, capacity: 0 }
  const venueText = venueNamesFor(opts.venueIds)
  const rangeTitle = formatRangeTitle(start, end)
  const parts = []
  parts.push('<!DOCTYPE html>')
  parts.push('<html xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns="http://www.w3.org/TR/REC-html40">')
  parts.push('<head><meta charset="UTF-8"><title>订场率</title>')
  parts.push('<!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name>订场率</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]-->')
  parts.push(`<style>
    body { font-family: "Microsoft YaHei", "微软雅黑", Arial, sans-serif; color: #1a1a1a; }
    h1 { font-size: 18pt; color: #1a5c3a; margin: 0 0 8px; }
    .meta { font-size: 11pt; color: #555; margin: 0 0 4px; }
    h2 { font-size: 13pt; color: #1a5c3a; margin: 18px 0 8px; }
    table { border-collapse: collapse; margin-bottom: 8px; }
    th, td { border: 1px solid #e4e7ed; padding: 6px 8px; text-align: center; font-size: 10pt; }
    th { font-weight: 600; }
    .store { text-align: left; background: #f7f9f8; color: #1a5c3a; font-weight: 600; }
    .bucket { background: #f3a033; color: #fff; }
    .heat-head { background: #f3f7f4; color: #1a5c3a; }
    .muted { color: #909399; font-weight: 400; }
    .rate { font-weight: 600; }
  </style></head><body>`)
  parts.push('<h1>订场率</h1>')
  parts.push(`<p class="meta">日期：${escapeHtml(start)} 至 ${escapeHtml(end)}</p>`)
  parts.push(`<p class="meta">场馆：${escapeHtml(venueText)}</p>`)
  parts.push(`<p class="meta">综合订场率：${escapeHtml(formatSummaryRate(sum.rate))}（${sum.occupied || 0} / ${sum.capacity || 0} 小时）</p>`)

  ;(matrixData.dayParts || []).forEach((part) => {
    if (part.days && part.days.length === 0) return
    const buckets = visibleBucketsFor(part, matrixData)
    if (!buckets.length) return
    const daysLabel = (part.days && part.days.length) ? `（${part.days.length} 天）` : ''
    parts.push(`<h2>${escapeHtml(rangeTitle)}　${escapeHtml(part.label)}${daysLabel}</h2>`)
    parts.push('<table><col style="width:140px">' + buckets.map(() => '<col style="width:86px">').join('') + '<thead><tr><th class="store">门店</th>')
    buckets.forEach((b) => parts.push(`<th class="bucket">${escapeHtml(b.label)}</th>`))
    parts.push('</tr></thead><tbody>')
    if (!matrixData.rows.length) {
      parts.push(`<tr><td colspan="${1 + buckets.length}" class="muted">暂无数据</td></tr>`)
    } else {
      matrixData.rows.forEach((row) => {
        const closedNote = row.courts === 0 ? '<span class="muted">（暂无开放场地）</span>' : ''
        parts.push(`<tr><td class="store">${escapeHtml(row.label)}${closedNote}</td>`)
        buckets.forEach((b) => {
          const cell = cellOf(row, part.id, b.id)
          const bg = cellColor(cell)
          const color = (!cell.capacity || cell.rate == null) ? 'color:#909399;font-weight:400;' : ''
          parts.push(`<td class="rate" bgcolor="${bg}" style="background:${bg};${color}">${escapeHtml(cell.display)}</td>`)
        })
        parts.push('</tr>')
      })
    }
    parts.push('</tbody></table>')
  })

  parts.push('<h2>时段热力（按星期，小时明细）</h2>')
  parts.push('<table><col style="width:88px">' + weekdayLabels.map(() => '<col style="width:70px">').join('') + '<thead><tr><th class="heat-head">时段 \\ 星期</th>')
  weekdayLabels.forEach((w) => parts.push(`<th class="heat-head">${w}</th>`))
  parts.push('</tr></thead><tbody>')
  if (!slots.length) {
    parts.push('<tr><td colspan="8" class="muted">暂无开放时段</td></tr>')
  } else {
    slots.forEach((t) => {
      parts.push(`<tr><td class="store">${escapeHtml(String(t).slice(0, 5))}</td>`)
      for (let w = 1; w <= 7; w++) {
        const row = heatRows.find((h) => h.weekday === w && h.time === t)
        const hasCap = !!(row && row.capacity > 0)
        const rate = hasCap ? row.rate : null
        const bg = hasCap && rate != null ? heatColor(rate) : '#f5f7fa'
        const text = hasCap && rate != null ? formatSummaryRate(rate) : '—'
        const color = hasCap && rate != null ? '' : 'color:#c0c4cc;font-weight:400;'
        parts.push(`<td bgcolor="${bg}" style="background:${bg};font-weight:600;${color}">${escapeHtml(text)}</td>`)
      }
      parts.push('</tr>')
    })
  }
  parts.push('</tbody></table></body></html>')
  return parts.join('')
}

function downloadXls(filename, html) {
  const blob = new Blob(['\uFEFF' + html], { type: 'application/vnd.ms-excel;charset=utf-8;' })
  const url = URL.createObjectURL(blob)
  const a = document.createElement('a')
  a.href = url
  a.download = filename
  a.click()
  URL.revokeObjectURL(url)
}

async function doExport() {
  if (!exportStartDate.value || !exportEndDate.value) {
    ElMessage.warning('请选择日期')
    return
  }
  exportLoading.value = true
  try {
    const venueIds = exportVenueIds.value.length ? exportVenueIds.value : undefined
    const result = await post('/adminGetOccupancy', {
      startDate: exportStartDate.value,
      endDate: exportEndDate.value,
      venueIds
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '导出失败')
      return
    }
    const html = buildOccupancyHtml(result, {
      startDate: exportStartDate.value,
      endDate: exportEndDate.value,
      venueIds: exportVenueIds.value
    })
    downloadXls(exportFileName(exportStartDate.value, exportEndDate.value, exportVenueIds.value), html)
    exportVisible.value = false
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    exportLoading.value = false
  }
}

watch(selectedVenueIds, () => {
  selectedCourts.value = []
  loadCourts()
  loadHours()
})

onMounted(async () => {
  await loadVenues()
  await loadHours()
  await loadCourts()
  setRange('last7')
  window.addEventListener('venue-changed', onVenueChanged)
})
onUnmounted(() => window.removeEventListener('venue-changed', onVenueChanged))

function onVenueChanged() {
  const cur = localStorage.getItem('venue_id') || ''
  if (cur) selectedVenueIds.value = [cur]
  loadHours().then(() => loadCourts()).then(loadData)
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
.sub { margin: 6px 0 0; font-size: 13px; color: #909399; max-width: 760px; line-height: 1.5; }
.filters {
  background: #fff;
  padding: 10px 14px 0;
  border-radius: 8px;
  margin-bottom: 14px;
}
.export-venue-row {
  display: flex;
  align-items: center;
  gap: 8px;
  width: 100%;
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
.part-days { font-weight: 400; color: #909399; font-size: 12px; }
.matrix-wrap { overflow-x: auto; }
.matrix {
  width: 100%;
  border-collapse: collapse;
  min-width: 860px;
  font-size: 13px;
}
.matrix th, .matrix td {
  border: 1px solid #e4e7ed;
  padding: 8px 6px;
  text-align: center;
}
.matrix th.corner, .matrix td.store {
  text-align: left;
  padding-left: 10px;
  font-weight: 600;
  white-space: nowrap;
  background: #f7f9f8;
  color: #1a5c3a;
}
.matrix td.store.pickle { color: #0d7377; }
.store-meta { font-weight: 400; color: #909399; font-size: 12px; margin-left: 4px; }
.matrix thead th.bucket {
  background: #f3a033;
  color: #fff;
  font-weight: 600;
}
.matrix thead th.bucket-12-13,
.matrix thead th.bucket-18-19 { background: #f3b14a; }
.matrix thead th.bucket-21-22 { background: #e8b84a; }
.matrix td.rate { font-weight: 600; color: #1a1a1a; }
.matrix td.empty { text-align: center; color: #909399; padding: 18px; }
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
