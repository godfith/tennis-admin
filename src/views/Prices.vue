<template>
  <div class="page">
    <div class="page-header">
      <div>
        <h2>场地价格</h2>
        <p class="sub">按星期配置各场地各时段价格，支持多选行列批量填写</p>
      </div>
      <div class="toolbar">
        <el-button :loading="loading" @click="loadAll">刷新</el-button>
        <el-button type="primary" :loading="saving" @click="save">保存价格</el-button>
      </div>
    </div>

    <div class="card filters">
      <div class="filter-row">
        <span class="label">保存到星期</span>
        <el-checkbox-group v-model="applyWeekdays">
          <el-checkbox :value="1">一</el-checkbox>
          <el-checkbox :value="2">二</el-checkbox>
          <el-checkbox :value="3">三</el-checkbox>
          <el-checkbox :value="4">四</el-checkbox>
          <el-checkbox :value="5">五</el-checkbox>
          <el-checkbox :value="6">六</el-checkbox>
          <el-checkbox :value="7">日</el-checkbox>
        </el-checkbox-group>
        <el-button-group>
          <el-button size="small" @click="applyWeekdays = [1, 2, 3, 4, 5]">工作日</el-button>
          <el-button size="small" @click="applyWeekdays = [6, 7]">周末</el-button>
          <el-button size="small" @click="applyWeekdays = [1, 2, 3, 4, 5, 6, 7]">全周</el-button>
        </el-button-group>
      </div>
      <div class="filter-row">
        <span class="label">预览星期</span>
        <el-radio-group v-model="previewWeekday" size="small" @change="loadPrices">
          <el-radio-button :value="1">一</el-radio-button>
          <el-radio-button :value="2">二</el-radio-button>
          <el-radio-button :value="3">三</el-radio-button>
          <el-radio-button :value="4">四</el-radio-button>
          <el-radio-button :value="5">五</el-radio-button>
          <el-radio-button :value="6">六</el-radio-button>
          <el-radio-button :value="7">日</el-radio-button>
        </el-radio-group>
      </div>
    </div>

    <div class="card batch-bar">
      <span class="batch-label">批量填价</span>
      <el-input-number v-model="batchPrice" :min="0" :precision="0" size="default" />
      <span class="unit">元</span>
      <el-button type="success" plain :disabled="!selectedCols.length" @click="fillSelectedCols">
        应用到选中列 ({{ selectedCols.length }})
      </el-button>
      <el-button type="success" plain :disabled="!selectedRows.length" @click="fillSelectedRows">
        应用到选中行 ({{ selectedRows.length }})
      </el-button>
      <el-button type="warning" plain @click="fillAll">全部格子</el-button>
      <el-button link @click="clearSelection">清除选择</el-button>
    </div>

    <div class="card grid-card" v-loading="loading">
      <div class="table-scroll" v-if="courts.length">
        <table class="price-table">
          <thead>
            <tr>
              <th class="sticky corner">
                <el-checkbox
                  :model-value="allRowsSelected"
                  :indeterminate="someRowsSelected && !allRowsSelected"
                  @change="toggleAllRows"
                />
                场地
              </th>
              <th
                v-for="t in timeSlots"
                :key="'h-' + t"
                :class="{ selected: selectedCols.includes(t) }"
              >
                <div class="th-inner">
                  <el-checkbox
                    :model-value="selectedCols.includes(t)"
                    @change="(v) => toggleCol(t, v)"
                  />
                  <span class="th-time">{{ t.split('-')[0] }}</span>
                </div>
              </th>
            </tr>
          </thead>
          <tbody>
            <tr
              v-for="c in courts"
              :key="c.name"
              :class="{ 'row-selected': selectedRows.includes(c.name) }"
            >
              <td class="sticky court-cell">
                <el-checkbox
                  :model-value="selectedRows.includes(c.name)"
                  @change="(v) => toggleRow(c.name, v)"
                />
                <span class="court-name">{{ c.name }}</span>
              </td>
              <td
                v-for="t in timeSlots"
                :key="c.name + t"
                :class="{
                  'col-selected': selectedCols.includes(t),
                  'cell-highlight': selectedRows.includes(c.name) || selectedCols.includes(t)
                }"
              >
                <el-input-number
                  v-model="matrix[c.name][t]"
                  :min="0"
                  :precision="0"
                  size="small"
                  controls-position="right"
                  class="cell-input"
                />
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      <div v-else class="empty">请先在「场地管理」添加场地，并在顶部选择场馆</div>
    </div>
  </div>
</template>

<script setup>
import { ref, reactive, computed, onMounted, onUnmounted } from 'vue'
import { ElMessage } from 'element-plus'

const timeSlots = [
  '08:00-09:00',
  '09:00-10:00',
  '10:00-11:00',
  '11:00-12:00',
  '14:00-15:00',
  '15:00-16:00',
  '16:00-17:00',
  '17:00-18:00',
  '18:00-19:00',
  '19:00-20:00',
  '20:00-21:00'
]

const courts = ref([])
const matrix = reactive({})
const loading = ref(false)
const saving = ref(false)
const previewWeekday = ref(1)
const applyWeekdays = ref([1, 2, 3, 4, 5])
const batchPrice = ref(0)
const selectedCols = ref([])
const selectedRows = ref([])

const allRowsSelected = computed(
  () => courts.value.length > 0 && selectedRows.value.length === courts.value.length
)
const someRowsSelected = computed(() => selectedRows.value.length > 0)

const base = import.meta.env.DEV
  ? '/api'
  : 'https://cloud1-d0gmljq45868f5766-1312769671.ap-shanghai.app.tcloudbase.com'

function venueId() {
  return localStorage.getItem('venue_id') || ''
}

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

function ensureMatrix(courtNames) {
  courtNames.forEach((name) => {
    if (!matrix[name]) matrix[name] = {}
    timeSlots.forEach((t) => {
      if (matrix[name][t] == null) matrix[name][t] = 0
    })
  })
}

function toggleCol(t, checked) {
  if (checked) {
    if (!selectedCols.value.includes(t)) selectedCols.value.push(t)
  } else {
    selectedCols.value = selectedCols.value.filter((x) => x !== t)
  }
}

function toggleRow(name, checked) {
  if (checked) {
    if (!selectedRows.value.includes(name)) selectedRows.value.push(name)
  } else {
    selectedRows.value = selectedRows.value.filter((x) => x !== name)
  }
}

function toggleAllRows(checked) {
  selectedRows.value = checked ? courts.value.map((c) => c.name) : []
}

function clearSelection() {
  selectedCols.value = []
  selectedRows.value = []
}

function fillSelectedCols() {
  const p = Number(batchPrice.value) || 0
  selectedCols.value.forEach((t) => {
    courts.value.forEach((c) => {
      matrix[c.name][t] = p
    })
  })
  ElMessage.success(`已将选中 ${selectedCols.value.length} 列设为 ${p} 元`)
}

function fillSelectedRows() {
  const p = Number(batchPrice.value) || 0
  selectedRows.value.forEach((name) => {
    timeSlots.forEach((t) => {
      matrix[name][t] = p
    })
  })
  ElMessage.success(`已将选中 ${selectedRows.value.length} 行设为 ${p} 元`)
}

function fillAll() {
  const p = Number(batchPrice.value) || 0
  courts.value.forEach((c) => {
    timeSlots.forEach((t) => {
      matrix[c.name][t] = p
    })
  })
  ElMessage.success(`已全部设为 ${p} 元`)
}

async function loadCourts() {
  const vid = venueId()
  if (!vid) {
    courts.value = []
    return
  }
  const result = await post('/adminGetCourts', { venueId: vid })
  if (!result.ok) {
    ElMessage.error(result.msg || '加载场地失败')
    return
  }
  courts.value = (result.list || []).map((c) => ({
    name: c.name,
    _id: c._id
  }))
  ensureMatrix(courts.value.map((c) => c.name))
}

async function loadPrices() {
  const vid = venueId()
  if (!vid || !courts.value.length) return
  loading.value = true
  try {
    const result = await post('/adminGetCourtPrices', {
      venueId: vid,
      weekday: previewWeekday.value
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '加载价格失败')
      return
    }
    ensureMatrix(courts.value.map((c) => c.name))
    courts.value.forEach((c) => {
      timeSlots.forEach((t) => {
        matrix[c.name][t] = 0
      })
    })
    ;(result.list || []).forEach((row) => {
      if (matrix[row.court] && timeSlots.includes(row.timeSlot)) {
        matrix[row.court][row.timeSlot] = Number(row.price) || 0
      }
    })
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    loading.value = false
  }
}

async function loadAll() {
  loading.value = true
  try {
    await loadCourts()
    await loadPrices()
  } finally {
    loading.value = false
  }
}

async function save() {
  const vid = venueId()
  if (!vid) {
    ElMessage.warning('请先选择场馆')
    return
  }
  if (!applyWeekdays.value.length) {
    ElMessage.warning('请勾选要保存到的星期')
    return
  }
  const items = []
  courts.value.forEach((c) => {
    timeSlots.forEach((t) => {
      items.push({
        court: c.name,
        timeSlot: t,
        price: Number(matrix[c.name][t]) || 0
      })
    })
  })
  saving.value = true
  try {
    const result = await post('/adminSaveCourtPrices', {
      venueId: vid,
      weekdays: applyWeekdays.value,
      items
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '保存失败')
      return
    }
    ElMessage.success('已保存到所选星期')
    if (applyWeekdays.value.includes(previewWeekday.value)) {
      await loadPrices()
    }
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    saving.value = false
  }
}

function onVenueChanged() {
  clearSelection()
  loadAll()
}

onMounted(() => {
  loadAll()
  window.addEventListener('venue-changed', onVenueChanged)
})

onUnmounted(() => {
  window.removeEventListener('venue-changed', onVenueChanged)
})
</script>

<style scoped>
.page {
  max-width: 100%;
}
.page-header {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  margin-bottom: 16px;
  gap: 12px;
}
h2 {
  margin: 0;
  font-size: 20px;
  color: #1a5c3a;
}
.sub {
  margin: 4px 0 0;
  font-size: 13px;
  color: #909399;
}
.toolbar {
  display: flex;
  gap: 8px;
  flex-shrink: 0;
}
.card {
  background: #fff;
  border-radius: 10px;
  padding: 14px 18px;
  margin-bottom: 12px;
  box-shadow: 0 1px 4px rgba(0, 0, 0, 0.04);
}
.filter-row {
  display: flex;
  align-items: center;
  flex-wrap: wrap;
  gap: 10px;
  margin-bottom: 10px;
}
.filter-row:last-child {
  margin-bottom: 0;
}
.label {
  width: 72px;
  color: #606266;
  font-size: 13px;
  flex-shrink: 0;
}
.batch-bar {
  display: flex;
  align-items: center;
  flex-wrap: wrap;
  gap: 10px;
}
.batch-label {
  font-weight: 600;
  color: #1a5c3a;
  margin-right: 4px;
}
.unit {
  color: #909399;
  font-size: 13px;
  margin-right: 4px;
}
.grid-card {
  padding: 0;
  overflow: hidden;
}
.table-scroll {
  overflow-x: auto;
  padding: 8px;
}
.price-table {
  border-collapse: separate;
  border-spacing: 0;
  min-width: 100%;
}
.price-table th,
.price-table td {
  border-bottom: 1px solid #eef0f3;
  border-right: 1px solid #eef0f3;
  padding: 8px 6px;
  text-align: center;
  font-size: 12px;
  vertical-align: middle;
  background: #fff;
}
.price-table th {
  background: #f7f9f8;
  color: #606266;
  font-weight: 600;
  position: sticky;
  top: 0;
  z-index: 2;
}
.price-table th.selected {
  background: #e8f5ee;
  color: #1a5c3a;
}
.th-inner {
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 4px;
}
.th-time {
  font-size: 13px;
}
.sticky {
  position: sticky;
  left: 0;
  z-index: 3;
  background: #f7f9f8 !important;
}
.corner {
  z-index: 4 !important;
  min-width: 100px;
  text-align: left !important;
  padding-left: 12px !important;
}
.court-cell {
  text-align: left !important;
  padding-left: 12px !important;
  white-space: nowrap;
  min-width: 100px;
}
.court-name {
  margin-left: 6px;
  font-weight: 600;
  color: #1a5c3a;
}
.row-selected .court-cell {
  background: #e8f5ee !important;
}
.cell-highlight {
  background: #f3faf6 !important;
}
.col-selected {
  background: #f3faf6;
}
.cell-input {
  width: 92px;
}
.empty {
  text-align: center;
  color: #999;
  padding: 48px 16px;
}
</style>
