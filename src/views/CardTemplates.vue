<template>
  <div class="page">
    <div class="page-header">
      <h2>卡模板管理</h2>
      <div>
        <el-button :loading="loading" @click="loadData">刷新</el-button>
        <el-button type="warning" plain :disabled="!picked.length" @click="batchVisible = true">批量改规则（{{ picked.length }}）</el-button>
        <el-button type="primary" @click="openAdd">新增卡模板</el-button>
      </div>
    </div>

    <el-table :data="list" stripe border v-loading="loading" row-key="_id" @selection-change="(rows) => picked = rows">
      <el-table-column type="selection" width="42" />
      <el-table-column prop="name" label="卡名称" min-width="140" />
      <el-table-column label="类型" width="110">
        <template #default="{ row }">
          <el-tag :type="typeTag(row.type)" size="small">{{ typeLabel(row.type) }}</el-tag>
        </template>
      </el-table-column>
      <el-table-column label="次数/天数" width="110">
        <template #default="{ row }">
          <span v-if="isTimesLike(row.type)">{{ row.totalTimes || 0 }} 次</span>
          <span v-else>{{ row.durationDays || '-' }} 天</span>
        </template>
      </el-table-column>
      <el-table-column label="时间规则" min-width="280">
        <template #default="{ row }">
          <span>{{ timeRuleText(row.timeRule) }}</span>
        </template>
      </el-table-column>
      <el-table-column label="状态" width="90">
        <template #default="{ row }">
          <el-tag :type="row.status === 'active' ? 'success' : 'info'" size="small">
            {{ row.status === 'active' ? '启用' : '停用' }}
          </el-tag>
        </template>
      </el-table-column>
      <el-table-column label="操作" width="220" fixed="right">
        <template #default="{ row }">
          <el-button link type="primary" @click="openEdit(row)">编辑</el-button>
          <el-button link type="warning" @click="toggleStatus(row)">{{ row.status === 'active' ? '停用' : '启用' }}</el-button>
          <el-button link type="danger" @click="onDelete(row)">删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <el-dialog v-model="batchVisible" title="批量改规则" width="480px">
      <p class="hint" style="margin:0 0 10px">改选中的卡模板。勾上「同步已发卡」会覆盖这些模板已经发出、且没单独改过规则的卡。</p>
      <el-form label-width="110px">
        <el-form-item label="每日最多约">
          <el-input-number v-model="batchHours" :min="0" :max="24" />
          <span class="hint">小时，0 = 不限制</span>
        </el-form-item>
        <el-form-item label="同步已发卡">
          <el-switch v-model="batchSyncIssued" />
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="batchVisible = false">取消</el-button>
        <el-button type="primary" :loading="batchSaving" @click="saveBatchRules">保存</el-button>
      </template>
    </el-dialog>
      <el-form label-width="110px">
        <el-form-item label="卡名称" required>
          <el-input v-model="form.name" placeholder="如：闲时次卡 / 全时段月卡" />
        </el-form-item>
        <el-form-item label="类型" required>
          <el-radio-group v-model="form.type" :disabled="!!form._id">
            <el-radio label="times" value="times">次卡</el-radio>
            <el-radio label="coach" value="coach">教练卡</el-radio>
            <el-radio label="group" value="group">团课</el-radio>
            <el-radio label="time" value="time">时间卡</el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item v-if="form.type === 'group'" label="说明">
          <span class="hint" style="margin-left:0">团课：时间由场馆排期，同一教练同一时段可带多名学员</span>
        </el-form-item>
        <template v-if="isTimesLike(form.type)">
          <el-form-item label="总次数" required><el-input-number v-model="form.totalTimes" :min="1" /></el-form-item>
          <el-form-item label="有效天数">
            <el-input-number v-model="form.durationDays" :min="0" />
            <span class="hint">0 = 不限</span>
          </el-form-item>
        </template>
        <template v-if="form.type === 'time'">
          <el-form-item label="有效天数" required>
            <el-input-number v-model="form.durationDays" :min="1" />
          </el-form-item>
        </template>

        <el-form-item label="每日最多约">
          <el-input-number v-model="form.timeRule.maxHoursPerDay" :min="0" :max="24" :step="1" />
          <span class="hint">小时，0 = 不限制</span>
        </el-form-item>
        <el-form-item label="适用门店">
          <el-select v-model="form.timeRule.venueIds" multiple clearable filterable placeholder="不选 = 所有门店可用" style="width: 100%">
            <el-option v-for="v in venueList" :key="v.venueId || v._id" :label="v.name" :value="v.venueId || v._id" />
          </el-select>
          <div class="hint" style="margin-left:0">默认不限制。选了之后只能在这些店订场用卡。</div>
        </el-form-item>
        <el-form-item v-if="form.type !== 'group'" label="可用规则">
          <el-radio-group v-model="form.timeRule.mode">
            <el-radio label="unlimited" value="unlimited">有效期内任意时间</el-radio>
            <el-radio label="rules" value="rules">自定义星期 + 时段</el-radio>
            <el-radio label="dates" value="dates">节假日 / 指定日期</el-radio>
          </el-radio-group>
        </el-form-item>
        <div v-if="form.type !== 'group' && form.timeRule.mode === 'dates'" class="rules-box">
          <el-form-item label="快捷节日">
            <el-button v-for="h in holidayPresets" :key="h.key" size="small" :type="form.timeRule.holidayKey === h.key ? 'primary' : ''" @click="applyHoliday(h)">{{ h.label }}</el-button>
          </el-form-item>
          <el-form-item label="可用日期段">
            <div v-for="(rg, i) in form.timeRule.dateRanges" :key="i" class="slot-row" style="margin-bottom:8px">
              <el-date-picker
                v-model="rg.range"
                type="daterange"
                value-format="YYYY-MM-DD"
                start-placeholder="开始"
                end-placeholder="结束"
                @change="(val) => onRangeChange(rg, val)"
              />
              <el-button link type="danger" @click="form.timeRule.dateRanges.splice(i, 1)">删</el-button>
            </div>
            <el-button size="small" @click="addDateRange">加一段日期</el-button>
            <div class="hint" style="margin-left:0">例：国庆 10月1日–10月7日，营业时间每天可用。配合上面「每日最多约」做成每天 1 小时。</div>
          </el-form-item>
        </div>

        <div v-if="form.type !== 'group' && form.timeRule.mode === 'rules'" class="rules-box">
          <div v-for="(rule, ri) in form.timeRule.rules" :key="ri" class="rule-card">
            <div class="rule-head">
              <b>规则 {{ ri + 1 }}</b>
              <el-button v-if="form.timeRule.rules.length > 1" link type="danger" @click="removeRule(ri)">删除这组</el-button>
            </div>
            <el-form-item label="可用星期">
              <el-checkbox-group v-model="rule.weekdays">
                <el-checkbox :label="1" :value="1">一</el-checkbox>
                <el-checkbox :label="2" :value="2">二</el-checkbox>
                <el-checkbox :label="3" :value="3">三</el-checkbox>
                <el-checkbox :label="4" :value="4">四</el-checkbox>
                <el-checkbox :label="5" :value="5">五</el-checkbox>
                <el-checkbox :label="6" :value="6">六</el-checkbox>
                <el-checkbox :label="7" :value="7">日</el-checkbox>
              </el-checkbox-group>
            </el-form-item>
            <el-form-item label="时段">
              <div class="slots">
                <div v-for="(slot, si) in rule.timeSlots" :key="si" class="slot-row">
                  <el-time-select v-model="slot.start" start="06:00" step="00:30" end="23:30" placeholder="开始" />
                  <span>至</span>
                  <el-time-select v-model="slot.end" start="06:00" step="00:30" end="23:30" placeholder="结束" />
                  <el-button link type="danger" @click="removeSlot(rule, si)">删</el-button>
                </div>
                <el-button size="small" @click="addSlot(rule)">加时段</el-button>
                <div class="hint" style="margin-left:0">闲时卡常用：周一至周五 10:00–18:00</div>
              </div>
            </el-form-item>
          </div>
          <el-button size="small" type="primary" plain @click="addRule">再加一组规则</el-button>
        </div>

        <el-form-item label="状态">
          <el-switch v-model="form.active" active-text="启用" inactive-text="停用" />
        </el-form-item>
        <el-form-item label="备注">
          <el-input v-model="form.description" type="textarea" :rows="2" />
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="visible = false">取消</el-button>
        <el-button type="primary" :loading="saving" @click="save">保存</el-button>
      </template>
    </el-dialog>
  </div>
</template>
<script setup>
import { ref, onMounted } from 'vue'
import { ElMessage, ElMessageBox } from 'element-plus'
const list = ref([])
const picked = ref([])
const batchVisible = ref(false)
const batchSaving = ref(false)
const batchHours = ref(1)
const batchSyncIssued = ref(true)
const loading = ref(false)
const saving = ref(false)
const visible = ref(false)
function emptyRule() {
  return { weekdays: [1, 2, 3, 4, 5], unlimited: true, timeSlots: [{ start: '10:00', end: '18:00' }] }
}
function extraRule(r) {
  const ranges = Array.isArray(r.dateRanges) ? r.dateRanges.map((x) => ({
    start: x.start || (Array.isArray(x.range) ? x.range[0] : ''),
    end: x.end || (Array.isArray(x.range) ? x.range[1] : ''),
    range: [x.start || (x.range && x.range[0]) || '', x.end || (x.range && x.range[1]) || ''].filter(Boolean)
  })) : []
  return {
    maxHoursPerDay: Number(r.maxHoursPerDay) > 0 ? Number(r.maxHoursPerDay) : 0,
    dateRanges: ranges.length ? ranges : [{ start: '', end: '', range: [] }],
    holidayKey: r.holidayKey || '',
    venueIds: Array.isArray(r.venueIds) ? r.venueIds.slice() : []
  }
}
function parseRule(raw) {
  if (!raw) return { mode: 'unlimited', rules: [emptyRule()], ...extraRule({}) }
  let r = raw
  if (typeof r === 'string') {
    try { r = JSON.parse(r) } catch (e) { return { mode: 'unlimited', rules: [emptyRule()], ...extraRule({}) } }
  }
  const extra = extraRule(r)
  if (r.mode === 'dates' || (r.dateRanges && r.dateRanges.length && r.mode !== 'rules' && r.mode !== 'unlimited')) {
    return { mode: 'dates', rules: r.rules && r.rules.length ? r.rules : [emptyRule()], ...extra }
  }
  if (r.mode === 'unlimited' || r.mode === 'all') return { mode: 'unlimited', rules: r.rules && r.rules.length ? r.rules : [emptyRule()], ...extra }
  const rules = Array.isArray(r.rules) && r.rules.length ? r.rules.map((x) => ({
    weekdays: (x.weekdays || [1, 2, 3, 4, 5]).map(Number),
    unlimited: x.unlimited !== false,
    timeSlots: (x.timeSlots && x.timeSlots.length) ? x.timeSlots.map((s) => ({ start: s.start, end: s.end })) : [{ start: '10:00', end: '18:00' }]
  })) : [emptyRule()]
  return { mode: 'rules', rules, ...extra }
}
const emptyForm = () => ({
  _id: '', name: '', type: 'times', totalTimes: 10, durationDays: 30,
  timeRule: { mode: 'unlimited', rules: [emptyRule()], maxHoursPerDay: 0, dateRanges: [{ start: '', end: '', range: [] }], holidayKey: '', venueIds: [] },
  active: true, description: ''
})
const venueList = ref([])
const holidayPresets = [
  { key: 'national_day', label: '国庆', start: '2026-10-01', end: '2026-10-07' },
  { key: 'new_year', label: '元旦', start: '2026-01-01', end: '2026-01-03' },
  { key: 'spring', label: '春节', start: '2026-02-15', end: '2026-02-23' },
  { key: 'qingming', label: '清明', start: '2026-04-04', end: '2026-04-06' },
  { key: 'labor', label: '劳动节', start: '2026-05-01', end: '2026-05-05' },
  { key: 'duanwu', label: '端午', start: '2026-06-19', end: '2026-06-21' },
  { key: 'mid_autumn', label: '中秋', start: '2026-09-25', end: '2026-09-27' }
]
function applyHoliday(h) {
  form.value.timeRule.holidayKey = h.key
  form.value.timeRule.dateRanges = [{ start: h.start, end: h.end, range: [h.start, h.end] }]
  if (!form.value.timeRule.maxHoursPerDay) form.value.timeRule.maxHoursPerDay = 1
}
function addDateRange() {
  form.value.timeRule.dateRanges.push({ start: '', end: '', range: [] })
}
function onRangeChange(rg, val) {
  if (val && val.length === 2) {
    rg.start = val[0]
    rg.end = val[1]
    rg.range = val
  } else {
    rg.start = ''
    rg.end = ''
    rg.range = []
  }
  form.value.timeRule.holidayKey = 'custom'
}
const form = ref(emptyForm())
const base = import.meta.env.DEV
  ? '/api'
  : 'https://cloud1-d3g0pb1qk028e3585-d862bc2-1312769671.ap-shanghai.app.tcloudbase.com'
function normalizeType(t) {
  const s = String(t || '').trim().toLowerCase()
  if (s === 'times' || s === 'coach' || s === 'group' || s === 'time') return s
  if (t === '次卡') return 'times'
  if (t === '教练卡') return 'coach'
  if (t === '团课' || t === '团课卡') return 'group'
  if (t === '时间卡' || t === '月卡') return 'time'
  return 'times'
}
function isTimesLike(t) { const x = normalizeType(t); return x === 'times' || x === 'coach' || x === 'group' }
function typeLabel(t) { return { times: '次卡', coach: '教练卡', group: '团课', time: '时间卡' }[normalizeType(t)] || t }
function typeTag(t) { return { times: 'success', coach: 'warning', group: 'danger', time: 'primary' }[normalizeType(t)] || 'info' }
function weekdayText(days) {
  const map = { 1: '一', 2: '二', 3: '三', 4: '四', 5: '五', 6: '六', 7: '日' }
  return (days || []).map((d) => map[d] || d).join('')
}
function timeRuleText(rule) {
  const r = parseRule(rule)
  const cap = r.maxHoursPerDay > 0 ? `（每天最多${r.maxHoursPerDay}小时）` : ''
  const shops = (r.venueIds && r.venueIds.length) ? ' ·限指定门店' : ''
  if (r.mode === 'unlimited') return '有效期内任意时间' + cap + shops
  if (r.mode === 'dates') {
    const segs = (r.dateRanges || []).filter((x) => x.start && x.end).map((x) => x.start + '至' + x.end)
    return (segs.length ? segs.join('；') : '指定日期') + cap + shops
  }
  return r.rules.map((g) => {
    const days = weekdayText(g.weekdays) || '未选星期'
    const slots = (g.timeSlots || []).map((s) => `${s.start}-${s.end}`).join('、') || '全天'
    return `周${days} ${slots}`
  }).join('；') + cap + shops
}
function addRule() { form.value.timeRule.rules.push(emptyRule()) }
function removeRule(i) { form.value.timeRule.rules.splice(i, 1) }
function addSlot(rule) { rule.timeSlots.push({ start: '10:00', end: '18:00' }) }
function removeSlot(rule, i) {
  if (rule.timeSlots.length <= 1) { rule.timeSlots = [{ start: '10:00', end: '18:00' }]; return }
  rule.timeSlots.splice(i, 1)
}
async function post(path, body = {}) {
  const res = await fetch(base + path, { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify(body) })
  const data = await res.json()
  return data.body ? (typeof data.body === 'string' ? JSON.parse(data.body) : data.body) : data
}
async function saveBatchRules() {
  if (!picked.value.length) return
  batchSaving.value = true
  try {
    const result = await post('/adminSaveCardTemplate', {
      action: 'batchRules',
      ids: picked.value.map((r) => r._id),
      maxHoursPerDay: Number(batchHours.value) || 0,
      syncIssued: batchSyncIssued.value
    })
    if (!result.ok) { ElMessage.error(result.msg || '失败'); return }
    ElMessage.success('已改 ' + (result.templates || picked.value.length) + ' 个模板' + (result.cards ? '，已发卡 ' + result.cards + ' 张' : ''))
    batchVisible.value = false
    loadData()
  } catch (e) { ElMessage.error(e.message || '失败') }
  finally { batchSaving.value = false }
}
async function loadData() {
  loading.value = true
  try {
    const result = await post('/adminGetCardTemplates', {})
    if (!result.ok) { ElMessage.error(result.msg || '加载失败'); return }
    list.value = (result.list || []).map((row) => ({ ...row, type: normalizeType(row.type) }))
  } catch (e) { ElMessage.error(e.message || '网络错误') }
  finally { loading.value = false }
}
function openAdd() { form.value = emptyForm(); visible.value = true }
function openEdit(row) {
  form.value = {
    _id: row._id,
    name: row.name || '',
    type: normalizeType(row.type),
    totalTimes: row.totalTimes || 10,
    durationDays: row.durationDays || 30,
    timeRule: parseRule(row.timeRule),
    active: row.status === 'active',
    description: row.description || ''
  }
  visible.value = true
}
async function save() {
  if (!form.value.name) { ElMessage.warning('请填写卡名称'); return }
  if (form.value.timeRule.mode === 'rules') {
    for (const r of form.value.timeRule.rules) {
      if (!(r.weekdays || []).length) { ElMessage.warning('请至少选一个星期'); return }
      if (!(r.timeSlots || []).length) { ElMessage.warning('请至少加一个时段'); return }
    }
  }
  saving.value = true
  try {
    const payloadRule = form.value.type === 'group'
      ? { venueIds: form.value.timeRule.venueIds || [] }
      : {
          mode: form.value.timeRule.mode || 'unlimited',
          rules: form.value.timeRule.rules,
          maxHoursPerDay: Number(form.value.timeRule.maxHoursPerDay) || 0,
          dateRanges: (form.value.timeRule.dateRanges || [])
            .filter((x) => x.start && x.end)
            .map((x) => ({ start: x.start, end: x.end })),
          holidayKey: form.value.timeRule.holidayKey || '',
          venueIds: form.value.timeRule.venueIds || []
        }
    if (form.value.timeRule.mode === 'dates') {
      const segs = payloadRule.dateRanges
      if (!segs.length) { ElMessage.warning('请填写节假日可用日期'); saving.value = false; return }
    }
    const data = {
      name: form.value.name,
      type: normalizeType(form.value.type),
      price: 0,
      totalTimes: form.value.totalTimes,
      durationDays: form.value.durationDays,
      maxHoursPerDay: Number(form.value.timeRule.maxHoursPerDay) || 0,
      timeRule: payloadRule,
      status: form.value.active ? 'active' : 'disabled',
      description: form.value.description
    }
    const result = form.value._id
      ? await post('/adminSaveCardTemplate', { action: 'update', id: form.value._id, data })
      : await post('/adminSaveCardTemplate', { action: 'add', data })
    if (!result.ok) { ElMessage.error(result.msg || '保存失败'); return }
    ElMessage.success('保存成功')
    visible.value = false
    loadData()
  } catch (e) { ElMessage.error(e.message || '网络错误') }
  finally { saving.value = false }
}
async function toggleStatus(row) {
  const next = row.status === 'active' ? 'disabled' : 'active'
  const result = await post('/adminSaveCardTemplate', { action: 'toggle', id: row._id, data: { status: next } })
  if (!result.ok) { ElMessage.error(result.msg || '操作失败'); return }
  ElMessage.success('已更新')
  loadData()
}
async function onDelete(row) {
  try {
    await ElMessageBox.confirm('确定删除「' + row.name + '」？', '警告', { type: 'warning' })
    const result = await post('/adminSaveCardTemplate', { action: 'delete', id: row._id })
    if (!result.ok) { ElMessage.error(result.msg || '删除失败'); return }
    ElMessage.success('已删除')
    loadData()
  } catch (e) {
    if (e !== 'cancel') ElMessage.error(e.message || '失败')
  }
}
async function loadVenues() {
  try {
    const result = await post('/adminGetVenues', {})
    venueList.value = result.list || []
  } catch (e) { venueList.value = [] }
}
onMounted(() => { loadData(); loadVenues() })
</script>
<style scoped>
.page-header { display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px; }
h2 { margin: 0; font-size: 20px; color: #1a5c3a; }
.hint { margin-left: 8px; color: #999; font-size: 12px; }
.rules-box { background: #f7faf8; border-radius: 10px; padding: 12px; margin: 0 0 16px 110px; }
.rule-card { background: #fff; border: 1px solid #e8eee9; border-radius: 8px; padding: 10px 12px 4px; margin-bottom: 10px; }
.rule-head { display: flex; justify-content: space-between; align-items: center; margin-bottom: 6px; }
.slots { display: flex; flex-direction: column; gap: 8px; }
.slot-row { display: flex; align-items: center; gap: 8px; }
</style>
