<template>
  <div class="schedule-page">
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
          @change="onDatePick"
        />
        <span class="date-label">{{ currentDate }} {{ weekLabel }}</span>
        <span class="venue-tip">{{ venueName || '未选场馆' }}</span>
      </div>
      <el-button :loading="loading" @click="loadAll">刷新</el-button>
    </div>

    <div class="grid-wrap" v-loading="loading">
      <div class="grid" :style="{ gridTemplateColumns: gridCols }">
        <div class="cell head corner">时段</div>
        <div v-for="c in courts" :key="c._id" class="cell head">
          <div class="court-name">{{ c.name }}</div>
          <div class="court-free">空闲 {{ freeCount(c.name) }} 段</div>
        </div>

        <template v-for="t in timeSlots" :key="t">
          <div class="cell time-col">{{ t }}</div>
          <div
            v-for="c in courts"
            :key="c._id + t"
            class="cell slot"
            :class="getBooking(c.name, t) ? 'booked' : 'free'"
            @click="onCellClick(c.name, t)"
          >
            <template v-if="getBooking(c.name, t)">
              <div class="booked-user">
                {{ getBooking(c.name, t).userName || getBooking(c.name, t).displayUser || '已预约' }}
              </div>
              <div class="booked-status">已预约</div>
            </template>
            <template v-else>
              <div class="free-text">可约</div>
            </template>
          </div>
        </template>
      </div>
      <div v-if="!loading && courts.length === 0" class="empty">当前场馆暂无场地</div>
    </div>

    <!-- 代客订场 -->
    <el-dialog v-model="bookVisible" title="代客订场" width="400px">
      <el-form label-width="80px">
        <el-form-item label="场馆">
          <el-input :model-value="venueName" disabled />
        </el-form-item>
        <el-form-item label="场地">
          <el-input v-model="bookForm.court" disabled />
        </el-form-item>
        <el-form-item label="日期">
          <el-input v-model="bookForm.date" disabled />
        </el-form-item>
        <el-form-item label="时段">
          <el-input v-model="bookForm.time" disabled />
        </el-form-item>
        <el-form-item label="客户姓名" required>
          <el-input v-model="bookForm.userName" placeholder="请输入姓名" />
        </el-form-item>
        <el-form-item label="备注">
          <el-input v-model="bookForm.remark" type="textarea" />
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="bookVisible = false">取消</el-button>
        <el-button type="primary" :loading="saving" @click="submitBook">确认订场</el-button>
      </template>
    </el-dialog>

    <!-- 已约详情 -->
    <el-dialog v-model="detailVisible" title="预约详情" width="400px">
      <el-descriptions v-if="current" :column="1" border>
        <el-descriptions-item label="订单号">{{ current.orderNo || '-' }}</el-descriptions-item>
        <el-descriptions-item label="场馆">{{ current.venueName || venueName }}</el-descriptions-item>
        <el-descriptions-item label="场地">{{ current.court }}</el-descriptions-item>
        <el-descriptions-item label="日期">{{ current.date }}</el-descriptions-item>
        <el-descriptions-item label="时段">{{ current.time }}</el-descriptions-item>
        <el-descriptions-item label="客户">{{ current.userName || current.displayUser || '-' }}</el-descriptions-item>
        <el-descriptions-item label="状态">已预约</el-descriptions-item>
      </el-descriptions>
      <template #footer>
        <el-button type="warning" @click="cancelBook">取消预约</el-button>
        <el-button @click="detailVisible = false">关闭</el-button>
      </template>
    </el-dialog>
  </div>
</template>

<script setup>
import { ref, computed, onMounted, onUnmounted } from 'vue'
import { ElMessage, ElMessageBox } from 'element-plus'

const timeSlots = [
  '08:00-09:00', '09:00-10:00', '10:00-11:00', '11:00-12:00',
  '14:00-15:00', '15:00-16:00', '16:00-17:00', '17:00-18:00',
  '18:00-19:00', '19:00-20:00', '20:00-21:00'
]

const loading = ref(false)
const saving = ref(false)
const courts = ref([])
const bookings = ref([])
const currentDate = ref(formatDate(new Date()))
const dateObj = ref(currentDate.value)
const venueName = ref(localStorage.getItem('venue_name') || '')

const bookVisible = ref(false)
const detailVisible = ref(false)
const bookForm = ref({ court: '', date: '', time: '', userName: '', remark: '' })
const current = ref(null)

const base = import.meta.env.DEV
  ? '/api'
  : 'https://cloud1-d0jq45868f5766-1312769671.ap-shanghai.app.tcloudbase.com'

const gridCols = computed(
  () => `88px repeat(${Math.max(courts.value.length, 1)}, minmax(110px, 1fr))`
)

const weekLabel = computed(() => {
  const w = ['日', '一', '二', '三', '四', '五', '六']
  const d = new Date(currentDate.value.replace(/-/g, '/'))
  return isNaN(d.getTime()) ? '' : `周${w[d.getDay()]}`
})

function venueId() {
  return localStorage.getItem('venue_id') || ''
}

function formatDate(d) {
  const y = d.getFullYear()
  const m = String(d.getMonth() + 1).padStart(2, '0')
  const day = String(d.getDate()).padStart(2, '0')
  return `${y}-${m}-${day}`
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
  return bookings.value.find(
    (b) => b.court === courtName && b.time === time && b.status === 'booked'
  )
}

function freeCount(courtName) {
  return timeSlots.filter((t) => !getBooking(courtName, t)).length
}

function onCellClick(courtName, time) {
  const b = getBooking(courtName, time)
  if (b) {
    current.value = b
    detailVisible.value = true
    return
  }
  bookForm.value = {
    court: courtName,
    date: currentDate.value,
    time,
    userName: '',
    remark: ''
  }
  bookVisible.value = true
}

async function submitBook() {
  if (!bookForm.value.userName) {
    ElMessage.warning('请填写客户姓名')
    return
  }
  if (!venueId()) {
    ElMessage.warning('请先选择场馆')
    return
  }
  saving.value = true
  try {
    // 若还没有 adminSaveBooking，先用同一套接口；没有就提示
    const result = await post('/adminSaveBooking', {
      action: 'add',
      data: {
        orderNo: 'GT' + Date.now(),
        court: bookForm.value.court,
        date: bookForm.value.date,
        time: bookForm.value.time,
        userName: bookForm.value.userName,
        remark: bookForm.value.remark || '',
        status: 'booked',
        venueId: venueId(),
        venueName: venueName.value
      }
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '订场失败（请确认已部署 adminSaveBooking）')
      return
    }
    ElMessage.success('订场成功')
    bookVisible.value = false
    loadAll()
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    saving.value = false
  }
}

async function cancelBook() {
  if (!current.value?._id) return
  try {
    await ElMessageBox.confirm('确定取消该预约？', '提示', { type: 'warning' })
    const result = await post('/adminSaveBooking', {
      action: 'cancel',
      id: current.value._id
    })
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

function shiftDate(delta) {
  const d = new Date(currentDate.value.replace(/-/g, '/'))
  d.setDate(d.getDate() + delta)
  currentDate.value = formatDate(d)
  dateObj.value = currentDate.value
  loadAll()
}

function goToday() {
  currentDate.value = formatDate(new Date())
  dateObj.value = currentDate.value
  loadAll()
}

function onDatePick(val) {
  if (val) {
    currentDate.value = val
    loadAll()
  }
}

async function loadAll() {
  venueName.value = localStorage.getItem('venue_name') || ''
  if (!venueId()) {
    courts.value = []
    bookings.value = []
    ElMessage.warning('请先在顶部选择场馆')
    return
  }
  loading.value = true
  try {
    const [cRes, bRes] = await Promise.all([
      post('/adminGetCourts', { venueId: venueId() }),
      post('/adminGetBookings', { venueId: venueId(), date: currentDate.value })
    ])
    courts.value = (cRes.list || []).filter(
      (c) => c.status === 'open' || c.status === '开门' || c.status === 1 || !c.status
    )
    if (!(cRes.list || []).length) courts.value = []
    // 若过滤后为空，仍显示全部该馆场地
    if (!courts.value.length && cRes.list) courts.value = cRes.list

    bookings.value = (bRes.list || []).filter((b) => b.status === 'booked')
  } catch (e) {
    ElMessage.error(e.message || '加载失败')
  } finally {
    loading.value = false
  }
}

onMounted(() => {
  loadAll()
  window.addEventListener('venue-changed', loadAll)
})
onUnmounted(() => {
  window.removeEventListener('venue-changed', loadAll)
})
</script>

<style scoped>
.toolbar {
  display: flex;
  justify-content: space-between;
  align-items: center;
  flex-wrap: wrap;
  gap: 12px;
  margin-bottom: 16px;
}
.toolbar-left {
  display: flex;
  align-items: center;
  flex-wrap: wrap;
  gap: 10px;
}
h2 { margin: 0; font-size: 20px; }
.date-label { color: #1a5c3a; font-weight: 600; }
.venue-tip { color: #888; font-size: 13px; }
.grid-wrap {
  overflow: auto;
  background: #fff;
  border-radius: 12px;
  border: 1px solid #e8e8e8;
}
.grid { display: grid; min-width: 640px; }
.cell {
  border-right: 1px solid #f0f0f0;
  border-bottom: 1px solid #f0f0f0;
  padding: 8px;
  min-height: 52px;
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
.corner { position: sticky; left: 0; z-index: 3; background: #f7faf8; }
.time-col {
  position: sticky;
  left: 0;
  background: #fafafa;
  z-index: 1;
  color: #666;
  font-size: 12px;
}
.court-name { color: #1a5c3a; }
.court-free { font-size: 11px; color: #67c23a; font-weight: 400; margin-top: 2px; }
.slot { cursor: pointer; transition: background 0.15s; }
.slot.free { background: #f0f9f4; color: #67c23a; }
.slot.free:hover { background: #d8f3e4; }
.slot.booked { background: #fff3e0; color: #e6a23c; }
.slot.booked:hover { background: #ffe0b2; }
.booked-user {
  font-weight: 600;
  font-size: 12px;
  max-width: 100%;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}
.booked-status { font-size: 11px; margin-top: 2px; }
.free-text { font-size: 12px; }
.empty { text-align: center; color: #999; padding: 40px; }
</style>