<template>
  <div class="schedule-page">
    <!-- 顶栏 -->
    <div class="toolbar">
      <div class="toolbar-left">
        <h2>预约日程</h2>
        <el-button-group>
          <el-button @click="shiftDate(-1)">前一天</el-button>
          <el-button type="primary" plain @click="goToday">今天</el-button>
          <el-button @click="shiftDate(1)">后一天</el-button>
        </el-button-group>
        <el-date-picker
          v-model="dateObj"
          type="date"
          value-format="YYYY-MM-DD"
          placeholder="选日期"
          @change="onDatePick"
        />
        <span class="date-label">{{ currentDate }} {{ weekLabel }}</span>
      </div>
      <div class="toolbar-right">
        <el-radio-group v-model="viewMode" size="default">
          <el-radio-button value="grid">日程表</el-radio-button>
          <el-radio-button value="list">列表</el-radio-button>
        </el-radio-group>
        <el-button :loading="loading" @click="loadAll">刷新</el-button>
      </div>
    </div>

    <!-- 日程表 -->
    <div v-show="viewMode === 'grid'" class="grid-wrap" v-loading="loading">
      <div class="grid" :style="{ gridTemplateColumns: gridCols }">
        <!-- 表头 -->
        <div class="cell head corner">时段</div>
        <div
          v-for="c in courts"
          :key="c._id"
          class="cell head court-head"
        >
          <div class="court-name">{{ c.name }}</div>
          <div class="court-free">空闲 {{ freeCount(c.name) }} 段</div>
        </div>

        <!-- 每一行：时间 + 各场地格子 -->
        <template v-for="t in timeSlots" :key="t">
          <div class="cell time-col">{{ t }}</div>
          <div
            v-for="c in courts"
            :key="c._id + t"
            class="cell slot"
            :class="slotClass(c.name, t)"
            @click="onCellClick(c.name, t)"
          >
            <template v-if="getBooking(c.name, t)">
              <div class="booked-user">{{ getBooking(c.name, t).displayUser }}</div>
              <div class="booked-status">{{ statusText(getBooking(c.name, t).status) }}</div>
            </template>
            <template v-else>
              <div class="free-text">可约</div>
            </template>
          </div>
        </template>
      </div>
    </div>

    <!-- 列表模式（精简） -->
    <div v-show="viewMode === 'list'" v-loading="loading">
      <el-table :data="dayList" stripe border>
        <el-table-column label="订单号" min-width="140">
          <template #default="{ row }">{{ row.orderNo || '-' }}</template>
        </el-table-column>
        <el-table-column prop="court" label="场地" width="100" />
        <el-table-column prop="time" label="时段" width="120" />
        <el-table-column label="状态" width="90">
          <template #default="{ row }">
            <el-tag :type="statusType(row.status)" size="small">{{ statusText(row.status) }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column label="用户" min-width="120">
          <template #default="{ row }">{{ row.displayUser || '-' }}</template>
        </el-table-column>
        <el-table-column label="操作" width="180">
          <template #default="{ row }">
            <el-button
              v-if="row.status === 'booked'"
              link
              type="warning"
              @click="cancelBooking(row)"
            >取消</el-button>
            <el-button link type="danger" @click="deleteBooking(row)">删除</el-button>
          </template>
        </el-table-column>
      </el-table>
    </div>

    <!-- 代约弹窗 -->
    <el-dialog v-model="bookVisible" title="后台代约" width="400px">
      <el-form label-width="80px">
        <el-form-item label="场地">
          <el-input v-model="bookForm.court" disabled />
        </el-form-item>
        <el-form-item label="日期">
          <el-input v-model="bookForm.date" disabled />
        </el-form-item>
        <el-form-item label="时段">
          <el-input v-model="bookForm.time" disabled />
        </el-form-item>
        <el-form-item label="用户名">
          <el-input v-model="bookForm.userName" placeholder="客户姓名" />
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="bookVisible = false">取消</el-button>
        <el-button type="primary" :loading="saving" @click="submitBook">确认预约</el-button>
      </template>
    </el-dialog>

    <!-- 已约详情 -->
    <el-dialog v-model="detailVisible" title="预约详情" width="400px">
      <el-descriptions :column="1" border v-if="currentBooking">
        <el-descriptions-item label="订单号">{{ currentBooking.orderNo || '-' }}</el-descriptions-item>
        <el-descriptions-item label="场地">{{ currentBooking.court }}</el-descriptions-item>
        <el-descriptions-item label="日期">{{ currentBooking.date }}</el-descriptions-item>
        <el-descriptions-item label="时段">{{ currentBooking.time }}</el-descriptions-item>
        <el-descriptions-item label="用户">{{ currentBooking.displayUser }}</el-descriptions-item>
        <el-descriptions-item label="状态">{{ statusText(currentBooking.status) }}</el-descriptions-item>
      </el-descriptions>
      <template #footer>
        <el-button
          v-if="currentBooking && currentBooking.status === 'booked'"
          type="warning"
          @click="cancelBooking(currentBooking)"
        >取消预约</el-button>
        <el-button type="danger" @click="deleteBooking(currentBooking)">删除</el-button>
        <el-button @click="detailVisible = false">关闭</el-button>
      </template>
    </el-dialog>
  </div>
</template>

<script setup>
import { ref, computed, onMounted } from 'vue'
import { ElMessage, ElMessageBox } from 'element-plus'

const timeSlots = [
  '08:00-09:00', '09:00-10:00', '10:00-11:00', '11:00-12:00',
  '14:00-15:00', '15:00-16:00', '16:00-17:00', '17:00-18:00',
  '18:00-19:00', '19:00-20:00', '20:00-21:00'
]

const loading = ref(false)
const saving = ref(false)
const viewMode = ref('grid')
const courts = ref([])
const allBookings = ref([])
const currentDate = ref(formatDate(new Date()))
const dateObj = ref(currentDate.value)

const bookVisible = ref(false)
const detailVisible = ref(false)
const bookForm = ref({ court: '', date: '', time: '', userName: '' })
const currentBooking = ref(null)

const base = import.meta.env.DEV
  ? '/api'
  : 'https://cloud1-d0gmljq45868f5766-1312769671.ap-shanghai.app.tcloudbase.com'

const gridCols = computed(() => `90px repeat(${Math.max(courts.value.length, 1)}, minmax(120px, 1fr))`)

const dayList = computed(() =>
  allBookings.value.filter(
    (b) => b.date === currentDate.value && b.status !== 'cancelled'
  )
)

const weekLabel = computed(() => {
  const w = ['日', '一', '二', '三', '四', '五', '六']
  const d = new Date(currentDate.value.replace(/-/g, '/'))
  return isNaN(d.getTime()) ? '' : `周${w[d.getDay()]}`
})

function formatDate(d) {
  const y = d.getFullYear()
  const m = String(d.getMonth() + 1).padStart(2, '0')
  const day = String(d.getDate()).padStart(2, '0')
  return `${y}-${m}-${day}`
}

function statusText(s) {
  return { booked: '已预约', cancelled: '已取消', completed: '已完成' }[s] || s || '-'
}
function statusType(s) {
  return { booked: 'success', cancelled: 'info', completed: '' }[s] || 'info'
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

function getBooking(courtName, time) {
  return allBookings.value.find(
    (b) =>
      b.date === currentDate.value &&
      b.court === courtName &&
      b.time === time &&
      b.status === 'booked'
  )
}

function freeCount(courtName) {
  let n = 0
  timeSlots.forEach((t) => {
    if (!getBooking(courtName, t)) n++
  })
  return n
}

function slotClass(courtName, time) {
  const b = getBooking(courtName, time)
  if (!b) return 'free'
  return 'booked'
}

function onCellClick(courtName, time) {
  const b = getBooking(courtName, time)
  if (b) {
    currentBooking.value = b
    detailVisible.value = true
    return
  }
  bookForm.value = {
    court: courtName,
    date: currentDate.value,
    time,
    userName: ''
  }
  bookVisible.value = true
}

async function submitBook() {
  if (!bookForm.value.userName) {
    ElMessage.warning('请填写用户名')
    return
  }
  saving.value = true
  try {
    const result = await post('/adminSaveBooking', {
      action: 'add',
      data: {
        court: bookForm.value.court,
        date: bookForm.value.date,
        time: bookForm.value.time,
        userName: bookForm.value.userName,
        status: 'booked',
        orderNo: 'GT' + Date.now()
      }
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '预约失败')
      return
    }
    ElMessage.success('预约成功')
    bookVisible.value = false
    await loadAll()
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    saving.value = false
  }
}

async function cancelBooking(row) {
  try {
    await ElMessageBox.confirm('确定取消该预约？', '提示', { type: 'warning' })
    const result = await post('/adminSaveBooking', { action: 'cancel', id: row._id })
    if (!result.ok) {
      ElMessage.error(result.msg || '取消失败')
      return
    }
    ElMessage.success('已取消')
    detailVisible.value = false
    loadAll()
  } catch (e) {
    if (e !== 'cancel') ElMessage.error(e.message || '失败')
  }
}

async function deleteBooking(row) {
  try {
    await ElMessageBox.confirm('确定删除？不可恢复', '警告', { type: 'warning' })
    const result = await post('/adminSaveBooking', { action: 'delete', id: row._id })
    if (!result.ok) {
      ElMessage.error(result.msg || '删除失败')
      return
    }
    ElMessage.success('已删除')
    detailVisible.value = false
    loadAll()
  } catch (e) {
    if (e !== 'cancel') ElMessage.error(e.message || '失败')
  }
}

function shiftDate(delta) {
  const d = new Date(currentDate.value.replace(/-/g, '/'))
  d.setDate(d.getDate() + delta)
  currentDate.value = formatDate(d)
  dateObj.value = currentDate.value
}

function goToday() {
  currentDate.value = formatDate(new Date())
  dateObj.value = currentDate.value
}

function onDatePick(val) {
  if (val) currentDate.value = val
}

async function loadAll() {
  loading.value = true
  try {
    const [cRes, bRes] = await Promise.all([
      post('/adminGetCourts', {}),
      post('/adminGetBookings', {})
    ])
    courts.value = (cRes.list || []).filter((c) => {
      // 启用的场地；字段不统一时尽量都显示
      return c.status === 1 || c.status === 'open' || c.status === true || c.status === 'active' || c.status === undefined
    })
    if (!courts.value.length && cRes.list) courts.value = cRes.list
    allBookings.value = bRes.list || []
  } catch (e) {
    ElMessage.error(e.message || '加载失败')
  } finally {
    loading.value = false
  }
}

onMounted(loadAll)
</script>

<style scoped>
.schedule-page {
  min-height: 100%;
}
.toolbar {
  display: flex;
  justify-content: space-between;
  align-items: center;
  flex-wrap: wrap;
  gap: 12px;
  margin-bottom: 16px;
}
.toolbar-left,
.toolbar-right {
  display: flex;
  align-items: center;
  gap: 10px;
  flex-wrap: wrap;
}
h2 {
  margin: 0;
  font-size: 20px;
  margin-right: 8px;
}
.date-label {
  color: #1a5c3a;
  font-weight: 600;
}
.grid-wrap {
  overflow: auto;
  background: #fff;
  border-radius: 12px;
  border: 1px solid #e8e8e8;
}
.grid {
  display: grid;
  min-width: 700px;
}
.cell {
  border-right: 1px solid #f0f0f0;
  border-bottom: 1px solid #f0f0f0;
  padding: 8px;
  min-height: 56px;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  font-size: 13px;
}
.head {
  background: #f7faf8;
  font-weight: 600;
  position: sticky;
  top: 0;
  z-index: 2;
}
.corner {
  position: sticky;
  left: 0;
  z-index: 3;
  background: #f7faf8;
}
.time-col {
  position: sticky;
  left: 0;
  background: #fafafa;
  z-index: 1;
  color: #666;
  font-size: 12px;
}
.court-name {
  color: #1a5c3a;
}
.court-free {
  font-size: 11px;
  color: #67c23a;
  font-weight: 400;
  margin-top: 2px;
}
.slot {
  cursor: pointer;
  transition: background 0.15s;
}
.slot.free {
  background: #f0f9f4;
  color: #67c23a;
}
.slot.free:hover {
  background: #d8f3e4;
}
.slot.booked {
  background: #fff3e0;
  color: #e6a23c;
}
.slot.booked:hover {
  background: #ffe0b2;
}
.booked-user {
  font-weight: 600;
  font-size: 12px;
  max-width: 100%;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}
.booked-status {
  font-size: 11px;
  margin-top: 2px;
}
.free-text {
  font-size: 12px;
}
</style>