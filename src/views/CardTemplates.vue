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
      <el-table-column label="次数/天数" width="120">
        <template #default="{ row }">
          <span v-if="row.type === 'times' || row.type === 'coach'">{{ row.totalTimes }} 次</span>
          <span v-else>{{ row.durationDays || '-' }} 天</span>
        </template>
      </el-table-column>
      <el-table-column label="时间规则" min-width="200">
        <template #default="{ row }">
          <span v-if="row.type === 'time'">{{ timeRuleText(row.timeRule) }}</span>
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
      width="580px"
      destroy-on-close
    >
      <el-form label-width="100px">
        <el-form-item label="卡名称" required>
          <el-input v-model="form.name" placeholder="如：10次次卡 / 月卡" />
        </el-form-item>
        <el-form-item label="类型" required>
          <el-radio-group v-model="form.type" :disabled="!!form._id">
            <el-radio value="times">次卡</el-radio>
            <el-radio value="coach">教练卡</el-radio>
            <el-radio value="time">时间卡</el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="售价(元)">
          <el-input-number v-model="form.price" :min="0" :precision="0" />
        </el-form-item>

        <!-- 次卡 / 教练卡 -->
        <template v-if="form.type === 'times' || form.type === 'coach'">
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
              <el-radio value="weekly">指定星期 + 时段</el-radio>
            </el-radio-group>
          </el-form-item>

          <template v-if="form.timeRule.mode === 'weekly'">
            <el-form-item label="可用星期">
              <el-checkbox-group v-model="form.timeRule.weekdays">
                <el-checkbox :value="1">周一</el-checkbox>
                <el-checkbox :value="2">周二</el-checkbox>
                <el-checkbox :value="3">周三</el-checkbox>
                <el-checkbox :value="4">周四</el-checkbox>
                <el-checkbox :value="5">周五</el-checkbox>
                <el-checkbox :value="6">周六</el-checkbox>
                <el-checkbox :value="7">周日</el-checkbox>
              </el-checkbox-group>
            </el-form-item>

            <el-form-item label="可用时段">
              <div class="slots-box">
                <div
                  v-for="(slot, idx) in form.timeRule.timeSlots"
                  :key="idx"
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
                    :disabled="form.timeRule.timeSlots.length <= 1"
                    @click="removeSlot(idx)"
                  >
                    删除
                  </el-button>
                </div>
                <el-button type="primary" link @click="addSlot">+ 添加时段</el-button>
              </div>
            </el-form-item>
          </template>
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

const emptyForm = () => ({
  _id: '',
  name: '',
  type: 'times',
  price: 0,
  totalTimes: 10,
  durationDays: 30,
  timeRule: {
    mode: 'unlimited',
    weekdays: [1, 2, 3, 4, 5],
    timeSlots: [{ start: '09:00', end: '18:00' }]
  },
  active: true,
  description: ''
})

const form = ref(emptyForm())

const base = import.meta.env.DEV
  ? '/api'
  : 'https://cloud1-d0gmljq45868f5766-1312769671.ap-shanghai.app.tcloudbase.com'

function typeLabel(t) {
  return { times: '次卡', coach: '教练卡', time: '时间卡' }[t] || t
}
function typeTag(t) {
  return { times: 'success', coach: 'warning', time: 'primary' }[t] || 'info'
}

function timeRuleText(rule) {
  if (!rule) return '-'
  if (rule.mode === 'unlimited' || rule.mode === 'all') return '有效期内任意时间'
  const days = (rule.weekdays || [])
    .map((d) => weekName[d] || d)
    .join('、') || '每天'
  const slots = (rule.timeSlots || [])
    .map((s) => `${s.start}-${s.end}`)
    .join(' / ') || (rule.startTime ? `${rule.startTime}-${rule.endTime}` : '')
  return `${days} ${slots}`
}

function addSlot() {
  form.value.timeRule.timeSlots.push({ start: '09:00', end: '12:00' })
}
function removeSlot(idx) {
  form.value.timeRule.timeSlots.splice(idx, 1)
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
  // 兼容旧数据
  let timeSlots = rule.timeSlots
  if (!timeSlots || !timeSlots.length) {
    if (rule.startTime && rule.endTime) {
      timeSlots = [{ start: rule.startTime, end: rule.endTime }]
    } else {
      timeSlots = [{ start: '09:00', end: '18:00' }]
    }
  }
  let weekdays = rule.weekdays
  if (!weekdays || !weekdays.length) {
    if (rule.mode === 'weekday') weekdays = [1, 2, 3, 4, 5]
    else weekdays = [1, 2, 3, 4, 5, 6, 7]
  }

  form.value = {
    _id: row._id,
    name: row.name || '',
    type: row.type || 'times',
    price: row.price || 0,
    totalTimes: row.totalTimes || 10,
    durationDays: row.durationDays || 30,
    timeRule: {
      mode: rule.mode === 'all' ? 'unlimited' : (rule.mode || 'unlimited'),
      weekdays,
      timeSlots
    },
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
  if ((form.value.type === 'times' || form.value.type === 'coach') && !form.value.totalTimes) {
    ElMessage.warning('请填写总次数')
    return
  }
  if (form.value.type === 'time' && !form.value.durationDays) {
    ElMessage.warning('请填写有效天数')
    return
  }
  if (form.value.type === 'time' && form.value.timeRule.mode === 'weekly') {
    if (!form.value.timeRule.weekdays.length) {
      ElMessage.warning('请至少选择一个可用星期')
      return
    }
    if (!form.value.timeRule.timeSlots.length) {
      ElMessage.warning('请至少添加一个可用时段')
      return
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
.slots-box {
  width: 100%;
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
</style>
