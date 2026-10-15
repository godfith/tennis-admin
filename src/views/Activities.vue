<template>
  <div class="page">
    <div class="page-header">
      <h2>活动管理</h2>
      <el-button type="primary" @click="openEdit()">添加活动</el-button>
    </div>
    <div class="filters">
      <el-date-picker v-model="startDate" type="date" value-format="YYYY-MM-DD" placeholder="开始日期" style="width:140px" />
      <el-date-picker v-model="endDate" type="date" value-format="YYYY-MM-DD" placeholder="结束日期" style="width:140px" />
      <el-button type="primary" @click="fetchList">查询</el-button>
    </div>
    <el-table :data="list" stripe border v-loading="loading">
      <el-table-column prop="date" label="日期" width="120" />
      <el-table-column prop="time" label="时间" width="100" />
      <el-table-column prop="type" label="类型" width="100" />
      <el-table-column prop="title" label="标题" min-width="180" />
      <el-table-column prop="venue_name" label="场馆" width="150" />
      <el-table-column label="状态" width="80">
        <template #default="{ row }">
          <el-tag :type="row.status === 'active' ? 'success' : 'info'" size="small">{{ row.status === 'active' ? '显示' : '隐藏' }}</el-tag>
        </template>
      </el-table-column>
      <el-table-column label="操作" width="140">
        <template #default="{ row }">
          <el-button link type="primary" @click="openEdit(row)">编辑</el-button>
          <el-button link type="danger" @click="remove(row)">删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <el-dialog v-model="visible" :title="form.id ? '编辑活动' : '添加活动'" width="480px">
      <el-form label-width="80px">
        <el-form-item label="日期">
          <el-date-picker v-model="form.date" type="date" value-format="YYYY-MM-DD" style="width:100%" />
        </el-form-item>
        <el-form-item label="时间">
          <el-input v-model="form.time" placeholder="如 14:00-16:00" />
        </el-form-item>
        <el-form-item label="类型">
          <el-select v-model="form.type">
            <el-option label="活动" value="活动" />
            <el-option label="优惠" value="优惠" />
            <el-option label="团课" value="团课" />
            <el-option label="比赛" value="比赛" />
          </el-select>
        </el-form-item>
        <el-form-item label="标题">
          <el-input v-model="form.title" placeholder="活动名称" />
        </el-form-item>
        <el-form-item label="场馆">
          <el-select v-model="form.venueId" clearable placeholder="全部场馆" @change="onVenue">
            <el-option v-for="v in venues" :key="v.venueId" :label="v.name" :value="v.venueId" />
          </el-select>
        </el-form-item>
        <el-form-item label="状态">
          <el-select v-model="form.status">
            <el-option label="显示" value="active" />
            <el-option label="隐藏" value="hidden" />
          </el-select>
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

const base = import.meta.env.DEV ? '/api' : 'https://cloud1-d3g0pb1qk028e3585-d862bc2-1312769671.ap-shanghai.app.tcloudbase.com'
async function post(path, body = {}) {
  const res = await fetch(base + path, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(body)
  })
  const data = await res.json()
  return data.body ? (typeof data.body === 'string' ? JSON.parse(data.body) : data.body) : data
}

const list = ref([])
const venues = ref([])
const loading = ref(false)
const visible = ref(false)
const saving = ref(false)
const startDate = ref('')
const endDate = ref('')
const form = ref({})

async function fetchList() {
  loading.value = true
  const r = await post('/adminActivities', { action: 'list', startDate: startDate.value, endDate: endDate.value })
  loading.value = false
  if (r.ok) list.value = r.list || []
}
async function loadVenues() {
  const r = await post('/adminGetVenues', {})
  if (r.ok) venues.value = r.list || []
}
function onVenue(id) {
  const v = venues.value.find((x) => x.venueId === id)
  form.value.venueName = v ? v.name : ''
}
function openEdit(row) {
  form.value = row
    ? { id: row.id, title: row.title, type: row.type, date: row.date, time: row.time, venueId: row.venue_id, venueName: row.venue_name, status: row.status }
    : { title: '', type: '活动', date: '', time: '', venueId: '', venueName: '', status: 'active' }
  visible.value = true
}
async function save() {
  if (!form.value.title || !form.value.date) { ElMessage.warning('请填标题和日期'); return }
  saving.value = true
  const r = await post('/adminActivities', { action: 'save', ...form.value })
  saving.value = false
  if (!r.ok) { ElMessage.error(r.msg || '保存失败'); return }
  ElMessage.success('已保存')
  visible.value = false
  fetchList()
}
async function remove(row) {
  await ElMessageBox.confirm('确定删除？', '提示')
  const r = await post('/adminActivities', { action: 'delete', id: row.id })
  if (!r.ok) { ElMessage.error(r.msg || '删除失败'); return }
  ElMessage.success('已删除')
  fetchList()
}
onMounted(() => { loadVenues(); fetchList() })
</script>
<style scoped>
.page-header { display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px; }
h2 { margin: 0; font-size: 20px; color: #1a5c3a; }
.filters { display: flex; gap: 8px; margin-bottom: 16px; }
</style>
