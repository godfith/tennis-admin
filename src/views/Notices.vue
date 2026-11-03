<template>
  <div class="page">
    <div class="page-header">
      <h2>注意事项模板</h2>
      <el-button type="primary" @click="openEdit()">添加模板</el-button>
    </div>
    <el-table :data="list" stripe border v-loading="loading">
      <el-table-column prop="title" label="标题" min-width="160" />
      <el-table-column prop="content" label="内容" min-width="300" show-overflow-tooltip />
      <el-table-column label="状态" width="90">
        <template #default="{ row }">
          <el-tag :type="row.status === 'active' ? 'success' : 'info'" size="small">{{ row.status === 'active' ? '启用' : '停用' }}</el-tag>
        </template>
      </el-table-column>
      <el-table-column prop="venue_id" label="适用场馆" width="140" />
      <el-table-column label="操作" width="140">
        <template #default="{ row }">
          <el-button link type="primary" @click="openEdit(row)">编辑</el-button>
          <el-button link type="danger" @click="remove(row)">删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <el-dialog v-model="visible" :title="form.id ? '编辑注意事项' : '添加注意事项'" width="560px">
      <el-form label-width="80px">
        <el-form-item label="标题">
          <el-input v-model="form.title" placeholder="如：预约注意事项" />
        </el-form-item>
        <el-form-item label="内容">
          <el-input v-model="form.content" type="textarea" :rows="8" placeholder="每行一条注意事项" />
        </el-form-item>
        <el-form-item label="适用场馆">
          <el-input v-model="form.venueId" placeholder="留空表示全部场馆" />
        </el-form-item>
        <el-form-item label="状态">
          <el-select v-model="form.status">
            <el-option label="启用" value="active" />
            <el-option label="停用" value="hidden" />
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
const loading = ref(false)
const visible = ref(false)
const saving = ref(false)
const form = ref({})

async function load() {
  loading.value = true
  try {
    const r = await post('/adminNotices', { action: 'list' })
    list.value = r.list || []
  } finally {
    loading.value = false
  }
}

function openEdit(row) {
  form.value = row
    ? { id: row.id, title: row.title, content: row.content, status: row.status || 'active', venueId: row.venue_id || '' }
    : { title: '预约注意事项', content: '', status: 'active', venueId: '' }
  visible.value = true
}

async function save() {
  if (!form.value.title) { ElMessage.warning('请填写标题'); return }
  saving.value = true
  try {
    const r = await post('/adminNotices', { action: 'save', ...form.value })
    if (!r.ok) { ElMessage.error(r.msg || '保存失败'); return }
    ElMessage.success('已保存')
    visible.value = false
    load()
  } finally {
    saving.value = false
  }
}

async function remove(row) {
  await ElMessageBox.confirm('确定删除该注意事项模板？', '删除', { type: 'warning' })
  const r = await post('/adminNotices', { action: 'delete', id: row.id })
  if (!r.ok) { ElMessage.error(r.msg || '删除失败'); return }
  ElMessage.success('已删除')
  load()
}

onMounted(load)
</script>

<style scoped>
.page { padding: 20px; }
.page-header { display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px; }
.page-header h2 { margin: 0; }
</style>
