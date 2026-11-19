<template>
  <div class="page">
    <div class="page-header">
      <div>
        <h2>锁场规则</h2>
        <p class="sub">用一条规则锁定一批场地和时段。删除规则会解除该规则生成的全部锁场，不会取消客人预约。小程序仍按原来的锁场记录显示占用。</p>
      </div>
    </div>

    <div class="card toolbar-card">
      <div class="toolbar">
        <div class="toolbar-left">
          <span class="toolbar-label">场馆</span>
          <el-select v-model="venueId" placeholder="选择场馆" style="width: 280px" @change="onVenueChange">
            <el-option v-for="v in venues" :key="v.venueId || v._id" :label="v.name" :value="v.venueId || v._id" />
          </el-select>
        </div>
        <el-button type="primary" @click="openCreate">+ 新增</el-button>
      </div>
    </div>

    <div class="card">
      <el-table :data="rules" v-loading="loadingRules" size="small" empty-text="暂无锁场规则">
        <el-table-column prop="title" label="标题" min-width="110" show-overflow-tooltip />
        <el-table-column label="停用位置" min-width="240" show-overflow-tooltip>
          <template #default="{ row }">{{ formatLocation(row) }}</template>
        </el-table-column>
        <el-table-column label="停用日期范围" width="210">
          <template #default="{ row }">{{ row.dateStart }} ~ {{ row.dateEnd }}</template>
        </el-table-column>
        <el-table-column label="停用星期" min-width="200">
          <template #default="{ row }">{{ formatWeekdays(row.weekdays) }}</template>
        </el-table-column>
        <el-table-column label="停用每天时间段" width="150">
          <template #default="{ row }">{{ formatTimeRange(row) }}</template>
        </el-table-column>
        <el-table-column label="配置日期" width="170">
          <template #default="{ row }">{{ formatDateTime(row.createdAt) }}</template>
        </el-table-column>
        <el-table-column label="状态" width="100">
          <template #default="{ row }">
            <el-tag :type="statusType(row.displayStatus)" size="small" effect="light">{{ statusText(row.displayStatus) }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column label="操作" width="130" fixed="right">
          <template #default="{ row }">
            <el-button link type="primary" size="small" @click="openEdit(row)">编辑</el-button>
            <el-button link type="danger" size="small" @click="doDelete(row)">删除</el-button>
          </template>
        </el-table-column>
      </el-table>
    </div>

    <div class="card">
      <h3>未归入规则的锁场</h3>
      <p class="sub">以前留下、还没有归进规则的锁场可以在这里逐条解锁，不会自动并入规则。</p>
      <el-table :data="orphans" size="small" max-height="360" v-loading="loadingRules" empty-text="没有未归入规则的锁场">
        <el-table-column prop="date" label="日期" width="110" />
        <el-table-column prop="time" label="时段" width="110" />
        <el-table-column prop="court" label="场地" width="120" />
        <el-table-column prop="operatorName" label="操作人" width="120" />
        <el-table-column prop="remark" label="备注" min-width="160" show-overflow-tooltip />
        <el-table-column label="操作时间" width="170">
          <template #default="{ row }">{{ formatDateTime(row.timeText) }}</template>
        </el-table-column>
        <el-table-column label="操作" width="90" fixed="right">
          <template #default="{ row }">
            <el-button link type="danger" size="small" @click="unlockOne(row)">解锁</el-button>
          </template>
        </el-table-column>
      </el-table>
    </div>

    <el-dialog
      v-model="dialog.visible"
      :title="dialog.editing ? '编辑锁场规则' : '新增锁场规则'"
      width="680px"
      destroy-on-close
      class="rule-dialog"
    >
      <el-form :model="form" label-width="120px">
        <el-form-item label="标题">
          <el-input v-model="form.title" placeholder="默认「锁场」" maxlength="64" style="width: 360px" />
        </el-form-item>
        <el-form-item label="停用日期" required>
          <el-date-picker
            v-model="form.dateRange"
            type="daterange"
            value-format="YYYY-MM-DD"
            start-placeholder="开始日期"
            end-placeholder="结束日期"
            style="width: 360px"
          />
        </el-form-item>
        <el-form-item label="停用星期">
          <div class="weekday-row">
            <span class="weekday-summary">{{ formatWeekdays(form.weekdays) }}</span>
            <el-button link type="primary" @click="weekdaysOpen = !weekdaysOpen">{{ weekdaysOpen ? '收起' : '展开' }}</el-button>
          </div>
          <el-checkbox-group v-if="weekdaysOpen" v-model="form.weekdays" class="weekday-group">
            <el-checkbox v-for="d in WEEKDAY_OPTS" :key="d.value" :value="d.value">{{ d.label }}</el-checkbox>
          </el-checkbox-group>
        </el-form-item>
        <el-form-item label="停用时段">
          <div class="time-row">
            <el-time-picker v-model="form.timeStart" format="HH:mm" value-format="HH:mm" placeholder="开始" style="width: 130px" />
            <span class="range-sep">~</span>
            <el-time-picker v-model="form.timeEnd" format="HH:mm" value-format="HH:mm" placeholder="结束" style="width: 130px" />
            <el-button link type="primary" @click="addOneHour">加一小时</el-button>
            <el-button link type="primary" @click="setAllDay">全天</el-button>
          </div>
          <div class="hint-block">00:00~00:00表示全天停用（按该场馆当天营业时段）</div>
        </el-form-item>
        <el-form-item label="选择位置" required>
          <el-select v-model="form.venueId" placeholder="选择场馆" style="width: 360px" @change="onFormVenue">
            <el-option v-for="v in venues" :key="v.venueId || v._id" :label="v.name" :value="v.venueId || v._id" />
          </el-select>
          <div class="court-box">
            <el-checkbox
              :model-value="allCourtsChecked"
              :indeterminate="courtsIndeterminate"
              @change="toggleAllCourts"
            >全部</el-checkbox>
            <el-checkbox-group v-model="form.courts" class="court-group">
              <el-checkbox v-for="c in formCourts" :key="c._id || c.name" :value="c.name">{{ c.name }}</el-checkbox>
            </el-checkbox-group>
          </div>
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="dialog.visible = false">取消</el-button>
        <el-button type="primary" :loading="saving" @click="doSave">确认</el-button>
      </template>
    </el-dialog>
  </div>
</template>

<script setup>
import { ref, computed, onMounted } from 'vue'
import { ElMessage, ElMessageBox } from 'element-plus'

const base = import.meta.env.DEV ? '/api' : 'https://cloud1-d3g0pb1qk028e3585-d862bc2-1312769671.ap-shanghai.app.tcloudbase.com'

const WEEKDAY_OPTS = [
  { value: 1, label: '周一' },
  { value: 2, label: '周二' },
  { value: 3, label: '周三' },
  { value: 4, label: '周四' },
  { value: 5, label: '周五' },
  { value: 6, label: '周六' },
  { value: 7, label: '周日' }
]
const ALL_WEEKDAYS = [1, 2, 3, 4, 5, 6, 7]
const FALLBACK_SLOTS = [
  '08:00-09:00', '09:00-10:00', '10:00-11:00', '11:00-12:00',
  '12:00-13:00', '13:00-14:00', '14:00-15:00', '15:00-16:00',
  '16:00-17:00', '17:00-18:00', '18:00-19:00', '19:00-20:00',
  '20:00-21:00', '21:00-22:00'
]

const venues = ref([])
const venueId = ref('')
const rules = ref([])
const orphans = ref([])
const loadingRules = ref(false)
const saving = ref(false)
const weekdaysOpen = ref(false)
const formCourts = ref([])
const timeSlots = ref(FALLBACK_SLOTS.slice())
const courtCache = ref({})
const hoursCache = ref({})

const dialog = ref({ visible: false, editing: false })
const form = ref(emptyForm())

function emptyForm() {
  return {
    id: null,
    title: '锁场',
    venueId: '',
    courts: [],
    dateRange: null,
    weekdays: ALL_WEEKDAYS.slice(),
    timeStart: '00:00',
    timeEnd: '00:00'
  }
}

const allCourtsChecked = computed(() => {
  return formCourts.value.length > 0 && form.value.courts.length === formCourts.value.length
})
const courtsIndeterminate = computed(() => {
  const n = form.value.courts.length
  return n > 0 && n < formCourts.value.length
})

function allowedVenueIds() {
  try {
    const raw = JSON.parse(localStorage.getItem('admin_venue_ids') || '[]')
    if (Array.isArray(raw) && raw.length) return raw.map(String)
  } catch (e) {}
  const one = localStorage.getItem('admin_venue_id') || ''
  return one ? [one] : []
}

function operatorName() {
  return localStorage.getItem('admin_name') || '管理员'
}

function venueNameOf(id) {
  const venue = venues.value.find((v) => String(v.venueId || v._id) === String(id || ''))
  return venue ? venue.name : ''
}

function isOutdoorSharedCourt(courtName) {
  return String(courtName || '').trim() === '外场'
}

function formatWeekdays(days) {
  const names = { 1: '一', 2: '二', 3: '三', 4: '四', 5: '五', 6: '六', 7: '日' }
  const list = (days || []).map(Number).filter((d) => names[d])
  if (!list.length) return '-'
  return list.map((d, i) => (i === 0 ? '周' : '') + names[d]).join('、')
}

function formatTimeRange(row) {
  if (!row) return '-'
  if (row.allDay || (row.timeStart === '00:00' && row.timeEnd === '00:00')) return '全天'
  return (row.timeStart || '00:00') + ' ~ ' + (row.timeEnd || '00:00')
}

function formatLocation(row) {
  const name = row.venueName || venueNameOf(row.venueId) || ''
  const courts = (row.courts || []).join('、')
  if (name && courts) return name + '：' + courts
  return name || courts || '-'
}

function formatDateTime(v) {
  if (!v) return ''
  if (typeof v === 'string') return v.replace('T', ' ').replace(/\.\d+Z?$/, '').slice(0, 19)
  if (v instanceof Date && !Number.isNaN(v.getTime())) {
    const pad = (n) => String(n).padStart(2, '0')
    return v.getFullYear() + '-' + pad(v.getMonth() + 1) + '-' + pad(v.getDate()) + ' ' +
      pad(v.getHours()) + ':' + pad(v.getMinutes()) + ':' + pad(v.getSeconds())
  }
  return String(v)
}

function statusText(s) {
  if (s === 'expired') return '已过期'
  if (s === 'upcoming') return '未开始'
  return '进行中'
}

function statusType(s) {
  if (s === 'expired') return 'info'
  if (s === 'upcoming') return 'warning'
  return 'success'
}

function pad2(n) {
  return String(n).padStart(2, '0')
}

function addHourToHm(hm, hours) {
  const m = String(hm || '').match(/^(\d{1,2}):(\d{2})$/)
  if (!m) return '00:00'
  let min = Number(m[1]) * 60 + Number(m[2]) + hours * 60
  if (min < 0) min = 0
  if (min > 24 * 60) min = 24 * 60
  const h = Math.floor(min / 60)
  const n = min % 60
  return pad2(h) + ':' + pad2(n)
}

function slotStart(slot) {
  const m = String(slot || '').match(/^(\d{1,2}):(\d{2})/)
  return m ? pad2(Number(m[1])) + ':' + pad2(Number(m[2])) : ''
}

function setAllDay() {
  form.value.timeStart = '00:00'
  form.value.timeEnd = '00:00'
}

function addOneHour() {
  const start = form.value.timeStart || '00:00'
  const end = form.value.timeEnd || '00:00'
  if (start === '00:00' && end === '00:00') {
    const first = slotStart(timeSlots.value[0]) || '08:00'
    form.value.timeStart = first
    form.value.timeEnd = addHourToHm(first, 1)
    return
  }
  form.value.timeEnd = addHourToHm(end || start, 1)
}

function toggleAllCourts(checked) {
  form.value.courts = checked ? formCourts.value.map((c) => c.name) : []
}

async function post(path, body) {
  const res = await fetch(base + path, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(body)
  })
  const text = await res.text()
  let data
  try { data = text ? JSON.parse(text) : {} } catch (e) {
    throw new Error('接口异常')
  }
  return data.body ? (typeof data.body === 'string' ? JSON.parse(data.body) : data.body) : data
}

async function loadHours(vid) {
  if (!vid) {
    timeSlots.value = FALLBACK_SLOTS.slice()
    return timeSlots.value
  }
  if (hoursCache.value[vid]) {
    timeSlots.value = hoursCache.value[vid].slice()
    return timeSlots.value
  }
  try {
    const r = await post('/adminGetVenueHours', { venueId: vid })
    const slots = (r && r.ok && Array.isArray(r.slots) && r.slots.length) ? r.slots.slice() : FALLBACK_SLOTS.slice()
    slots.sort()
    hoursCache.value[vid] = slots
    timeSlots.value = slots.slice()
  } catch (e) {
    timeSlots.value = FALLBACK_SLOTS.slice()
  }
  return timeSlots.value
}

async function loadCourts(vid) {
  if (!vid) return []
  if (courtCache.value[vid]) return courtCache.value[vid]
  const r = await post('/adminGetCourts', { venueId: vid })
  const list = (r.list || []).filter((c) => !isOutdoorSharedCourt(c.name))
  courtCache.value[vid] = list
  return list
}

async function loadVenues() {
  const r = await post('/adminGetVenues', {})
  let list = r.list || []
  const ownIds = allowedVenueIds()
  const role = localStorage.getItem('admin_role') || ''
  const canAll = role === 'admin' || !ownIds.length
  if (!canAll) list = list.filter((v) => ownIds.includes(String(v.venueId || v._id)))
  venues.value = list
  if (!venueId.value && list[0]) {
    venueId.value = list[0].venueId || list[0]._id
  }
  if (venueId.value) {
    await loadHours(venueId.value)
    await loadRules()
  }
}

async function loadRules() {
  if (!venueId.value) {
    rules.value = []
    orphans.value = []
    return
  }
  loadingRules.value = true
  try {
    const r = await post('/adminSaveBooking', {
      action: 'listLockRules',
      data: { venueId: venueId.value, operatorName: operatorName() }
    })
    if (!r || !r.ok) {
      ElMessage.error((r && r.msg) || '加载规则失败')
      rules.value = []
      orphans.value = []
      return
    }
    rules.value = r.list || []
    orphans.value = (r.orphanLocks || []).filter((row) => !isOutdoorSharedCourt(row.court))
  } catch (e) {
    ElMessage.error(e.message || '加载规则失败')
  } finally {
    loadingRules.value = false
  }
}

async function onVenueChange() {
  await loadHours(venueId.value)
  await loadRules()
}

async function onFormVenue() {
  formCourts.value = await loadCourts(form.value.venueId)
  form.value.courts = form.value.courts.filter((name) => formCourts.value.some((c) => c.name === name))
  await loadHours(form.value.venueId)
}

function openCreate() {
  weekdaysOpen.value = false
  form.value = emptyForm()
  form.value.venueId = venueId.value
  formCourts.value = []
  dialog.value = { visible: true, editing: false }
  onFormVenue()
}

async function openEdit(row) {
  weekdaysOpen.value = false
  form.value = {
    id: row.id,
    title: row.title || '锁场',
    venueId: row.venueId || venueId.value,
    courts: (row.courts || []).slice(),
    dateRange: (row.dateStart && row.dateEnd) ? [row.dateStart, row.dateEnd] : null,
    weekdays: (row.weekdays && row.weekdays.length) ? row.weekdays.map(Number) : ALL_WEEKDAYS.slice(),
    timeStart: row.timeStart || '00:00',
    timeEnd: row.timeEnd || '00:00'
  }
  dialog.value = { visible: true, editing: true }
  await onFormVenue()
}

function buildPayload(extra) {
  const range = form.value.dateRange || []
  return Object.assign({
    id: form.value.id || undefined,
    title: form.value.title || '锁场',
    venueId: form.value.venueId,
    venueName: venueNameOf(form.value.venueId),
    courts: form.value.courts.slice(),
    dateStart: range[0] || '',
    dateEnd: range[1] || '',
    weekdays: (form.value.weekdays || []).map(Number),
    timeStart: form.value.timeStart || '00:00',
    timeEnd: form.value.timeEnd || '00:00',
    operatorName: operatorName()
  }, extra || {})
}

function confirmSaveText(dry, editing) {
  const skipOther = (dry.skipGroup || 0) + (dry.skipInvalid || 0)
  let text = `将锁定 ${dry.lock || 0} 个时段`
  if (editing) text += `，本规则已锁定 ${dry.keep || 0}`
  text += `，跳过已锁 ${dry.skipLocked || 0}，已预约改记自动锁 ${dry.pending || 0}，团课/无效跳过 ${skipOther}`
  if (editing) text += `。不再覆盖的锁场将解锁 ${dry.unlocked || 0} 条，清除自动锁 ${dry.intentsCleared || 0} 条`
  text += '。是否继续？'
  return text
}

async function doSave() {
  if (!form.value.venueId) { ElMessage.warning('请选择场馆'); return }
  if (!form.value.dateRange || form.value.dateRange.length !== 2) { ElMessage.warning('请选择日期范围'); return }
  if (!(form.value.weekdays || []).length) { ElMessage.warning('请选择停用星期'); return }
  if (!form.value.courts.length) { ElMessage.warning('请选择场地'); return }
  const start = form.value.timeStart || '00:00'
  const end = form.value.timeEnd || '00:00'
  if (!(start === '00:00' && end === '00:00') && end <= start) {
    ElMessage.warning('结束时间需晚于开始时间；全天请填 00:00~00:00')
    return
  }

  saving.value = true
  try {
    const dry = await post('/adminSaveBooking', { action: 'saveLockRule', data: buildPayload({ dryRun: true }) })
    if (!dry || !dry.ok) {
      ElMessage.error((dry && dry.msg) || '预览失败')
      return
    }
    try {
      await ElMessageBox.confirm(
        confirmSaveText(dry, dialog.value.editing),
        dialog.value.editing ? '确认编辑锁场规则' : '确认新增锁场规则',
        { confirmButtonText: '确定', cancelButtonText: '取消', type: 'warning' }
      )
    } catch (e) {
      return
    }
    const r = await post('/adminSaveBooking', { action: 'saveLockRule', data: buildPayload({ dryRun: false }) })
    if (!r || !r.ok) {
      ElMessage.error((r && r.msg) || '保存失败')
      return
    }
    const skip = (r.skipLocked || 0) + (r.skipGroup || 0) + (r.skipInvalid || 0)
    ElMessage.success(`完成：锁定 ${r.lock || 0}，自动锁 ${r.pending || 0}，跳过 ${skip}` +
      ((r.unlocked || 0) ? `，解锁不再覆盖 ${r.unlocked} 条` : ''))
    dialog.value.visible = false
    if (form.value.venueId && form.value.venueId !== venueId.value) {
      venueId.value = form.value.venueId
    }
    await loadRules()
  } catch (e) {
    ElMessage.error(e.message || '保存失败')
  } finally {
    saving.value = false
  }
}

async function doDelete(row) {
  if (!row || !row.id) return
  try {
    const dry = await post('/adminSaveBooking', {
      action: 'deleteLockRule',
      data: { id: row.id, operatorName: operatorName(), dryRun: true }
    })
    if (!dry || !dry.ok) {
      ElMessage.error((dry && dry.msg) || '预览失败')
      return
    }
    try {
      await ElMessageBox.confirm(
        `将解锁「${row.title || '锁场'}」生成的 ${dry.unlock || 0} 条锁场，并清除 ${dry.intents || 0} 条「取消后自动锁」记录。规则删除后不再显示，不会取消真实预约。是否继续？`,
        '删除锁场规则',
        { confirmButtonText: '删除并解锁', cancelButtonText: '取消', type: 'warning' }
      )
    } catch (e) {
      return
    }
    const r = await post('/adminSaveBooking', {
      action: 'deleteLockRule',
      data: { id: row.id, operatorName: operatorName(), dryRun: false }
    })
    if (!r || !r.ok) {
      ElMessage.error((r && r.msg) || '删除失败')
      return
    }
    ElMessage.success(`已删除规则，解锁 ${r.unlocked || 0} 条，清除自动锁 ${r.intentsCleared || 0} 条`)
    await loadRules()
  } catch (e) {
    ElMessage.error(e.message || '删除失败')
  }
}

async function unlockOne(row) {
  if (!row || !row.id) { ElMessage.warning('缺少记录'); return }
  try {
    await ElMessageBox.confirm(
      `确定解锁 ${row.court || ''} ${row.date || ''} ${row.time || ''}？`,
      '解锁该时段',
      { confirmButtonText: '解锁', cancelButtonText: '取消', type: 'warning' }
    )
  } catch (e) {
    return
  }
  try {
    const r = await post('/adminSaveBooking', {
      action: 'cancel',
      id: row.id,
      data: { operatorName: operatorName() }
    })
    if (r && r.ok) {
      ElMessage.success('已解锁')
      await loadRules()
    } else {
      ElMessage.error((r && r.msg) || '解锁失败')
    }
  } catch (e) {
    ElMessage.error(e.message || '解锁失败')
  }
}

onMounted(loadVenues)
</script>

<style scoped>
.page { padding: 16px; }
.page-header { margin-bottom: 16px; }
.page-header h2 { margin: 0; font-size: 20px; }
.sub { color: #888; font-size: 13px; margin: 4px 0 0; line-height: 1.5; }
.card { background: #fff; border-radius: 8px; padding: 16px; margin-bottom: 16px; }
.card h3 { margin: 0 0 4px; font-size: 16px; font-weight: 600; }
.toolbar { display: flex; align-items: center; justify-content: space-between; gap: 12px; flex-wrap: wrap; }
.toolbar-left { display: flex; align-items: center; gap: 8px; }
.toolbar-label { color: #606266; font-size: 14px; }
.weekday-row { display: flex; align-items: center; gap: 12px; min-height: 32px; }
.weekday-summary { color: #303133; }
.weekday-group { margin-top: 8px; }
.time-row { display: flex; align-items: center; flex-wrap: wrap; gap: 4px; }
.range-sep { margin: 0 8px; color: #909399; }
.hint-block { margin-top: 6px; color: #909399; font-size: 12px; }
.court-box { margin-top: 10px; padding: 10px 12px; background: #f7f8fa; border-radius: 6px; }
.court-group { margin-top: 8px; display: flex; flex-wrap: wrap; gap: 4px 8px; }
</style>
