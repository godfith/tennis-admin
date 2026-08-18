<template>
  <div class="page">
    <div class="page-header">
      <div>
        <h2>团课排期</h2>
        <p class="tip">当前场馆：{{ venueName || '未选择' }} · 排好后日程对应时段仅团课卡可报名</p>
      </div>
      <div>
        <el-button :loading="loading" @click="loadData">刷新</el-button>
        <el-button type="primary" @click="openAdd">新增团课</el-button>
      </div>
    </div>

    <div class="filters">
      <el-date-picker
        v-model="filterDate"
        type="date"
        value-format="YYYY-MM-DD"
        placeholder="筛选日期"
        clearable
        @change="loadData"
      />
    </div>

    <el-table :data="list" stripe border v-loading="loading">
      <el-table-column prop="name" label="名称" min-width="120" />
      <el-table-column prop="date" label="日期" width="120" />
      <el-table-column prop="time" label="时段" width="120" />
      <el-table-column prop="court" label="场地" width="100" />
      <el-table-column prop="coachName" label="教练" width="100" />
      <el-table-column label="人数" width="100">
        <template #default="{ row }">
          {{ row.enrolled || 0 }} / {{ row.capacity || '-' }}
        </template>
      </el-table-column>
      <el-table-column label="状态" width="90">
        <template #default="{ row }">
          <el-tag :type="row.status === 'open' ? 'success' : 'info'" size="small">
            {{ row.status === 'open' ? '开放报名' : '已关闭' }}
          </el-tag>
        </template>
      </el-table-column>
      <el-table-column label="操作" width="220" fixed="right">
        <template #default="{ row }">
          <el-button link type="primary" @click="openEdit(row)">编辑</el-button>
          <el-button link type="warning" @click="toggleStatus(row)">
            {{ row.status === 'open' ? '关闭' : '开放' }}
          </el-button>
          <el-button link type="danger" @click="onDelete(row)">删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <el-dialog
      v-model="visible"
      :title="form._id ? '编辑团课' : '新增团课'"
      width="480px"
      destroy-on-close
    >
      <el-form label-width="90px">
        <el-form-item label="名称" required>
          <el-input v-model="form.name" placeholder="如：周三晚提高班" />
        </el-form-item>
        <el-form-item label="日期" required>
          <el-date-picker v-model="form.date" type="date" value-format="YYYY-MM-DD" style="width:100%" />
        </el-form-item>
        <el-form-item label="时段" required>
          <el-select v-model="form.time" placeholder="选择时段" style="width:100%">
            <el-option v-for="t in timeSlots" :key="t" :label="t" :value="t" />
          </el-select>
        </el-form-item>
        <el-form-item label="场地" required>
          <el-select v-model="form.court" placeholder="选择场地" style="width:100%">
            <el-option v-for="c in courts" :key="c._id" :label="c.name" :value="c.name" />
          </el-select>
        </el-form-item>
        <el-form-item label="教练" required>
          <el-select v-model="form.coachId" placeholder="选择教练" style="width:100%" @change="onCoachChange">
            <el-option v-for="c in coaches" :key="c._id" :label="c.name" :value="c._id" />
          </el-select>
        </el-form-item>
        <el-form-item label="人数上限" required>
          <el-input-number v-model="form.capacity" :min="1" :max="30" />
        </el-form-item>
        <el-form-item label="状态">
          <el-switch v-model="form.open" active-text="开放报名" inactive-text="关闭" />
        </el-form-item>
        <el-form-item label="备注">
          <el-input v-model="form.remark" type="textarea" :rows="2" />
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
import { ref, onMounted, onUnmounted } from 'vue'
import { ElMessage, ElMessageBox } from 'element-plus'

const timeSlots = [
  '08:00-09:00',
  '09:00-10:00',
  '10:00-11:00',
  '11:00-12:00',
  '14:00-15:00',
  '15:00-16:00',
  '16:00-17:00',
  '17:00-18:00',
  '18:00-19:00',
  '19:00-20:00',
  '20:00-21:00'
]

const list = ref([])
const courts = ref([])
const coaches = ref([])
const loading = ref(false)
const saving = ref(false)
const visible = ref(false)
const filterDate = ref('')
const venueName = ref(localStorage.getItem('venue_name') || '')

const form = ref({
  _id: '',
  name: '',
  date: '',
  time: '',
  court: '',
  coachId: '',
  coachName: '',
  capacity: 6,
  open: true,
  remark: ''
})

const base = import.meta.env.DEV
  ? '/api'
  : 'https://cloud1-d0gmljq45868f5766-1312769671.ap-shanghai.app.tcloudbase.com'

function venueId() {
  return localStorage.getItem('venue_id') || ''
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

async function loadMeta() {
  if (!venueId()) return
  try {
    const [cRes, coachRes] = await Promise.all([
      post('/adminGetCourts', { venueId: venueId() }),
      post('/adminGetCoaches', { venueId: venueId() })
    ])
    courts.value = cRes.list || []
    coaches.value = (coachRes.list || []).filter(
      (c) => c.status === 'active' || c.status === '在职' || !c.status
    )
  } catch (e) {
    console.error(e)
  }
}

async function loadData() {
  venueName.value = localStorage.getItem('venue_name') || ''
  if (!venueId()) {
    list.value = []
    ElMessage.warning('请先在顶部选择场馆')
    return
  }
  loading.value = true
  try {
    const result = await post('/adminGetGroupClasses', {
      venueId: venueId(),
      date: filterDate.value || ''
    })
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
  if (!venueId()) {
    ElMessage.warning('请先选择场馆')
    return
  }
  form.value = {
    _id: '',
    name: '',
    date: new Date().toISOString().slice(0, 10),
    time: '',
    court: '',
    coachId: '',
    coachName: '',
    capacity: 6,
    open: true,
    remark: ''
  }
  visible.value = true
  loadMeta()
}

function openEdit(row) {
  form.value = {
    _id: row._id,
    name: row.name || '',
    date: row.date || '',
    time: row.time || '',
    court: row.court || '',
    coachId: row.coachId || '',
    coachName: row.coachName || '',
    capacity: row.capacity || 6,
    open: row.status === 'open',
    remark: row.remark || ''
  }
  visible.value = true
  loadMeta()
}

function onCoachChange(id) {
  const c = coaches.value.find((x) => x._id === id)
  form.value.coachName = c ? c.name : ''
}

async function save() {
  if (!form.value.name || !form.value.date || !form.value.time || !form.value.court || !form.value.coachId) {
    ElMessage.warning('请填写完整信息')
    return
  }
  saving.value = true
  try {
    const data = {
      name: form.value.name,
      date: form.value.date,
      time: form.value.time,
      court: form.value.court,
      coachId: form.value.coachId,
      coachName: form.value.coachName,
      capacity: form.value.capacity,
      status: form.value.open ? 'open' : 'closed',
      remark: form.value.remark,
      venueId: venueId()
    }
    const result = form.value._id
      ? await post('/adminSaveGroupClass', { action: 'update', id: form.value._id, data })
      : await post('/adminSaveGroupClass', { action: 'add', data })

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
  const next = row.status === 'open' ? 'closed' : 'open'
  try {
    const result = await post('/adminSaveGroupClass', {
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
    await ElMessageBox.confirm(`确定删除团课「${row.name}」？`, '警告', { type: 'warning' })
    const result = await post('/adminSaveGroupClass', { action: 'delete', id: row._id })
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

onMounted(() => {
  loadMeta()
  loadData()
  window.addEventListener('venue-changed', () => {
    loadMeta()
    loadData()
  })
})
onUnmounted(() => {
  window.removeEventListener('venue-changed', loadData)
})
</script>

<style scoped>
.page-header {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  margin-bottom: 12px;
}
h2 {
  margin: 0 0 4px;
  font-size: 20px;
}
.tip {
  margin: 0;
  color: #888;
  font-size: 13px;
}
.filters {
  margin-bottom: 12px;
}
</style>
