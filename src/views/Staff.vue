<template>
  <div class="page">
    <div class="page-header">
      <div>
        <h2>员工管理</h2>
        <p class="tip">当前场馆：{{ venueName || '未选择' }} · 含教练、前台、客服等</p>
      </div>
      <div>
        <el-button :loading="loading" @click="loadData">刷新</el-button>
        <el-button type="primary" @click="openAdd">新增员工</el-button>
      </div>
    </div>

    <div class="filters">
      <el-select v-model="filterRole" clearable placeholder="全部岗位" style="width: 140px" @change="loadData">
        <el-option label="教练" value="coach" />
        <el-option label="前台" value="front" />
        <el-option label="客服" value="service" />
        <el-option label="店长" value="manager" />
        <el-option label="其他" value="other" />
      </el-select>
    </div>

    <el-table :data="list" stripe border v-loading="loading">
      <el-table-column prop="name" label="姓名" min-width="100" />
      <el-table-column prop="phone" label="手机号" width="130" />
      <el-table-column label="岗位" width="100">
        <template #default="{ row }">
          <el-tag size="small" :type="roleTag(row.role)">{{ roleLabel(row.role) }}</el-tag>
        </template>
      </el-table-column>
      <el-table-column prop="specialty" label="备注/擅长" min-width="140" />
      <el-table-column prop="sort" label="排序" width="80" />
      <el-table-column label="状态" width="90">
        <template #default="{ row }">
          <el-tag :type="row.status === 'active' ? 'success' : 'info'" size="small">
            {{ row.status === 'active' ? '在职' : '停用' }}
          </el-tag>
        </template>
      </el-table-column>
      <el-table-column label="操作" width="220" fixed="right">
        <template #default="{ row }">
          <el-button link type="primary" @click="openEdit(row)">编辑</el-button>
          <el-button link type="warning" @click="toggleStatus(row)">
            {{ row.status === 'active' ? '停用' : '启用' }}
          </el-button>
          <el-button link type="danger" @click="onDelete(row)">删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <el-dialog v-model="visible" :title="form._id ? '编辑员工' : '新增员工'" width="480px" destroy-on-close>
      <el-form label-width="90px">
        <el-form-item label="姓名" required>
          <el-input v-model="form.name" placeholder="员工姓名" />
        </el-form-item>
        <el-form-item label="手机号">
          <el-input v-model="form.phone" placeholder="选填" />
        </el-form-item>
        <el-form-item label="岗位" required>
          <el-select v-model="form.role" style="width: 100%">
            <el-option label="教练" value="coach" />
            <el-option label="前台" value="front" />
            <el-option label="客服" value="service" />
            <el-option label="店长" value="manager" />
            <el-option label="其他" value="other" />
          </el-select>
        </el-form-item>
        <el-form-item v-if="form.role === 'coach'" label="擅长">
          <el-input v-model="form.specialty" placeholder="如：底线 / 发球 / 青少年" />
        </el-form-item>
        <el-form-item v-else label="备注岗位">
          <el-input v-model="form.specialty" placeholder="选填说明" />
        </el-form-item>
        <el-form-item label="排序">
          <el-input-number v-model="form.sort" :min="0" />
        </el-form-item>
        <el-form-item label="状态">
          <el-switch v-model="form.active" active-text="在职" inactive-text="停用" />
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

const list = ref([])
const loading = ref(false)
const saving = ref(false)
const visible = ref(false)
const filterRole = ref('')
const venueName = ref(localStorage.getItem('venue_name') || '')

const form = ref({
  _id: '',
  name: '',
  phone: '',
  role: 'front',
  specialty: '',
  sort: 0,
  active: true,
  remark: ''
})

const base = import.meta.env.DEV
  ? '/api'
  : 'https://cloud1-d0gmljq45868f5766-1312769671.ap-shanghai.app.tcloudbase.com'

function venueId() {
  return localStorage.getItem('venue_id') || ''
}

function roleLabel(r) {
  return { coach: '教练', front: '前台', service: '客服', manager: '店长', other: '其他' }[r] || r
}
function roleTag(r) {
  return { coach: 'warning', front: 'success', service: 'primary', manager: 'danger', other: 'info' }[r] || 'info'
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
  venueName.value = localStorage.getItem('venue_name') || ''
  if (!venueId()) {
    list.value = []
    ElMessage.warning('请先在顶部选择场馆')
    return
  }
  loading.value = true
  try {
    const result = await post('/adminGetStaff', {
      venueId: venueId(),
      role: filterRole.value || ''
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
    phone: '',
    role: 'front',
    specialty: '',
    sort: 0,
    active: true,
    remark: ''
  }
  visible.value = true
}

function openEdit(row) {
  form.value = {
    _id: row._id,
    name: row.name || '',
    phone: row.phone || '',
    role: row.role || 'other',
    specialty: row.specialty || '',
    sort: row.sort || 0,
    active: row.status === 'active',
    remark: row.remark || ''
  }
  visible.value = true
}

async function save() {
  if (!form.value.name) {
    ElMessage.warning('请填写姓名')
    return
  }
  if (!form.value.role) {
    ElMessage.warning('请选择岗位')
    return
  }
  saving.value = true
  try {
    const data = {
      name: form.value.name,
      phone: form.value.phone,
      role: form.value.role,
      specialty: form.value.specialty,
      sort: form.value.sort,
      status: form.value.active ? 'active' : 'disabled',
      remark: form.value.remark,
      venueId: venueId()
    }
    const result = form.value._id
      ? await post('/adminSaveStaff', { action: 'update', id: form.value._id, data })
      : await post('/adminSaveStaff', { action: 'add', data })

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
    const result = await post('/adminSaveStaff', {
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
    await ElMessageBox.confirm(`确定删除员工「${row.name}」？`, '警告', { type: 'warning' })
    const result = await post('/adminSaveStaff', { action: 'delete', id: row._id })
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
  loadData()
  window.addEventListener('venue-changed', loadData)
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
