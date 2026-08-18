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

    <div class="legend">
      <span class="lg free">可约</span>
      <span class="lg booked">已预约</span>
      <span class="lg group">团课（仅团课卡）</span>
    </div>

    <div class="grid-wrap" v-loading="loading">
      <div class="grid" :style="{ gridTemplateColumns: gridCols }">
        <div class="cell head corner">时段</div>
        <div v-for="c in courts" :key="c._id" class="cell head">
          <div class="court-name">{{ c.name }}</div>
        </div>

        <template v-for="t in timeSlots" :key="t">
          <div class="cell time-col">{{ t }}</div>
          <div
            v-for="c in courts"
            :key="c._id + t"
            class="cell slot"
            :class="cellClass(c.name, t)"
            @click="onCellClick(c.name, t)"
          >
            <template v-if="getGroupClass(c.name, t)">
              <div class="booked-user">{{ getGroupClass(c.name, t).name || '团课' }}</div>
              <div class="booked-status">
                团课 {{ getGroupClass(c.name, t).enrolled || 0 }}/{{ getGroupClass(c.name, t).capacity || '-' }}
                · {{ getGroupClass(c.name, t).coachName || '' }}
              </div>
            </template>
            <template v-else-if="getBooking(c.name, t)">
              <div class="booked-user">
                {{ getBooking(c.name, t).userName || getBooking(c.name, t).displayUser || '已预约' }}
              </div>
              <div class="booked-status">{{ formatCardStatus(getBooking(c.name, t)) }}</div>
            </template>
            <template v-else>
              <div class="free-text">可约</div>
            </template>
          </div>
        </template>
      </div>
      <div v-if="!loading && courts.length === 0" class="empty">当前场馆暂无场地</div>
    </div>

    <!-- 普通代客订场 -->
    <el-dialog v-model="bookVisible" title="代客订场" width="500px" destroy-on-close>
      <el-form label-width="96px">
        <el-form-item label="场馆"><el-input :model-value="venueName" disabled /></el-form-item>
        <el-form-item label="场地"><el-input v-model="bookForm.court" disabled /></el-form-item>
        <el-form-item label="日期"><el-input v-model="bookForm.date" disabled /></el-form-item>
        <el-form-item label="时段"><el-input v-model="bookForm.time" disabled /></el-form-item>
        <el-form-item label="客户" required>
          <el-select
            v-model="bookForm.memberKey"
            filterable remote clearable reserve-keyword
            placeholder="输入昵称/手机号/会员号搜索"
            :remote-method="searchMembers"
            :loading="memberLoading"
            style="width: 100%"
            @change="onMemberChange"
          >
            <el-option v-for="m in memberOptions" :key="m._id" :label="memberLabel(m)" :value="m._id" />
          </el-select>
        </el-form-item>
        <el-form-item label="使用会员卡">
          <el-select
            v-model="bookForm.cardId"
            placeholder="不使用卡（现金/其他）"
            clearable style="width: 100%"
            :loading="cardLoading"
            :disabled="!bookForm.memberKey"
            @change="onCardChange"
          >
            <el-option label="不使用卡" value="" />
            <el-option
              v-for="c in usableCardsNormal"
              :key="c._id"
              :label="cardOptionLabel(c)"
              :value="c._id"
            />
          </el-select>
          <div class="card-tip">团课请点日程上的「团课」格子报名</div>
        </el-form-item>
        <el-form-item v-if="isCoachCard" label="选择教练" required>
          <el-select v-model="bookForm.coachId" placeholder="请选择教练" style="width: 100%" :loading="coachLoading">
            <el-option
              v-for="c in availableCoaches"
              :key="c._id"
              :label="c.busy ? `${c.name}（${c.busyReason}）` : c.name"
              :value="c._id"
              :disabled="c.busy"
            />
          </el-select>
        </el-form-item>
        <el-form-item label="备注">
          <el-input v-model="bookForm.remark" type="textarea" :rows="2" />
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="bookVisible = false">取消</el-button>
        <el-button type="primary" :loading="saving" @click="submitBook">确认订场</el-button>
      </template>
    </el-dialog>

    <!-- 团课报名 -->
    <el-dialog v-model="groupVisible" title="团课报名" width="500px" destroy-on-close>
      <el-form label-width="96px" v-if="currentGroup">
        <el-form-item label="团课">
          <el-input :model-value="currentGroup.name" disabled />
        </el-form-item>
        <el-form-item label="场地/时段">
          <el-input :model-value="`${currentGroup.court} · ${currentGroup.time}`" disabled />
        </el-form-item>
        <el-form-item label="教练">
          <el-input :model-value="currentGroup.coachName" disabled />
        </el-form-item>
        <el-form-item label="名额">
          <el-input :model-value="`${currentGroup.enrolled || 0} / ${currentGroup.capacity}`" disabled />
        </el-form-item>
        <el-form-item label="客户" required>
          <el-select
            v-model="groupForm.memberKey"
            filterable remote clearable reserve-keyword
            placeholder="搜索会员"
            :remote-method="searchMembers"
            :loading="memberLoading"
            style="width: 100%"
            @change="onGroupMemberChange"
          >
            <el-option v-for="m in memberOptions" :key="m._id" :label="memberLabel(m)" :value="m._id" />
          </el-select>
        </el-form-item>
        <el-form-item label="团课卡" required>
          <el-select
            v-model="groupForm.cardId"
            placeholder="请选择团课卡"
            style="width: 100%"
            :loading="cardLoading"
            :disabled="!groupForm.memberKey"
          >
            <el-option
              v-for="c in groupCards"
              :key="c._id"
              :label="cardOptionLabel(c)"
              :value="c._id"
            />
          </el-select>
          <div v-if="groupForm.memberKey && !cardLoading && groupCards.length === 0" class="card-tip error">
            该会员没有可用团课卡，无法报名
          </div>
        </el-form-item>
        <el-form-item label="备注">
          <el-input v-model="groupForm.remark" type="textarea" :rows="2" />
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="groupVisible = false">取消</el-button>
        <el-button type="primary" :loading="saving" @click="submitGroupEnroll">确认报名</el-button>
      </template>
    </el-dialog>

    <!-- 普通预约详情 -->
    <el-dialog v-model="detailVisible" title="预约详情" width="420px">
      <el-descriptions v-if="current" :column="1" border>
        <el-descriptions-item label="订单号">{{ current.orderNo || '-' }}</el-descriptions-item>
        <el-descriptions-item label="场地">{{ current.court }}</el-descriptions-item>
        <el-descriptions-item label="日期">{{ current.date }}</el-descriptions-item>
        <el-descriptions-item label="时段">{{ current.time }}</el-descriptions-item>
        <el-descriptions-item label="客户">{{ current.userName || '-' }}</el-descriptions-item>
        <el-descriptions-item label="使用卡">
          <template v-if="current.cardName">
            {{ current.cardName }}
            <span v-if="current.cardRemaining != null">（剩{{ current.cardRemaining }}）</span>
          </template>
          <template v-else>未使用卡</template>
        </el-descriptions-item>
        <el-descriptions-item v-if="current.coachName" label="教练">{{ current.coachName }}</el-descriptions-item>
        <el-descriptions-item label="备注">{{ current.remark || '-' }}</el-descriptions-item>
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
const memberLoading = ref(false)
const cardLoading = ref(false)
const coachLoading = ref(false)
const courts = ref([])
const bookings = ref([])
const groupClasses = ref([])
const memberOptions = ref([])
const memberCards = ref([])
const coachList = ref([])
const currentDate = ref(formatDate(new Date()))
const dateObj = ref(currentDate.value)
const venueName = ref(localStorage.getItem('venue_name') || '')

const bookVisible = ref(false)
const groupVisible = ref(false)
const detailVisible = ref(false)
const current = ref(null)
const currentGroup = ref(null)

const bookForm = ref({
  court: '', date: '', time: '', memberKey: '', userName: '', userOpenid: '', cardId: '', coachId: '', remark: ''
})
const groupForm = ref({
  memberKey: '', userName: '', userOpenid: '', cardId: '', remark: ''
})

const base = import.meta.env.DEV
  ? '/api'
  : 'https://cloud1-d0gmljq45868f5766-1312769671.ap-shanghai.app.tcloudbase.com'

const gridCols = computed(
  () => `100px repeat(${Math.max(courts.value.length, 1)}, minmax(120px, 1fr))`
)
const weekLabel = computed(() => {
  const w = ['日', '一', '二', '三', '四', '五', '六']
  const d = new Date(currentDate.value.replace(/-/g, '/'))
  return isNaN(d.getTime()) ? '' : `周${w[d.getDay()]}`
})

const selectedCard = computed(() => memberCards.value.find((c) => c._id === bookForm.value.cardId))
const isCoachCard = computed(() => selectedCard.value?.type === 'coach')

// 普通订场不用团课卡
const usableCardsNormal = computed(() =>
  memberCards.value.filter(
    (c) => c.type !== 'group' && isCardUsable(c, bookForm.value.date, bookForm.value.time)
  )
)
// 团课报名只用团课卡
const groupCards = computed(() =>
  memberCards.value.filter((c) => c.type === 'group' && c.status === 'active' && (c.remainingTimes || 0) > 0)
)

const availableCoaches = computed(() => {
  const date = bookForm.value.date
  const time = bookForm.value.time
  return coachList.value.map((c) => {
    const related = bookings.value.filter(
      (b) => b.status === 'booked' && b.coachId === c._id && b.date === date && b.time === time
    )
    const hasGroup = groupClasses.value.some(
      (g) => g.coachId === c._id && g.date === date && g.time === time && g.status === 'open'
    )
    if (related.length || hasGroup) {
      return { ...c, busy: true, busyReason: '该时段已占用' }
    }
    return { ...c, busy: false, busyReason: '' }
  })
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
function memberLabel(m) {
  const name = m.nickName || m.nickname || m.name || ''
  if (m.phone) return `${name}（${m.phone}）`
  if (m.userId) return `${name || m.userId}`
  return name || m._id
}
function cardOptionLabel(c) {
  const typeMap = { times: '次卡', coach: '教练卡', group: '团课', time: '时间卡' }
  const type = typeMap[c.type] || c.type
  if (c.type === 'times' || c.type === 'coach' || c.type === 'group') {
    return `${c.cardName}（${type} 剩${c.remainingTimes}次）`
  }
  return `${c.cardName}（${type}）`
}
function formatCardStatus(b) {
  if (!b || !b.cardName) return '已预约'
  let text = '卡:' + b.cardName
  if (b.cardRemaining != null) text += ` 剩${b.cardRemaining}次`
  if (b.coachName) text += ` ·${b.coachName}`
  return text
}
function isCardUsable(card, dateStr, timeStr) {
  if (!card || card.status !== 'active') return false
  if (card.validFrom && dateStr < card.validFrom) return false
  if (card.validTo && dateStr > card.validTo) return false
  if (card.type === 'times' || card.type === 'coach' || card.type === 'group') {
    return (card.remainingTimes || 0) > 0
  }
  if (card.type === 'time') {
    const rule = card.timeRule
    if (!rule || rule.mode === 'unlimited' || rule.mode === 'all') return true
    const d = new Date(dateStr.replace(/-/g, '/'))
    let weekday = d.getDay()
    if (weekday === 0) weekday = 7
    const slotStart = (timeStr || '').split('-')[0]
    if (rule.mode === 'rules' && Array.isArray(rule.rules)) {
      for (const r of rule.rules) {
        if (!(r.weekdays || []).includes(weekday)) continue
        if (r.unlimited) return true
        for (const s of r.timeSlots || []) {
          if (slotStart >= s.start && slotStart < s.end) return true
        }
      }
      return false
    }
  }
  return true
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
    (b) => b.court === courtName && b.time === time && b.status === 'booked' && !b.groupClassId
  )
}
function getGroupClass(courtName, time) {
  return groupClasses.value.find(
    (g) => g.court === courtName && g.time === time && g.status === 'open'
  )
}
function cellClass(courtName, time) {
  if (getGroupClass(courtName, time)) return 'group'
  if (getBooking(courtName, time)) return 'booked'
  return 'free'
}

function onCellClick(courtName, time) {
  const gc = getGroupClass(courtName, time)
  if (gc) {
    currentGroup.value = gc
    groupForm.value = { memberKey: '', userName: '', userOpenid: '', cardId: '', remark: '' }
    memberOptions.value = []
    memberCards.value = []
    groupVisible.value = true
    return
  }
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
    memberKey: '',
    userName: '',
    userOpenid: '',
    cardId: '',
    coachId: '',
    remark: ''
  }
  memberOptions.value = []
  memberCards.value = []
  bookVisible.value = true
  loadCoaches()
}

async function loadCoaches() {
  coachLoading.value = true
  try {
    const result = await post('/adminGetCoaches', { venueId: venueId() })
    coachList.value = (result.list || []).filter(
      (c) => c.status === 'active' || c.status === '在职' || !c.status
    )
  } catch (e) {
    coachList.value = []
  } finally {
    coachLoading.value = false
  }
}

async function searchMembers(query) {
  const q = (query || '').trim()
  if (!q) {
    memberOptions.value = []
    return
  }
  memberLoading.value = true
  try {
    let result
    try {
      result = await post('/adminGetUsers', { keyword: q })
    } catch (e) {
      result = await post('/adminSearchUsers', { keyword: q })
    }
    memberOptions.value = result.list || []
  } catch (e) {
    memberOptions.value = []
  } finally {
    memberLoading.value = false
  }
}

async function onMemberChange(id) {
  bookForm.value.cardId = ''
  bookForm.value.coachId = ''
  memberCards.value = []
  const m = memberOptions.value.find((x) => x._id === id)
  if (m) {
    bookForm.value.userName = m.nickName || m.nickname || m.name || m.userId || ''
    bookForm.value.userOpenid = m._openid || ''
    cardLoading.value = true
    try {
      const result = await post('/adminGetMemberCards', { userId: m._id, openid: m._openid || '' })
      memberCards.value = (result.list || []).filter((c) => c.status === 'active')
    } catch (e) {
      memberCards.value = []
    } finally {
      cardLoading.value = false
    }
  } else {
    bookForm.value.userName = ''
    bookForm.value.userOpenid = ''
  }
}

async function onGroupMemberChange(id) {
  groupForm.value.cardId = ''
  memberCards.value = []
  const m = memberOptions.value.find((x) => x._id === id)
  if (m) {
    groupForm.value.userName = m.nickName || m.nickname || m.name || m.userId || ''
    groupForm.value.userOpenid = m._openid || ''
    cardLoading.value = true
    try {
      const result = await post('/adminGetMemberCards', { userId: m._id, openid: m._openid || '' })
      memberCards.value = (result.list || []).filter((c) => c.status === 'active')
    } catch (e) {
      memberCards.value = []
    } finally {
      cardLoading.value = false
    }
  } else {
    groupForm.value.userName = ''
    groupForm.value.userOpenid = ''
  }
}

function onCardChange() {
  bookForm.value.coachId = ''
  if (isCoachCard.value) loadCoaches()
}

async function submitBook() {
  if (!bookForm.value.memberKey || !bookForm.value.userName) {
    ElMessage.warning('请选择会员')
    return
  }
  if (!venueId()) {
    ElMessage.warning('请先选择场馆')
    return
  }
  // 团课格子不可普通约
  if (getGroupClass(bookForm.value.court, bookForm.value.time)) {
    ElMessage.warning('该时段为团课，请从团课格子报名')
    return
  }

  let selCard = null
  if (bookForm.value.cardId) {
    selCard = memberCards.value.find((c) => c._id === bookForm.value.cardId)
    if (!selCard || selCard.type === 'group') {
      ElMessage.warning('普通订场请勿使用团课卡')
      return
    }
  }

  let coachName = ''
  if (selCard && selCard.type === 'coach') {
    if (!bookForm.value.coachId) {
      ElMessage.warning('教练卡必须选择教练')
      return
    }
    const coach = coachList.value.find((c) => c._id === bookForm.value.coachId)
    coachName = coach ? coach.name : ''
  }

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
        remark: bookForm.value.remark || '',
        status: 'booked',
        venueId: venueId(),
        venueName: venueName.value,
        memberId: bookForm.value.memberKey || '',
        memberOpenid: bookForm.value.userOpenid || '',
        cardId: selCard ? selCard._id : '',
        cardName: selCard ? selCard.cardName : '',
        cardType: selCard ? selCard.type : '',
        coachId: bookForm.value.coachId || '',
        coachName
      }
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '订场失败')
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

async function submitGroupEnroll() {
  if (!currentGroup.value) return
  if (!groupForm.value.memberKey || !groupForm.value.userName) {
    ElMessage.warning('请选择会员')
    return
  }
  if (!groupForm.value.cardId) {
    ElMessage.warning('请选择团课卡')
    return
  }
  const card = memberCards.value.find((c) => c._id === groupForm.value.cardId)
  if (!card || card.type !== 'group') {
    ElMessage.warning('必须使用团课卡报名')
    return
  }
  if ((currentGroup.value.enrolled || 0) >= (currentGroup.value.capacity || 0)) {
    ElMessage.warning('团课名额已满')
    return
  }

  saving.value = true
  try {
    const result = await post('/adminEnrollGroupClass', {
      groupClassId: currentGroup.value._id,
      userId: groupForm.value.memberKey,
      userName: groupForm.value.userName,
      userOpenid: groupForm.value.userOpenid || '',
      cardId: card._id,
      remark: groupForm.value.remark || ''
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '报名失败')
      return
    }
    ElMessage.success('报名成功（已扣团课卡）')
    groupVisible.value = false
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
    await ElMessageBox.confirm('确定取消该预约？' + (current.value.cardId ? '（将退还次数）' : ''), '提示', {
      type: 'warning'
    })
    const result = await post('/adminSaveBooking', { action: 'cancel', id: current.value._id })
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
    groupClasses.value = []
    ElMessage.warning('请先在顶部选择场馆')
    return
  }
  loading.value = true
  try {
    const [cRes, bRes, gRes] = await Promise.all([
      post('/adminGetCourts', { venueId: venueId() }),
      post('/adminGetBookings', { venueId: venueId(), date: currentDate.value }),
      post('/adminGetGroupClasses', { venueId: venueId(), date: currentDate.value })
    ])
    let list = cRes.list || []
    const openList = list.filter(
      (c) => c.status === 'open' || c.status === '开门' || c.status === 1 || c.status === true
    )
    courts.value = openList.length ? openList : list
    bookings.value = (bRes.list || []).filter((b) => b.status === 'booked')
    groupClasses.value = (gRes.list || []).filter((g) => g.status === 'open')
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
.schedule-page { min-height: 100%; }
.toolbar {
  display: flex; justify-content: space-between; align-items: center;
  flex-wrap: wrap; gap: 12px; margin-bottom: 8px;
}
.toolbar-left { display: flex; align-items: center; flex-wrap: wrap; gap: 10px; }
h2 { margin: 0; font-size: 20px; }
.date-label { color: #1a5c3a; font-weight: 600; font-size: 15px; }
.venue-tip { color: #888; font-size: 14px; }
.legend { display: flex; gap: 16px; margin-bottom: 12px; font-size: 13px; }
.lg { display: inline-flex; align-items: center; gap: 6px; }
.lg::before {
  content: ''; width: 12px; height: 12px; border-radius: 3px;
}
.lg.free::before { background: #f0f9f4; border: 1px solid #67c23a; }
.lg.booked::before { background: #fff3e0; border: 1px solid #e6a23c; }
.lg.group::before { background: #fce4ec; border: 1px solid #ec407a; }
.grid-wrap {
  overflow: auto; background: #fff; border-radius: 12px; border: 1px solid #e8e8e8;
}
.grid { display: grid; min-width: 640px; }
.cell {
  border-right: 1px solid #f0f0f0; border-bottom: 1px solid #f0f0f0;
  padding: 10px 8px; min-height: 68px;
  display: flex; flex-direction: column; align-items: center; justify-content: center;
  font-size: 15px;
}
.head { background: #f7faf8; font-weight: 600; position: sticky; top: 0; z-index: 2; }
.corner { position: sticky; left: 0; z-index: 3; background: #f7faf8; }
.time-col { position: sticky; left: 0; background: #fafafa; z-index: 1; color: #555; font-size: 14px; }
.court-name { color: #1a5c3a; font-size: 15px; font-weight: 600; }
.slot { cursor: pointer; transition: background 0.15s; }
.slot.free { background: #f0f9f4; color: #67c23a; }
.slot.free:hover { background: #d8f3e4; }
.slot.booked { background: #fff3e0; color: #e6a23c; }
.slot.booked:hover { background: #ffe0b2; }
.slot.group { background: #fce4ec; color: #c2185b; }
.slot.group:hover { background: #f8bbd0; }
.booked-user {
  font-weight: 600; font-size: 14px; max-width: 100%;
  overflow: hidden; text-overflow: ellipsis; white-space: nowrap;
}
.booked-status { font-size: 12px; margin-top: 4px; }
.free-text { font-size: 15px; }
.empty { text-align: center; color: #999; padding: 40px; font-size: 15px; }
.card-tip { font-size: 12px; color: #999; margin-top: 4px; }
.card-tip.error { color: #f56c6c; }
</style>
