<template>
  <div class="page">
    <div class="page-header">
      <h2>卡模板管理</h2>
      <div>
        <el-button :loading="loading" @click="loadData">刷新</el-button>
        <el-button type="primary" @click="openAdd">新增卡模板</el-button>
      </div>
    </div>

    <el-table :data="list" stripe border v-loading="loading">
      <el-table-column prop="name" label="卡名称" min-width="140" />
      <el-table-column label="类型" width="100">
        <template #default="{ row }">
          <el-tag :type="typeTag(row.type)" size="small">{{ typeLabel(row.type) }}</el-tag>
        </template>
      </el-table-column>
      <el-table-column prop="price" label="价格(元)" width="100" />
      <el-table-column label="次数/天数" width="110">
        <template #default="{ row }">
          <span v-if="isTimesLike(row.type)">{{ row.totalTimes }} 次</span>
          <span v-else>{{ row.durationDays || '-' }} 天</span>
        </template>
      </el-table-column>
      <el-table-column label="时间规则" min-width="240">
        <template #default="{ row }">
          <span v-if="row.type === 'time'">{{ timeRuleText(row.timeRule) }}</span>
          <span v-else-if="row.type === 'group'">多人同教练</span>
          <span v-else>-</span>
        </template>
      </el-table-column>
      <el-table-column label="状态" width="90">
        <template #default="{ row }">
          <el-tag :type="row.status === 'active' ? 'success' : 'info'" size="small">
            {{ row.status === 'active' ? '启用' : '停用' }}
          </el-tag>
        </template>
      </el-table-column>
      <el-table-column label="操作" width="200" fixed="right">
        <template #default="{ row }">
          <el-button link type="primary" @click="openEdit(row)">编辑</el-button>
          <el-button link type="warning" @click="toggleStatus(row)">
            {{ row.status === 'active' ? '停用' : '启用' }}
          </el-button>
          <el-button link type="danger" @click="onDelete(row)">删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <el-dialog
      v-model="visible"
      :title="form._id ? '编辑卡模板' : '新增卡模板'"
      width="640px"
      destroy-on-close
      top="5vh"
    >
      <el-form label-width="100px">
        <el-form-item label="卡名称" required>
          <el-input v-model="form.name" placeholder="如：10次次卡 / 团课10次" />
        </el-form-item>
        <el-form-item label="类型" required>
          <el-radio-group v-model="form.type" :disabled="!!form._id">
            <el-radio value="times">次卡</el-radio>
            <el-radio value="coach">教练卡</el-radio>
            <el-radio value="group">团课</el-radio>
            <el-radio value="time">时间卡</el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item v-if="form.type === 'group'" label="说明">
          <span class="hint" style="margin-left:0">团课：时间由场馆安排，同一教练同一时段可带多名学员（与一对一教练卡不同）</span>
        </el-form-item>
        <el-form-item label="售价(元)">
          <el-input-number v-model="form.price" :min="0" :precision="0" />
        </el-form-item>

        <!-- 次卡 / 教练卡 / 团课 -->
        <template v-if="isTimesLike(form.type)">
          <el-form-item label="总次数" required>
            <el-input-number v-model="form.totalTimes" :min="1" />
          </el-form-item>
          <el-form-item label="有效天数">
            <el-input-number v-model="form.durationDays" :min="0" />
            <span class="hint">购买后多少天内有效，0 = 不限</span>
          </el-form-item>
        </template>

        <!-- 时间卡 -->
        <template v-if="form.type === 'time'">
          <el-form-item label="有效天数" required>
            <el-input-number v-model="form.durationDays" :min="1" />
            <span class="hint">从发卡日起算</span>
          </el-form-item>

          <el-form-item label="可用规则">
            <el-radio-group v-model="form.timeRule.mode">
              <el-radio value="unlimited">有效期内任意时间</el-radio>
              <el-radio value="rules">自定义多组规则</el-radio>
            </el-radio-group>
          </el-form-item>

          <div v-if="form.timeRule.mode === 'rules'" class="rules-box">
            <div
              v-for="(rule, rIdx) in form.timeRule.rules"
              :key="rIdx"
              class="rule-card"
            >
              <div class="rule-header">
                <span>规则 {{ rIdx + 1 }}</span>
                <el-button
                  link
                  type="danger"
                  :disabled="form.timeRule.rules.length <= 1"
                  @click="removeRule(rIdx)"
                >删除规则</el-button>
              </div>

              <el-form-item label="适用星期" label-width="80px">
                <el-checkbox-group v-model="rule.weekdays">
                  <el-checkbox :value="1">一</el-checkbox>
                  <el-checkbox :value="2">二</el-checkbox>
                  <el-checkbox :value="3">三</el-checkbox>
                  <el-checkbox :value="4">四</el-checkbox>
                  <el-checkbox :value="5">五</el-checkbox>
                  <el-checkbox :value="6">六</el-checkbox>
                  <el-checkbox :value="7">日</el-checkbox>
                </el-checkbox-group>
              </el-form-item>

              <el-form-item label="时段限制" label-width="80px">
                <el-radio-group v-model="rule.unlimited" @change="(v) => onUnlimitedChange(rule, v)">
                  <el-radio :value="true">不限时</el-radio>
                  <el-radio :value="false">限制时段</el-radio>
                </el-radio-group>
              </el-form-item>

              <div v-if="!rule.unlimited" class="slots-box">
                <div
                  v-for="(slot, sIdx) in rule.timeSlots"
                  :key="sIdx"
                  class="slot-row"
                >
                  <el-time-select
                    v-model="slot.start"
                    start="06:00"
                    step="00:30"
                    end="22:00"
                    placeholder="开始"
                    style="width: 110px"
                  />
                  <span class="sep">至</span>
                  <el-time-select
                    v-model="slot.end"
                    start="06:30"
                    step="00:30"
                    end="23:00"
                    placeholder="结束"
                    style="width: 110px"
                  />
                  <el-button
                    link
                    type="danger"
                    :disabled="rule.timeSlots.length <= 1"
                    @click="removeSlot(rule, sIdx)"
                  >删除</el-button>
                </div>
                <el-button type="primary" link @click="addSlot(rule)">+ 添加时段</el-button>
              </div>
            </div>

            <el-button type="primary" plain @click="addRule" style="width: 100%; margin-top: 8px">
              + 添加一组规则
            </el-button>
            <p class="rule-tip">提示：未覆盖到的星期默认不可预约。不同规则的星期不要重叠。</p>
          </div>
        </template>

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

const weekName = ['', '周一', '周二', '周三', '周四', '周五', '周六', '周日']

function emptyRule() {
  return {
    weekdays: [1, 2, 3, 4, 5],
    unlimited: false,
    timeSlots: [{ start: '09:00', end: '18:00' }]
  }
}

const emptyForm = () => ({
  _id: '',
  name: '',
  type: 'times',
  price: 0,
  totalTimes: 10,
  durationDays: 30,
  timeRule: {
    mode: 'unlimited',
    rules: [emptyRule()]
  },
  active: true,
  description: ''
})

const form = ref(emptyForm())

const base = import.meta.env.DEV
  ? '/api'
  : 'https://cloud1-d0gmljq45868f5766-1312769671.ap-shanghai.app.tcloudbase.com'

function isTimesLike(t) {
  return t === 'times' || t === 'coach' || t === 'group'
}
function typeLabel(t) {
  return { times: '次卡', coach: '教练卡', group: '团课', time: '时间卡' }[t] || t
}
function typeTag(t) {
  return { times: 'success', coach: 'warning', group: 'danger', time: 'primary' }[t] || 'info'
}

function timeRuleText(rule) {
  if (!rule) return '-'
  if (rule.mode === 'unlimited' || rule.mode === 'all') return '有效期内任意时间'
  if (rule.mode === 'rules' && rule.rules && rule.rules.length) {
    return rule.rules.map((r) => {
      const days = (r.weekdays || []).map((d) => weekName[d] || d).join('') || '?'
      if (r.unlimited) return `${days}不限时`
      const slots = (r.timeSlots || []).map((s) => `${s.start}-${s.end}`).join('/')
      return `${days}${slots}`
    }).join('；')
  }
  if (rule.mode === 'weekly') {
    const days = (rule.weekdays || []).map((d) => weekName[d] || d).join('、') || '每天'
    const slots = (rule.timeSlots || []).map((s) => `${s.start}-${s.end}`).join(' / ')
    return `${days} ${slots}`
  }
  return rule.startTime ? `${rule.startTime}-${rule.endTime}` : '-'
}

function addRule() {
  form.value.timeRule.rules.push(emptyRule())
}
function removeRule(idx) {
  form.value.timeRule.rules.splice(idx, 1)
}
function addSlot(rule) {
  rule.timeSlots.push({ start: '09:00', end: '12:00' })
}
function removeSlot(rule, idx) {
  rule.timeSlots.splice(idx, 1)
}
function onUnlimitedChange(rule, val) {
  if (!val && (!rule.timeSlots || !rule.timeSlots.length)) {
    rule.timeSlots = [{ start: '09:00', end: '18:00' }]
  }
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

async function loadData() {
  loading.value = true
  try {
    const result = await post('/adminGetCardTemplates', {})
    if (!result.ok) {
      ElMessage.error(result.msg || '加载失败')
      return
    }
    list.value = result.list || []
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    loading.value = false
  }
}

function openAdd() {
  form.value = emptyForm()
  visible.value = true
}

function openEdit(row) {
  const rule = row.timeRule || {}
  let mode = rule.mode || 'unlimited'
  let rules = rule.rules

  if (!rules || !rules.length) {
    if (mode === 'weekly' || mode === 'custom' || mode === 'weekday') {
      mode = 'rules'
      rules = [{
        weekdays: rule.weekdays && rule.weekdays.length ? rule.weekdays : [1, 2, 3, 4, 5],
        unlimited: false,
        timeSlots: rule.timeSlots && rule.timeSlots.length
          ? rule.timeSlots
          : (rule.startTime ? [{ start: rule.startTime, end: rule.endTime }] : [{ start: '09:00', end: '18:00' }])
      }]
    } else {
      mode = 'unlimited'
      rules = [emptyRule()]
    }
  }

  form.value = {
    _id: row._id,
    name: row.name || '',
    type: row.type || 'times',
    price: row.price || 0,
    totalTimes: row.totalTimes || 10,
    durationDays: row.durationDays || 30,
    timeRule: { mode, rules },
    active: row.status === 'active',
    description: row.description || ''
  }
  visible.value = true
}

async function save() {
  if (!form.value.name) {
    ElMessage.warning('请填写卡名称')
    return
  }
  if (isTimesLike(form.value.type) && !form.value.totalTimes) {
    ElMessage.warning('请填写总次数')
    return
  }
  if (form.value.type === 'time' && !form.value.durationDays) {
    ElMessage.warning('请填写有效天数')
    return
  }
  if (form.value.type === 'time' && form.value.timeRule.mode === 'rules') {
    for (let i = 0; i < form.value.timeRule.rules.length; i++) {
      const r = form.value.timeRule.rules[i]
      if (!r.weekdays || !r.weekdays.length) {
        ElMessage.warning(`规则${i + 1}：请至少选择一个星期`)
        return
      }
      if (!r.unlimited && (!r.timeSlots || !r.timeSlots.length)) {
        ElMessage.warning(`规则${i + 1}：请至少添加一个时段`)
        return
      }
    }
  }

  saving.value = true
  try {
    const data = {
      name: form.value.name,
      type: form.value.type,
      price: form.value.price,
      totalTimes: form.value.totalTimes,
      durationDays: form.value.durationDays,
      timeRule: form.value.type === 'time' ? form.value.timeRule : null,
      status: form.value.active ? 'active' : 'disabled',
      description: form.value.description
    }
    const result = form.value._id
      ? await post('/adminSaveCardTemplate', { action: 'update', id: form.value._id, data })
      : await post('/adminSaveCardTemplate', { action: 'add', data })

    if (!result.ok) {
      ElMessage.error(result.msg || '保存失败')
      return
    }
    ElMessage.success('保存成功')
    visible.value = false
    loadData()
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    saving.value = false
  }
}

async function toggleStatus(row) {
  const next = row.status === 'active' ? 'disabled' : 'active'
  try {
    const result = await post('/adminSaveCardTemplate', {
      action: 'toggle',
      id: row._id,
      data: { status: next }
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '操作失败')
      return
    }
    ElMessage.success('已更新')
    loadData()
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  }
}

async function onDelete(row) {
  try {
    await ElMessageBox.confirm(`确定删除「${row.name}」？`, '警告', { type: 'warning' })
    const result = await post('/adminSaveCardTemplate', { action: 'delete', id: row._id })
    if (!result.ok) {
      ElMessage.error(result.msg || '删除失败')
      return
    }
    ElMessage.success('已删除')
    loadData()
  } catch (e) {
    if (e !== 'cancel') ElMessage.error(e.message || '失败')
  }
}

onMounted(loadData)
</script>

<style scoped>
.page-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 16px;
}
h2 {
  margin: 0;
  font-size: 20px;
}
.hint {
  margin-left: 8px;
  color: #999;
  font-size: 12px;
}
.rules-box {
  width: 100%;
  margin-bottom: 12px;
}
.rule-card {
  border: 1px solid #e4e7ed;
  border-radius: 8px;
  padding: 12px 16px;
  margin-bottom: 12px;
  background: #fafafa;
}
.rule-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 8px;
  font-weight: 600;
  color: #1a5c3a;
}
.slots-box {
  margin-left: 80px;
  margin-bottom: 8px;
}
.slot-row {
  display: flex;
  align-items: center;
  gap: 8px;
  margin-bottom: 8px;
}
.sep {
  color: #666;
}
.rule-tip {
  margin: 8px 0 0;
  font-size: 12px;
  color: #999;
}
</style>
