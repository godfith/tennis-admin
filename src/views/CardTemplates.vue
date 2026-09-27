<template>
  <div class="page">
    <div class="page-header">
      <h2>卡模板管理</h2>
      <div>
        <el-button :loading="loading" @click="loadData">刷新</el-button>
        <el-button type="primary" @click="openAdd">新增卡模板</el-button>
      </div>
    </div>

    <el-table :data="list" stripe border v-loading="loading" row-key="_id">
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

    <el-dialog v-model="visible" :title="form._id ? '编辑卡模板' : '新增卡模板'" width="720px" destroy-on-close top="5vh">
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

        <el-form-item v-if="form.type !== 'group'" label="可用规则">
          <el-radio-group v-model="form.timeRule.mode">
            <el-radio label="unlimited" value="unlimited">有效期内任意时间</el-radio>
            <el-radio label="rules" value="rules">自定义星期 + 时段</el-radio>
          </el-radio-group>
        </el-form-item>

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
const loading = ref(false)
const saving = ref(false)
const visible = ref(false)
function emptyRule() {
  return { weekdays: [1, 2, 3, 4, 5], unlimited: true, timeSlots: [{ start: '10:00', end: '18:00' }] }
}
function parseRule(raw) {
  if (!raw) return { mode: 'unlimited', rules: [emptyRule()] }
  let r = raw
  if (typeof r === 'string') {
    try { r = JSON.parse(r) } catch (e) { return { mode: 'unlimited', rules: [emptyRule()] } }
  }
  if (r.mode === 'unlimited' || r.mode === 'all') return { mode: 'unlimited', rules: r.rules && r.rules.length ? r.rules : [emptyRule()] }
  const rules = Array.isArray(r.rules) && r.rules.length ? r.rules.map((x) => ({
    weekdays: (x.weekdays || [1, 2, 3, 4, 5]).map(Number),
    unlimited: x.unlimited !== false,
    timeSlots: (x.timeSlots && x.timeSlots.length) ? x.timeSlots.map((s) => ({ start: s.start, end: s.end })) : [{ start: '10:00', end: '18:00' }]
  })) : [emptyRule()]
  return { mode: 'rules', rules }
}
const emptyForm = () => ({
  _id: '', name: '', type: 'times', totalTimes: 10, durationDays: 30,
  timeRule: { mode: 'unlimited', rules: [emptyRule()] }, active: true, description: ''
})
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
  if (r.mode === 'unlimited') return '有效期内任意时间'
  return r.rules.map((g) => {
    const days = weekdayText(g.weekdays) || '未选星期'
    const slots = (g.timeSlots || []).map((s) => `${s.start}-${s.end}`).join('、') || '全天'
    return `周${days} ${slots}`
  }).join('；')
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
      ? null
      : (form.value.timeRule.mode === 'unlimited'
        ? { mode: 'unlimited' }
        : { mode: 'rules', rules: form.value.timeRule.rules })
    const data = {
      name: form.value.name,
      type: normalizeType(form.value.type),
      price: 0,
      totalTimes: form.value.totalTimes,
      durationDays: form.value.durationDays,
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
onMounted(loadData)
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
