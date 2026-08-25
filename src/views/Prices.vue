<template>
  <div class="page">
    <div class="page-header">
      <h2>场地价格</h2>
      <div class="toolbar">
        <el-button :loading="loading" @click="loadAll">刷新</el-button>
        <el-button type="primary" :loading="saving" @click="save">保存价格</el-button>
      </div>
    </div>

    <el-alert
      type="info"
      :closable="false"
      show-icon
      style="margin-bottom: 16px"
      title="勾选要应用到的星期，在格子里改价后点保存。可先填一格再点「应用到所选星期」。"
    />

    <div class="filters">
      <span class="label">应用到星期：</span>
      <el-checkbox-group v-model="applyWeekdays">
        <el-checkbox :value="1">一</el-checkbox>
        <el-checkbox :value="2">二</el-checkbox>
        <el-checkbox :value="3">三</el-checkbox>
        <el-checkbox :value="4">四</el-checkbox>
        <el-checkbox :value="5">五</el-checkbox>
        <el-checkbox :value="6">六</el-checkbox>
        <el-checkbox :value="7">日</el-checkbox>
      </el-checkbox-group>
      <el-button size="small" @click="applyWeekdays = [1, 2, 3, 4, 5]">工作日</el-button>
      <el-button size="small" @click="applyWeekdays = [6, 7]">周末</el-button>
      <el-button size="small" @click="applyWeekdays = [1, 2, 3, 4, 5, 6, 7]">全周</el-button>
    </div>

    <div class="filters">
      <span class="label">预览星期：</span>
      <el-radio-group v-model="previewWeekday" @change="loadPrices">
        <el-radio-button :value="1">一</el-radio-button>
        <el-radio-button :value="2">二</el-radio-button>
        <el-radio-button :value="3">三</el-radio-button>
        <el-radio-button :value="4">四</el-radio-button>
        <el-radio-button :value="5">五</el-radio-button>
        <el-radio-button :value="6">六</el-radio-button>
        <el-radio-button :value="7">日</el-radio-button>
      </el-radio-group>
      <el-input-number
        v-model="batchPrice"
        :min="0"
        :precision="0"
        size="small"
        style="width: 120px; margin-left: 16px"
      />
      <el-button size="small" type="success" @click="fillAll">全部填入</el-button>
    </div>

    <div class="grid-wrap" v-loading="loading">
      <table class="price-table" v-if="courts.length">
        <thead>
          <tr>
            <th class="court-col">场地</th>
            <th v-for="t in timeSlots" :key="t">{{ t.split('-')[0] }}</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="c in courts" :key="c.name">
            <td class="court-col">
              <div>{{ c.name }}</div>
              <el-button link type="primary" size="small" @click="fillRow(c.name)">整行</el-button>
            </td>
            <td v-for="t in timeSlots" :key="c.name + t">
              <el-input-number
                v-model="matrix[c.name][t]"
                :min="0"
                :precision="0"
                size="small"
                controls-position="right"
                style="width: 100px"
              />
            </td>
          </tr>
        </tbody>
      </table>
      <div v-else class="empty">请先在「场地管理」添加场地，并在顶部选择场馆</div>
    </div>
  </div>
</template>

<script setup>
import { ref, reactive, onMounted, onUnmounted } from 'vue'
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
    // 先清零再填
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

function fillRow(courtName) {
  timeSlots.forEach((t) => {
    matrix[courtName][t] = batchPrice.value
  })
}

function fillAll() {
  courts.value.forEach((c) => {
    timeSlots.forEach((t) => {
      matrix[c.name][t] = batchPrice.value
    })
  })
}

async function save() {
  const vid = venueId()
  if (!vid) {
    ElMessage.warning('请先选择场馆')
    return
  }
  if (!applyWeekdays.value.length) {
    ElMessage.warning('请勾选要应用到的星期')
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
.toolbar {
  display: flex;
  gap: 8px;
}
.filters {
  display: flex;
  align-items: center;
  flex-wrap: wrap;
  gap: 8px;
  margin-bottom: 12px;
  background: #fff;
  padding: 12px 16px;
  border-radius: 8px;
}
.label {
  color: #666;
  font-size: 14px;
  margin-right: 4px;
}
.grid-wrap {
  background: #fff;
  border-radius: 8px;
  padding: 12px;
  overflow-x: auto;
}
.price-table {
  border-collapse: collapse;
  min-width: 100%;
}
.price-table th,
.price-table td {
  border: 1px solid #ebeef5;
  padding: 6px 4px;
  text-align: center;
  font-size: 12px;
}
.price-table th {
  background: #f5f7fa;
  color: #606266;
  white-space: nowrap;
}
.court-col {
  min-width: 90px;
  text-align: left !important;
  padding-left: 10px !important;
  font-weight: 600;
  color: #1a5c3a;
}
.empty {
  text-align: center;
  color: #999;
  padding: 40px;
}
</style>
