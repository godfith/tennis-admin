<template>
  <div class="page">
    <div class="toolbar">
      <div class="toolbar-left">
        <h2>教练排课</h2>
        <el-button-group>
          <el-button @click="shiftDate(-1)">前一天</el-button>
          <el-button type="primary" plain @click="goToday">今天</el-button>
          <el-button @click="shiftDate(1)">后一天</el-button>
        </el-button-group>
        <el-date-picker v-model="dateObj" type="date" value-format="YYYY-MM-DD" @change="onDatePick" />
        <span class="date-label">{{ currentDate }} {{ weekLabel }}</span>
        <span class="venue-tip">{{ venueName || '未选场馆' }}</span>
      </div>
      <el-button :loading="loading" @click="loadAll">刷新</el-button>
    </div>
    <p class="hint">小程序暂不开放学员自约私教。这里按教练排课，占用场地并扣教练卡。</p>

    <div class="grid-wrap" v-loading="loading">
      <div class="grid" :style="{ gridTemplateColumns: gridCols }">
        <div class="cell head corner">教练 \\ 时段</div>
        <div v-for="t in timeSlots" :key="t" class="cell head">{{ t.slice(0, 5) }}</div>
        <template v-for="coach in coaches" :key="coach._id">
          <div class="cell time-col">{{ coach.name }}</div>
          <div
            v-for="t in timeSlots"
            :key="coach._id + t"
            class="cell slot"
            :class="cellClass(coach, t)"
            @click="onCellClick(coach, t)"
          >
            <template v-if="getLesson(coach._id, t)">
              <div class="booked-user">{{ getLesson(coach._id, t).userName || '私教' }}</div>
              <div class="booked-status">{{ getLesson(coach._id, t).court }}</div>
            </template>
            <template v-else-if="getGroup(coach._id, t)">
              <div class="booked-user">{{ getGroup(coach._id, t).name || '团课' }}</div>
              <div class="booked-status">团课 · {{ getGroup(coach._id, t).court }}</div>
            </template>
            <template v-else>
              <div class="free-text">可排</div>
            </template>
          </div>
        </template>
      </div>
      <div v-if="!loading && coaches.length === 0" class="empty">当前场馆暂无教练</div>
    </div>

    <el-dialog v-model="bookVisible" title="安排私教课" width="500px" destroy-on-close>
      <el-form label-width="96px">
        <el-form-item label="教练"><el-input :model-value="bookForm.coachName" disabled /></el-form-item>
        <el-form-item label="日期"><el-input v-model="bookForm.date" disabled /></el-form-item>
        <el-form-item label="时段"><el-input v-model="bookForm.time" disabled /></el-form-item>
        <el-form-item label="场地" required>
          <el-select v-model="bookForm.court" filterable style="width: 100%">
            <el-option v-for="c in freeCourts" :key="c._id" :label="c.name" :value="c.name" />
          </el-select>
        </el-form-item>
        <el-form-item label="学员" required>
          <el-select
            v-model="bookForm.memberKey"
            filterable remote reserve-keyword placeholder="姓名 / 手机"
            :remote-method="searchMembers" :loading="memberLoading" style="width: 100%" @change="onPickMember"
          >
            <el-option
              v-for="m in memberOptions" :key="m._id"
              :label="(m.nickName || m.userName || '') + ' ' + (m.phone || '')" :value="m._id"
            />
          </el-select>
        </el-form-item>
        <el-form-item label="教练卡" required>
          <el-select v-model="bookForm.cardId" style="width: 100%" :disabled="!coachCards.length">
            <el-option
              v-for="c in coachCards" :key="c._id"
              :label="c.cardName + ' · 剩' + (c.remainingTimes || 0) + '次'" :value="c._id"
            />
          </el-select>
        </el-form-item>
        <el-form-item label="备注"><el-input v-model="bookForm.remark" /></el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="bookVisible = false">取消</el-button>
        <el-button type="primary" :loading="saving" @click="submitLesson">确认排课</el-button>
      </template>
    </el-dialog>

    <el-dialog v-model="detailVisible" title="私教课详情" width="440px">
      <el-descriptions v-if="current" :column="1" border>
        <el-descriptions-item label="学员">{{ current.userName }}</el-descriptions-item>
        <el-descriptions-item label="教练">{{ current.coachName }}</el-descriptions-item>
        <el-descriptions-item label="场地">{{ current.court }}</el-descriptions-item>
        <el-descriptions-item label="时段">{{ current.date }} {{ current.time }}</el-descriptions-item>
        <el-descriptions-item label="用卡">{{ current.cardName || '-' }}</el-descriptions-item>
      </el-descriptions>
      <template #footer>
        <el-button @click="detailVisible = false">关闭</el-button>
        <el-button type="danger" :loading="saving" @click="cancelLesson">取消这节课</el-button>
      </template>
    </el-dialog>
  </div>
</template>

<script setup>
import { ref, computed, onMounted, onUnmounted } from 'vue'
import { ElMessage, ElMessageBox } from 'element-plus'

const FALLBACK_SLOTS = [
  '08:00-09:00', '09:00-10:00', '10:00-11:00', '11:00-12:00',
  '14:00-15:00', '15:00-16:00', '16:00-17:00', '17:00-18:00',
  '18:00-19:00', '19:00-20:00', '20:00-21:00'
]
const timeSlots = ref(FALLBACK_SLOTS.slice())

const loading = ref(false)
const saving = ref(false)
const dateObj = ref('')
const currentDate = ref('')
const coaches = ref([])
const courts = ref([])
const bookings = ref([])
const groups = ref([])
const bookVisible = ref(false)
const detailVisible = ref(false)
const current = ref(null)
const memberOptions = ref([])
const memberCards = ref([])
const memberLoading = ref(false)
const bookForm = ref({
  coachId: '', coachName: '', date: '', time: '', court: '',
  memberKey: '', userName: '', userOpenid: '', cardId: '', remark: ''
})

const venueId = () => localStorage.getItem('venue_id') || ''
const venueName = computed(() => localStorage.getItem('venue_name') || '')
const base = import.meta.env.DEV
  ? '/api'
  : 'https://cloud1-d3g0pb1qk028e3585-d862bc2-1312769671.ap-shanghai.app.tcloudbase.com'

const gridCols = computed(() => '140px repeat(' + timeSlots.value.length + ', minmax(88px, 1fr))')
const weekLabel = computed(() => {
  const s = currentDate.value
  if (!s) return ''
  const w = ['日', '一', '二', '三', '四', '五', '六'][new Date(s.replace(/-/g, '/')).getDay()]
  return '周' + w
})
const coachCards = computed(() =>
  (memberCards.value || []).filter((c) => c.type === 'coach' && c.status === 'active' && (c.remainingTimes || 0) > 0)
)
const freeCourts = computed(() => {
  const t = bookForm.value.time
  return (courts.value || []).filter((c) => {
    const busy = bookings.value.find((b) => b.court === c.name && b.time === t && b.status === 'booked')
    const g = groups.value.find((x) => x.court === c.name && x.time === t && x.status === 'open')
    return !busy && !g
  })
})

function ymd(d) {
  const y = d.getFullYear()
  const m = String(d.getMonth() + 1).padStart(2, '0')
  const day = String(d.getDate()).padStart(2, '0')
  return y + '-' + m + '-' + day
}
function goToday() {
  const s = ymd(new Date())
  dateObj.value = s
  currentDate.value = s
  loadAll()
}
function shiftDate(n) {
  const d = new Date((currentDate.value || ymd(new Date())).replace(/-/g, '/'))
  d.setDate(d.getDate() + n)
  const s = ymd(d)
  dateObj.value = s
  currentDate.value = s
  loadAll()
}
function onDatePick(v) {
  currentDate.value = v
  loadAll()
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

function getLesson(coachId, time) {
  return bookings.value.find(
    (b) => String(b.coachId || b.coach_id) === String(coachId) && b.time === time && b.status === 'booked'
  )
}
function getGroup(coachId, time) {
  return groups.value.find(
    (g) => String(g.coachId || g.coach_id) === String(coachId) && g.time === time && g.status === 'open'
  )
}
function cellClass(coach, t) {
  if (getLesson(coach._id, t)) return 'booked'
  if (getGroup(coach._id, t)) return 'group'
  return 'free'
}

async function loadAll() {
  if (!venueId() || !currentDate.value) return
  loading.value = true
  try {
    const d = new Date(String(currentDate.value).replace(/-/g, '/'))
    let wd = d.getDay()
    if (wd === 0) wd = 7
    const [cRes, bRes, gRes, courtRes, hRes] = await Promise.all([
      post('/adminGetCoaches', { venueId: venueId() }),
      post('/adminGetBookings', { venueId: venueId(), date: currentDate.value }),
      post('/adminGetGroupClasses', { venueId: venueId(), date: currentDate.value }),
      post('/adminGetCourts', { venueId: venueId() }),
      post('/adminGetVenueHours', { venueId: venueId(), weekday: wd }).catch(() => ({ slots: [] }))
    ])
    coaches.value = (cRes.list || []).filter((c) => c.status === 'active' || c.status === '在职' || !c.status)
    bookings.value = bRes.list || bRes.bookings || []
    groups.value = gRes.list || gRes.groupClasses || []
    courts.value = courtRes.list || []
    const savedSlots = (hRes && (hRes.byWeekday?.[wd] || hRes.slots)) || []
    timeSlots.value = savedSlots.length ? savedSlots.slice() : FALLBACK_SLOTS.slice()
  } catch (e) {
    ElMessage.error(e.message || '加载失败')
  } finally {
    loading.value = false
  }
}

function onCellClick(coach, time) {
  const lesson = getLesson(coach._id, time)
  if (lesson) {
    current.value = lesson
    detailVisible.value = true
    return
  }
  if (getGroup(coach._id, time)) {
    ElMessage.warning('该教练此时段有团课')
    return
  }
  bookForm.value = {
    coachId: coach._id, coachName: coach.name, date: currentDate.value, time,
    court: '', memberKey: '', userName: '', userOpenid: '', cardId: '', remark: ''
  }
  memberOptions.value = []
  memberCards.value = []
  bookVisible.value = true
}

async function searchMembers(query) {
  const q = (query || '').trim()
  if (!q) { memberOptions.value = []; return }
  memberLoading.value = true
  try {
    let result
    try { result = await post('/adminGetUsers', { keyword: q }) }
    catch (e) { result = await post('/adminSearchUsers', { keyword: q }) }
    memberOptions.value = result.list || []
  } catch (e) {
    memberOptions.value = []
  } finally {
    memberLoading.value = false
  }
}

async function onPickMember(id) {
  const m = memberOptions.value.find((x) => x._id === id)
  bookForm.value.userName = (m && (m.nickName || m.userName)) || ''
  bookForm.value.userOpenid = (m && (m._openid || m.openid)) || ''
  bookForm.value.cardId = ''
  memberCards.value = []
  if (!id) return
  try {
    const result = await post('/adminGetMemberCards', { userId: id, openid: bookForm.value.userOpenid })
    memberCards.value = result.list || []
    if (coachCards.value.length === 1) bookForm.value.cardId = coachCards.value[0]._id
  } catch (e) {
    memberCards.value = []
  }
}

async function submitLesson() {
  if (!bookForm.value.court) { ElMessage.warning('请选择场地'); return }
  if (!bookForm.value.memberKey || !bookForm.value.userName) { ElMessage.warning('请选择学员'); return }
  if (!bookForm.value.cardId) { ElMessage.warning('请选择教练卡'); return }
  const selCard = coachCards.value.find((c) => c._id === bookForm.value.cardId)
  saving.value = true
  try {
    const result = await post('/adminSaveBooking', {
      action: 'add',
      data: {
        orderNo: 'GT' + Date.now(),
        court: bookForm.value.court,
        date: bookForm.value.date,
        time: bookForm.value.time,
        userName: bookForm.value.userName,
        remark: bookForm.value.remark || '后台排私教',
        status: 'booked',
        venueId: venueId(),
        venueName: venueName.value,
        memberId: bookForm.value.memberKey,
        memberOpenid: bookForm.value.userOpenid,
        cardId: selCard._id,
        cardName: selCard.cardName,
        cardType: 'coach',
        coachId: bookForm.value.coachId,
        coachName: bookForm.value.coachName
      }
    })
    if (!result.ok) { ElMessage.error(result.msg || '排课失败'); return }
    ElMessage.success('已排课')
    bookVisible.value = false
    loadAll()
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    saving.value = false
  }
}

async function cancelLesson() {
  if (!current.value) return
  try {
    await ElMessageBox.confirm('确认取消这节私教课？将退回卡次。', '取消课程', { type: 'warning' })
  } catch (e) { return }
  saving.value = true
  try {
    const result = await post('/adminSaveBooking', { action: 'cancel', id: current.value._id })
    if (!result.ok) { ElMessage.error(result.msg || '取消失败'); return }
    ElMessage.success('已取消')
    detailVisible.value = false
    loadAll()
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    saving.value = false
  }
}

onMounted(() => {
  goToday()
  window.addEventListener('venue-changed', loadAll)
})
onUnmounted(() => window.removeEventListener('venue-changed', loadAll))
</script>

<style scoped>
.page { padding: 4px; }
.toolbar { display: flex; justify-content: space-between; align-items: center; margin-bottom: 8px; gap: 12px; }
.toolbar-left { display: flex; align-items: center; gap: 10px; flex-wrap: wrap; }
h2 { margin: 0; font-size: 20px; color: #1a5c3a; }
.date-label { color: #333; font-weight: 600; }
.venue-tip { color: #909399; font-size: 13px; }
.hint { margin: 0 0 12px; color: #909399; font-size: 13px; }
.grid-wrap { background: #fff; border-radius: 10px; padding: 10px; overflow: auto; }
.grid { display: grid; min-width: 1100px; }
.cell { border: 1px solid #eef0f2; padding: 8px 6px; min-height: 52px; font-size: 12px; }
.head { background: #f3f7f4; font-weight: 600; text-align: center; color: #1a5c3a; }
.corner { position: sticky; left: 0; z-index: 2; background: #f3f7f4; }
.time-col { position: sticky; left: 0; z-index: 1; background: #fff; font-weight: 600; }
.slot { cursor: pointer; }
.slot.free { background: #f8fbf8; }
.slot.booked { background: #e8f3ec; }
.slot.group { background: #fdecea; }
.booked-user { font-weight: 600; color: #1a5c3a; }
.booked-status { color: #909399; margin-top: 2px; }
.free-text { color: #67c23a; }
.empty { text-align: center; color: #999; padding: 40px; }
</style>
