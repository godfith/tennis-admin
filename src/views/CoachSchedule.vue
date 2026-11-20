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
        <el-button-group>
          <el-button :type="viewMode === 'venue' ? 'primary' : ''" @click="setViewMode('venue')">本店排课</el-button>
          <el-button :type="viewMode === 'outdoor' ? 'primary' : ''" @click="setViewMode('outdoor')">全店外场</el-button>
        </el-button-group>
        <span class="venue-tip">{{ viewMode === 'outdoor' ? '全店外场' : (venueName || '未选场馆') }}</span>
      </div>
      <el-button type="success" plain :disabled="!coaches.length" @click="exportExcel">导出</el-button>
      <el-button :loading="loading" @click="loadAll">刷新</el-button>
    </div>
    <p class="hint" v-if="isCoachAccount">教练可在「全店外场」点击自己的空档锁定外场时段，不能代约私教课。{{ bindHint }}</p>
    <p class="hint" v-else-if="viewMode !== 'outdoor'">小程序暂不开放学员自约私教。这里按教练排课，占用场地并扣教练卡。</p>
    <p class="hint" v-else>全店外场集中排课：各馆外场课显示在一起，排课时选择记到哪家店。同一教练同一时段不能在两家店重复排课。</p>

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
            <template v-if="getLesson(coach, t)">
              <div class="booked-user">{{ getLesson(coach, t).userName || '私教' }}</div>
              <div class="booked-status">{{ lessonPlace(getLesson(coach, t)) }}</div>
            </template>
            <template v-else-if="getOccupied(coach, t)">
              <div class="booked-user">{{ occupiedTitle(getOccupied(coach, t)) }}</div>
              <div class="booked-status">{{ occupiedPlace(getOccupied(coach, t)) }}</div>
            </template>
            <template v-else-if="getGroup(coach, t)">
              <div class="booked-user">{{ getGroup(coach, t).name || '团课' }}</div>
              <div class="booked-status">团课 · {{ getGroup(coach, t).court }}</div>
            </template>
            <template v-else>
              <div class="free-text">可排</div>
            </template>
          </div>
        </template>
      </div>
      <div v-if="!loading && coaches.length === 0" class="empty">{{ viewMode === 'outdoor' ? '暂无在职教练' : '当前场馆暂无教练' }}</div>
    </div>

    <el-dialog v-model="bookVisible" title="安排私教课" width="500px" destroy-on-close>
      <el-form label-width="96px">
        <el-form-item label="教练" required>
          <el-select v-model="bookForm.coachId" filterable style="width: 100%" @change="onBookCoachChange">
            <el-option v-for="c in coaches" :key="c._id" :label="c.name" :value="c._id" />
          </el-select>
        </el-form-item>
        <el-form-item label="日期"><el-input v-model="bookForm.date" disabled /></el-form-item>
        <el-form-item label="时段"><el-input v-model="bookForm.time" disabled /></el-form-item>
        <el-form-item v-if="viewMode === 'outdoor'" label="记入门店" required>
          <el-select v-model="bookForm.venueId" style="width: 100%" @change="onBookVenueChange">
            <el-option v-for="v in outdoorVenues" :key="v.id" :label="v.shortName || v.name" :value="v.id" />
          </el-select>
        </el-form-item>
        <el-form-item label="场地" required>
          <el-select v-model="bookForm.court" filterable style="width: 100%" :disabled="viewMode === 'outdoor'">
            <el-option v-for="c in freeCourts" :key="c._id" :label="c.name" :value="c.name" />
          </el-select>
        </el-form-item>
        <el-form-item label="学员" required>
          <div style="display:flex;gap:8px;width:100%">
            <el-select
              v-model="bookForm.memberKey"
              filterable remote reserve-keyword placeholder="姓名 / 手机"
              :remote-method="searchMembers" :loading="memberLoading" style="flex:1" @change="onPickMember"
            >
              <el-option
                v-for="m in memberOptions" :key="m._id"
                :label="(m.nickName || m.userName || '') + ' ' + (m.phone || '')" :value="m._id"
              />
            </el-select>
            <el-button @click="regVisible = true">注册新用户</el-button>
          </div>
        </el-form-item>
        <el-form-item label="同时发卡">
          <el-select v-model="bookForm.issueTpl" clearable filterable placeholder="不另发卡，使用已有教练卡" style="width:100%" :loading="tplLoading" @change="onIssueTplChange">
            <el-option v-for="t in issuableTemplates" :key="t._id" :label="tplLabel(t)" :value="t._id" />
          </el-select>
        </el-form-item>
        <template v-if="bookForm.issueTpl">
          <el-form-item label="发卡金额">
            <el-input-number v-model="bookForm.issuePrice" :min="0" :precision="2" :step="10" />
          </el-form-item>
        </template>
        <el-form-item v-else label="教练卡" required>
          <el-select v-model="bookForm.cardId" style="width: 100%" :disabled="!coachCards.length" placeholder="请选择已有教练卡">
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

    <el-dialog v-model="regVisible" title="注册新用户" width="420px" destroy-on-close>
      <el-form label-width="80px">
        <el-form-item label="手机号" required><el-input v-model="regForm.phone" maxlength="11" /></el-form-item>
        <el-form-item label="昵称"><el-input v-model="regForm.nickName" placeholder="可不填" /></el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="regVisible = false">取消</el-button>
        <el-button type="primary" :loading="regSaving" @click="submitReg">保存并选用</el-button>
      </template>
    </el-dialog>

    <el-dialog v-model="notifyVisible" title="排课成功通知" width="480px">
      <el-input v-model="notifyText" type="textarea" :rows="5" />
      <div style="margin-top:12px;display:flex;gap:8px;align-items:center">
        <span style="font-size:13px;color:#999">自定义话术</span>
        <el-input v-model="notifyCustom" placeholder="如：请准时到场" style="flex:1" />
        <el-button @click="saveNotifyCustom">保存</el-button>
      </div>
      <template #footer>
        <el-button @click="notifyVisible = false">关闭</el-button>
        <el-button type="primary" @click="copyNotify">一键复制</el-button>
      </template>
    </el-dialog>

    <el-dialog v-model="detailVisible" title="私教课详情" width="440px">
      <el-descriptions v-if="current" :column="1" border>
        <el-descriptions-item label="学员">{{ current.userName }}</el-descriptions-item>
        <el-descriptions-item label="教练">{{ current.coachName }}</el-descriptions-item>
        <el-descriptions-item v-if="current.venueName || current.venueShort" label="门店">{{ current.venueShort || current.venueName }}</el-descriptions-item>
        <el-descriptions-item label="场地">{{ current.court }}</el-descriptions-item>
        <el-descriptions-item label="时段">{{ current.date }} {{ current.time }}</el-descriptions-item>
        <el-descriptions-item label="用卡">{{ current.cardName || '-' }}</el-descriptions-item>
      </el-descriptions>
      <template #footer>
        <el-button @click="detailVisible = false">关闭</el-button>
        <el-button v-if="!isCoachAccount" type="danger" :loading="saving" @click="cancelLesson">取消这节课</el-button>
      </template>
    </el-dialog>

    <el-dialog v-model="lockVisible" title="锁定自己的外场" width="420px">
      <el-form label-width="88px">
        <el-form-item label="日期时段">{{ currentDate }} {{ lockTime }}</el-form-item>
        <el-form-item label="记入门店" required>
          <el-select v-model="lockVenueId" style="width:100%" filterable>
            <el-option v-for="v in outdoorVenues" :key="v.id" :label="v.shortName || v.name" :value="v.id" />
          </el-select>
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="lockVisible = false">取消</el-button>
        <el-button type="primary" :loading="saving" @click="confirmLockOutdoor">确认锁定</el-button>
      </template>
    </el-dialog>
  </div>
</template>

<script setup>
import { ref, computed, onMounted, onUnmounted } from 'vue'
import { ElMessage, ElMessageBox } from 'element-plus'
import { cardAllowsCourt } from '../utils/courtTypeRule.js'
import { roleKind, can as canAction } from '../utils/auth.js'
import { downloadExcelHtml } from '../utils/exportTable.js'
import { operatorFields } from '../utils/operator.js'
import { digits, isCoachRole, pickCoachBind, UNBOUND_MSG } from '../utils/coachPerm.js'
import {
  coachScheduleExportFilename,
  scheduleCellText,
  buildCoachScheduleRows
} from '../utils/scheduleExport.js'

const FALLBACK_SLOTS = [
  '08:00-09:00', '09:00-10:00', '10:00-11:00', '11:00-12:00',
  '14:00-15:00', '15:00-16:00', '16:00-17:00', '17:00-18:00',
  '18:00-19:00', '19:00-20:00', '20:00-21:00', '21:00-22:00'
]
const timeSlots = ref(FALLBACK_SLOTS.slice())

const loading = ref(false)
const saving = ref(false)
const regVisible = ref(false)
const regSaving = ref(false)
const regForm = ref({ phone: '', nickName: '' })
const templates = ref([])
const tplLoading = ref(false)
const notifyVisible = ref(false)
const notifyText = ref('')
const notifyCustom = ref('')
async function showNotify(info) {
  let custom = '请准时到场，如需取消请提前告知教练'
  try {
    const r = await post('/adminNotices', { action: 'getScripts' })
    if (r.ok && r.scripts && r.scripts.coach) custom = r.scripts.coach
  } catch (e) {}
  notifyCustom.value = custom
  const d = info.date || ''
  const parts = d.split('-')
  const weeks = ['日', '一', '二', '三', '四', '五', '六']
  let weekStr = ''
  if (parts.length === 3) {
    const dt = new Date(d.replace(/-/g, '/'))
    if (!isNaN(dt.getTime())) weekStr = '周' + weeks[dt.getDay()]
  }
  const dateStr = parts.length === 3 ? (Number(parts[1]) + '月' + Number(parts[2]) + '日' + weekStr) : d
  const fixed = '已预约 ' + dateStr + ' ' + (info.time || '') + ' 时 ' + (info.court || '') + ' 私教课'
  notifyText.value = fixed + (notifyCustom.value ? '，' + notifyCustom.value : '')
  notifyVisible.value = true
}
async function saveNotifyCustom() {
  try {
    const r = await post('/adminNotices', { action: 'saveScript', type: 'coach', content: notifyCustom.value || '' })
    if (!r.ok) { ElMessage.error(r.msg || '保存失败'); return }
    ElMessage.success('话术已保存')
  } catch (e) { ElMessage.error('保存失败') }
}
function copyNotify() {
  navigator.clipboard.writeText(notifyText.value).then(() => {
    ElMessage.success('已复制')
    notifyVisible.value = false
  }).catch(() => ElMessage.warning('复制失败'))
}
async function loadTemplates() {
  tplLoading.value = true
  try {
    const r = await post('/adminGetCardTemplates', {})
    templates.value = (r.list || []).filter(t => t.type === 'coach' || t.type === 'times')
    currentVenueId.value = venueId()
    if (bookForm.value.issueTpl && !issuableTemplates.value.some(t => String(t._id) === String(bookForm.value.issueTpl))) {
      bookForm.value.issueTpl = ''
    }
  } finally { tplLoading.value = false }
}
function tplLabel(t) {
  const tag = t.type === 'coach' ? '教练卡' : t.type === 'times' ? '次卡' : t.type
  const times = Number(t.totalTimes || t.total_times || 0)
  const timesStr = times > 0 ? ' ' + times + '次' : ''
  return t.name + '（' + tag + timesStr + '）'
}
function onIssueTplChange(id) {
  const t = templates.value.find(x => String(x._id) === String(id))
  bookForm.value.issuePrice = t ? (Number(t.price) || 0) : 0
  if (id) bookForm.value.cardId = ''
}
function onBookCoachChange(id) {
  const c = (coaches.value || []).find((x) => String(x._id) === String(id))
  bookForm.value.coachId = c ? c._id : id
  bookForm.value.coachName = c ? (c.name || '') : ''
}
async function submitReg() {
  const phone = String(regForm.value.phone || '').replace(/\D/g, '')
  if (!/^1\d{10}$/.test(phone)) { ElMessage.warning('请填写11位手机号'); return }
  regSaving.value = true
  try {
    const result = await post('/adminRegisterUser', {
      phone,
      nickName: (regForm.value.nickName || '').trim(),
      venueId: venueId(),
      venueName: venueName.value
    })
    if (!result.ok || !result.user) { ElMessage.error(result.msg || '注册失败'); return }
    const u = result.user
    if (!memberOptions.value.find((x) => x._id === u._id)) memberOptions.value.unshift(u)
    bookForm.value.memberKey = u._id
    bookForm.value.userName = u.nickName || u.userName || phone
    bookForm.value.userOpenid = u.openid || ''
    ElMessage.success('已注册并选用')
    regVisible.value = false
    regForm.value = { phone: '', nickName: '' }
  } catch (e) { ElMessage.error(e.message || '注册失败') }
  finally { regSaving.value = false }
}
const dateObj = ref('')
const currentDate = ref('')
const coaches = ref([])
const courts = ref([])
const bookings = ref([])
const groups = ref([])
const viewMode = ref('venue')
const outdoorVenues = ref([])
const outdoorBookings = ref([])
const occupied = ref([])
const bookVisible = ref(false)
const detailVisible = ref(false)
const current = ref(null)
const memberOptions = ref([])
const memberCards = ref([])
const memberLoading = ref(false)
const bookForm = ref({
  coachId: '', coachName: '', date: '', time: '', court: '',
  venueId: '', venueName: '',
  memberKey: '', userName: '', userOpenid: '', cardId: '', remark: '',
  issueTpl: '', issuePrice: 0
})

const venueId = () => localStorage.getItem('venue_id') || ''
const currentVenueId = ref(venueId())
function templateAllowedAtVenue(tpl, vid) {
  let rule = tpl && (tpl.timeRule || tpl.time_rule)
  if (typeof rule === 'string') {
    try { rule = JSON.parse(rule) } catch (e) { rule = {} }
  }
  const ids = (rule && Array.isArray(rule.venueIds) ? rule.venueIds : []).map((x) => String(x)).filter(Boolean)
  if (!ids.length) return true
  if (!vid) return false
  return ids.indexOf(String(vid)) >= 0
}
const issuableTemplates = computed(() => templates.value.filter((t) => templateAllowedAtVenue(t, currentVenueId.value)))
const venueName = computed(() => localStorage.getItem('venue_name') || '')
const isCoachAccount = computed(() => isCoachRole(roleKind()))
function boundCoach() {
  if (!isCoachAccount.value) return null
  const op = operatorFields()
  const hit = pickCoachBind(coaches.value || [], {
    phone: op.operatorPhone || op.operatorUsername,
    name: op.operatorName
  })
  if (hit) return hit
  // outdoor rows may group the same person under ids[]
  const phone = String(op.operatorPhone || op.operatorUsername || '').replace(/\D/g, '')
  const name = String(op.operatorName || '').trim()
  return (coaches.value || []).find((c) => {
    const ids = personIds(c)
    if (hit && ids.includes(String(hit._id || hit.id))) return true
    if (phone && String(c.phone || '').replace(/\D/g, '') === phone) return true
    if (!phone && name && String(c.name || '').trim() === name) return true
    return false
  }) || null
}
const bindHint = computed(() => {
  if (!isCoachAccount.value) return ''
  return boundCoach() ? '' : UNBOUND_MSG
})
function isSelfCoachRow(coach) {
  const self = boundCoach()
  if (!self || !coach) return false
  const ids = new Set(personIds(coach).concat(personIds(self)))
  const selfId = String(self._id || self.id || '')
  if (selfId && personIds(coach).includes(selfId)) return true
  if (selfId && personIds(self).some((id) => personIds(coach).includes(String(id)))) return true
  const phone = String((operatorFields().operatorPhone || operatorFields().operatorUsername || '')).replace(/\D/g, '')
  if (phone && String(coach.phone || '').replace(/\D/g, '') === phone) return true
  return String(coach.name || '').trim() && String(coach.name || '').trim() === String(self.name || '').trim()
}
function exportExcel() {
  if (!coaches.value.length) { ElMessage.warning('没有可导出的排课表'); return }
  const headers = ['教练'].concat((timeSlots.value || []).map((t) => String(t).slice(0, 5)))
  const rows = buildCoachScheduleRows(coaches.value, timeSlots.value, (coach, t) => {
    const lesson = getLesson(coach, t)
    if (lesson) return scheduleCellText({ lesson, lessonPlace: lessonPlace(lesson) })
    const occ = getOccupied(coach, t)
    if (occ) return scheduleCellText({ occupied: occ, occupiedTitle: occupiedTitle(occ), occupiedPlace: occupiedPlace(occ) })
    const group = getGroup(coach, t)
    if (group) return scheduleCellText({ group })
    return '可排'
  })
  const mode = viewMode.value === 'outdoor' ? 'outdoor' : 'venue'
  const fname = coachScheduleExportFilename(mode, venueName.value, currentDate.value)
  const sheet = viewMode.value === 'outdoor' ? '全店外场' : (venueName.value || '本店排课')
  downloadExcelHtml(fname, sheet, headers, rows)
  ElMessage.success('已导出 ' + currentDate.value + ' 的排课表')
}
const lockVisible = ref(false)
const lockVenueId = ref('')
const lockTime = ref('')
const lockCoach = ref(null)
function lockOwnOutdoor(coach, time) {
  const self = boundCoach()
  if (!self) { ElMessage.warning(UNBOUND_MSG); return }
  if (!isSelfCoachRow(coach)) { ElMessage.warning('只能锁自己的外场'); return }
  let useVenueId = venueId()
  const has = (outdoorVenues.value || []).find((v) => v.id === useVenueId)
  if (!has) {
    const first = (outdoorVenues.value || [])[0]
    useVenueId = first ? first.id : ''
  }
  lockCoach.value = coach
  lockTime.value = time
  lockVenueId.value = useVenueId
  lockVisible.value = true
}
async function confirmLockOutdoor() {
  const self = boundCoach()
  const coach = lockCoach.value
  const time = lockTime.value
  if (!self || !time) { ElMessage.warning(UNBOUND_MSG); return }
  const picked = (outdoorVenues.value || []).find((v) => v.id === lockVenueId.value)
  const useVenueId = lockVenueId.value || venueId()
  const useVenueName = picked ? picked.name : venueName.value
  if (!useVenueId) { ElMessage.warning('请先选择门店'); return }
  saving.value = true
  try {
    const useCoachId = (coach && (personIds(coach)[0] || coach._id)) || self._id || self.id
    const result = await post('/adminSaveBooking', {
      action: 'lock',
      data: {
        venueId: useVenueId,
        venueName: useVenueName,
        court: '外场',
        date: currentDate.value,
        time,
        coachId: useCoachId,
        coachName: coach && coach.name ? coach.name : (self.name || ''),
        remark: '[锁场] 教练锁外场'
      }
    })
    if (!result.ok) { ElMessage.error(result.msg || '锁场失败'); return }
    lockVisible.value = false
    ElMessage.success(result.pending ? (result.msg || '已记录，取消后自动锁场') : '已锁定外场')
    loadAll()
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    saving.value = false
  }
}

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
  (memberCards.value || []).filter((c) => c.type === 'coach' && c.status === 'active' && (c.remainingTimes || 0) > 0 && isCardUsable(c, bookForm.value.date, bookForm.value.time))
)
function isCardUsable(card, dateStr, timeStr) {
  if (!card || card.status !== 'active') return false
  if (card.validFrom && dateStr && dateStr < card.validFrom) return false
  if (card.validTo && dateStr && dateStr > card.validTo) return false
  if ((card.remainingTimes || 0) <= 0) return false
  const rule = card.timeRule || card.time_rule
  let ruleObj = rule
  if (rule && typeof rule === 'string') {
    try { ruleObj = JSON.parse(rule) } catch (e) { ruleObj = null }
  }
  if (ruleObj && Array.isArray(ruleObj.venueIds) && ruleObj.venueIds.length) {
    const vid = bookForm.value.venueId || currentVenueId.value || venueId() || ''
    if (vid && ruleObj.venueIds.map((x) => String(x)).indexOf(String(vid)) < 0) return false
  }
  const courtName = bookForm.value.court
  if (courtName) {
    const court = (courts.value || []).find((c) => String(c.name) === String(courtName)) || { name: courtName, type: '' }
    if (!cardAllowsCourt(card, court, bookForm.value.remark || '')) return false
  }
  if (ruleObj && (ruleObj.mode === 'dates' || (ruleObj.dateRanges && ruleObj.dateRanges.length))) {
    const hit = (ruleObj.dateRanges || []).some((rg) => rg.start && rg.end && dateStr >= rg.start && dateStr <= rg.end)
    if (!hit) return false
  }
  if (ruleObj && ruleObj.mode !== 'unlimited' && ruleObj.mode !== 'all' && ruleObj.mode !== 'dates' && dateStr) {
    const d = new Date(String(dateStr).replace(/-/g, '/'))
    let weekday = d.getDay()
    if (weekday === 0) weekday = 7
    const slotStart = (timeStr || '').split('-')[0]
    if (ruleObj.mode === 'rules' && Array.isArray(ruleObj.rules)) {
      for (const r of ruleObj.rules) {
        if (!(r.weekdays || []).includes(weekday)) continue
        const slots = r.timeSlots || []
        if (!slots.length) {
          if (r.unlimited) return true
          continue
        }
        for (const s of slots) {
          if (slotStart >= s.start && slotStart < s.end) return true
        }
      }
      return false
    }
  }
  return true
}
function isOutdoorSharedCourt(name) {
  return String(name || '').trim() === '外场'
}
function normCourt(name) {
  return String(name || '').trim().replace(/^发球机/u, '').replace(/场$/u, '')
}

const freeCourts = computed(() => {
  const t = bookForm.value.time
  return (courts.value || []).filter((c) => {
    if (isOutdoorSharedCourt(c.name)) return true
    const busy = bookings.value.find((b) => normCourt(b.court) === normCourt(c.name) && b.time === t && (b.status === 'booked' || b.status === 'locked'))
    const g = groups.value.find((x) => normCourt(x.court) === normCourt(c.name) && x.time === t && x.status === 'open')
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
  let payload = body || {}
  if (String(path || '').indexOf('adminSave') >= 0) {
    payload = Object.assign({}, operatorFields(), payload)
    if (payload.data && typeof payload.data === 'object') {
      payload.data = Object.assign({}, operatorFields(), payload.data)
    }
  }
  const res = await fetch(base + path, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(payload)
  })
  const data = await res.json()
  return data.body ? (typeof data.body === 'string' ? JSON.parse(data.body) : data.body) : data
}

function personIds(coach) {
  if (!coach) return []
  if (typeof coach === 'object') {
    if (Array.isArray(coach.ids) && coach.ids.length) return coach.ids.map(String)
    if (coach._id != null) return [String(coach._id)]
  }
  return [String(coach)]
}
function shortName(b) {
  if (!b) return ''
  return b.venueShort || shortVenue(b.venueName, b.venueId)
}
function shortVenue(name, id) {
  const s = String(name || '')
  const m = s.match(/[（(]([^）)]+)[）)]/)
  if (m) return m[1].replace(/店$/, '')
  return s || String(id || '')
}
function getLesson(coach, time) {
  const ids = new Set(personIds(coach))
  const list = viewMode.value === 'outdoor' ? outdoorBookings.value : bookings.value
  return list.find((b) => ids.has(String(b.coachId || b.coach_id)) && b.time === time && b.status === 'booked')
}
function getOccupied(coach, time) {
  if (viewMode.value !== 'outdoor') return null
  const ids = new Set(personIds(coach))
  return (occupied.value || []).find((b) => ids.has(String(b.coachId || b.coach_id)) && b.time === time)
}
function getGroup(coach, time) {
  const ids = new Set(personIds(coach))
  return groups.value.find(
    (g) => ids.has(String(g.coachId || g.coach_id)) && g.time === time && g.status === 'open'
  )
}
function lessonPlace(b) {
  if (!b) return ''
  if (viewMode.value === 'outdoor') return (shortName(b) || '外场') + ' · 外场'
  return b.court || ''
}
function occupiedTitle(o) {
  if (!o) return ''
  if (o.kind === 'group') return o.name || o.userName || '团课'
  return o.userName || '已排课'
}
function occupiedPlace(o) {
  if (!o) return ''
  const place = shortName(o)
  if (o.kind === 'group') return '团课' + (place ? ' · ' + place : '') + (o.court ? ' ' + o.court : '')
  return (place ? place + ' · ' : '') + (o.court || '已排')
}
function cellClass(coach, t) {
  if (getLesson(coach, t)) return 'booked'
  if (getOccupied(coach, t)) return 'busy'
  if (getGroup(coach, t)) return 'group'
  return 'free'
}
function setViewMode(mode) {
  if (viewMode.value === mode) return
  viewMode.value = mode
  loadAll()
}

async function loadOutdoor() {
  if (!currentDate.value) return
  loading.value = true
  try {
    const res = await post('/adminGetOutdoorSchedule', { date: currentDate.value })
    if (!res.ok) { ElMessage.error(res.msg || '加载失败'); return }
    coaches.value = res.coaches || []
    outdoorBookings.value = res.bookings || []
    occupied.value = res.occupied || []
    outdoorVenues.value = res.venues || []
    bookings.value = res.bookings || []
    groups.value = []
    courts.value = [{ _id: 'outdoor', name: '外场' }]
    const slots = res.slots || []
    timeSlots.value = slots.length ? slots.slice() : FALLBACK_SLOTS.slice()
  } catch (e) {
    ElMessage.error(e.message || '加载失败')
  } finally {
    loading.value = false
  }
}

async function loadAll() {
  if (viewMode.value === 'outdoor') {
    await loadOutdoor()
    return
  }
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
    outdoorBookings.value = []
    occupied.value = []
    const savedSlots = (hRes && (hRes.byWeekday?.[wd] || hRes.slots)) || []
    timeSlots.value = savedSlots.length ? savedSlots.slice() : FALLBACK_SLOTS.slice()
  } catch (e) {
    ElMessage.error(e.message || '加载失败')
  } finally {
    loading.value = false
  }
}

function onBookVenueChange(id) {
  const v = (outdoorVenues.value || []).find((x) => x.id === id)
  bookForm.value.venueName = v ? v.name : ''
}

function onCellClick(coach, time) {
  const lesson = getLesson(coach, time)
  if (lesson) {
    current.value = lesson
    detailVisible.value = true
    return
  }
  const occ = getOccupied(coach, time)
  if (occ) {
    if (occ.kind === 'group') {
      ElMessage.warning('该教练此时段已在' + (shortName(occ) || '其他门店') + '有团课')
    } else {
      ElMessage.warning('该教练此时段已在' + (shortName(occ) || '其他门店') + '排了' + (occ.court || '课'))
    }
    return
  }
  if (getGroup(coach, time)) {
    ElMessage.warning('该教练此时段有团课')
    return
  }
  if (isCoachAccount.value) {
    if (viewMode.value !== 'outdoor') {
      ElMessage.warning('教练不能代约私教课。如需锁自己的外场，请切换到「全店外场」。')
      return
    }
    lockOwnOutdoor(coach, time)
    return
  }
  let defaultVenueId = venueId()
  let defaultVenueName = venueName.value
  if (viewMode.value === 'outdoor') {
    const has = (outdoorVenues.value || []).find((v) => v.id === defaultVenueId)
    if (!has) {
      const first = (outdoorVenues.value || [])[0]
      defaultVenueId = first ? first.id : ''
      defaultVenueName = first ? first.name : ''
    } else {
      defaultVenueName = has.name
    }
  }
  bookForm.value = {
    coachId: coach._id, coachName: coach.name, date: currentDate.value, time,
    court: viewMode.value === 'outdoor' ? '外场' : '',
    venueId: defaultVenueId, venueName: defaultVenueName,
    memberKey: '', userName: '', userOpenid: '', cardId: '', remark: '',
    issueTpl: '', issuePrice: 0
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
  if (isCoachAccount.value || !canAction('book')) {
    ElMessage.warning('教练不能代约私教课或为他人预约')
    return
  }
  if (!bookForm.value.court) { ElMessage.warning('请选择场地'); return }
  if (!bookForm.value.memberKey || !bookForm.value.userName) { ElMessage.warning('请选择学员'); return }
  if (!bookForm.value.cardId && !bookForm.value.issueTpl) { ElMessage.warning('请选择教练卡或同时发卡'); return }
  let useVenueId = venueId()
  let useVenueName = venueName.value
  let useCoachId = bookForm.value.coachId
  if (viewMode.value === 'outdoor') {
    if (!bookForm.value.venueId) { ElMessage.warning('请选择记入哪家店'); return }
    useVenueId = bookForm.value.venueId
    const picked = (outdoorVenues.value || []).find((v) => v.id === useVenueId)
    useVenueName = bookForm.value.venueName || (picked ? picked.name : '')
    const person = (coaches.value || []).find((c) => personIds(c).includes(String(bookForm.value.coachId)) || String(c._id) === String(bookForm.value.coachId))
    const at = person && (person.venues || []).find((v) => v.id === useVenueId)
    if (at && at.coachId) useCoachId = at.coachId
  }
  saving.value = true
  try {
    let cardId = bookForm.value.cardId
    let cardName = ''
    if (bookForm.value.issueTpl) {
      const tpl = templates.value.find(t => String(t._id) === String(bookForm.value.issueTpl))
      const issueRes = await post('/adminIssueCard', {
        userId: bookForm.value.memberKey,
        templateId: bookForm.value.issueTpl,
        price: Number(bookForm.value.issuePrice) || 0,
        venueId: useVenueId,
        issuerName: localStorage.getItem('admin_name') || '管理员',
        venueName: useVenueName
      })
      if (!issueRes.ok) { ElMessage.error(issueRes.msg || '发卡失败'); return }
      cardId = issueRes.id
      cardName = tpl ? tpl.name : '教练卡'
    } else {
      const selCard = coachCards.value.find((c) => c._id === bookForm.value.cardId)
      if (!selCard) { ElMessage.warning('请重新选择教练卡'); return }
      cardId = selCard._id
      cardName = selCard.cardName
    }
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
        venueId: useVenueId,
        venueName: useVenueName,
        memberId: bookForm.value.memberKey,
        memberOpenid: bookForm.value.userOpenid,
        cardId: cardId,
        cardName: cardName,
        cardType: 'coach',
        coachId: useCoachId,
        coachName: bookForm.value.coachName
      }
    })
    if (!result.ok) { ElMessage.error(result.msg || '排课失败'); return }
    ElMessage.success('已排课')
    const notifyCourt = viewMode.value === 'outdoor'
      ? ('外场（' + shortVenue(useVenueName, useVenueId) + '）')
      : bookForm.value.court
    showNotify({ date: bookForm.value.date, time: bookForm.value.time, court: notifyCourt })
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

function onVenueChanged() {
  currentVenueId.value = venueId()
  if (bookForm.value.issueTpl && !issuableTemplates.value.some((t) => String(t._id) === String(bookForm.value.issueTpl))) {
    bookForm.value.issueTpl = ''
  }
  loadAll()
}
onMounted(() => {
  loadTemplates()
  goToday()
  window.addEventListener('venue-changed', onVenueChanged)
})
onUnmounted(() => window.removeEventListener('venue-changed', onVenueChanged))
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
.slot.busy { background: #f4f4f5; cursor: default; }
.booked-user { font-weight: 600; color: #1a5c3a; }
.booked-status { color: #909399; margin-top: 2px; }
.free-text { color: #67c23a; }
.empty { text-align: center; color: #999; padding: 40px; }
</style>
