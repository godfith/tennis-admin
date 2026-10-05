<template>
  <div class="page">
    <div class="page-header">
      <div>
        <h2>员工管理</h2>
        <p class="tip">当前场馆：{{ venueName || '未选择' }} · 新增时可同时开通后台登录账号（店员 / 前台 / 店长 / 客服）</p>
      </div>
      <div>
        <el-button :loading="loading" @click="loadData">刷新</el-button>
        <el-button type="primary" @click="openAdd">新增员工账号</el-button>
      </div>
    </div>
    <div class="filters">
      <el-select v-model="filterRole" clearable placeholder="全部岗位" style="width: 140px" @change="loadData">
        <el-option label="前台" value="front" />
        <el-option label="客服" value="service" />
        <el-option label="店长" value="manager" />
        <el-option label="其他" value="other" />
      </el-select>
    </div>
    <el-table :data="list" stripe border v-loading="loading">
      <el-table-column prop="name" label="姓名" min-width="100" />
      <el-table-column prop="phone" label="手机号" width="130" />
      <el-table-column label="岗位" width="100"><template #default="{ row }"><el-tag size="small" :type="roleTag(row.role)">{{ roleLabel(row.role) }}</el-tag></template></el-table-column>
      <el-table-column prop="specialty" label="备注" min-width="140" />
      <el-table-column prop="sort" label="排序" width="80" />
      <el-table-column label="状态" width="90"><template #default="{ row }"><el-tag :type="row.status === 'active' ? 'success' : 'info'" size="small">{{ row.status === 'active' ? '在职' : '停用' }}</el-tag></template></el-table-column>
      <el-table-column label="操作" width="220" fixed="right">
        <template #default="{ row }">
          <el-button link type="primary" @click="openEdit(row)">编辑</el-button>
          <el-button link type="warning" @click="toggleStatus(row)">{{ row.status === 'active' ? '停用' : '启用' }}</el-button>
          <el-button link type="danger" @click="onDelete(row)">删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <h3 class="sub">后台登录账号</h3>
    <p class="tip">这些人可以用账号密码登录管理后台。超级管理员只能改自己已有账号，不要在这里再建超管。</p>
    <el-table :data="admins" stripe border v-loading="adminLoading">
      <el-table-column prop="username" label="登录账号" min-width="120" />
      <el-table-column prop="name" label="显示名" min-width="100" />
      <el-table-column label="角色" width="110"><template #default="{ row }"><el-tag size="small" :type="roleTag(row.role)">{{ roleLabel(row.role) }}</el-tag></template></el-table-column>
      <el-table-column prop="venueName" label="所属场馆" min-width="160" />
      <el-table-column label="状态" width="90"><template #default="{ row }"><el-tag :type="row.status === 'active' ? 'success' : 'info'" size="small">{{ row.status === 'active' ? '启用' : '停用' }}</el-tag></template></el-table-column>
      <el-table-column label="操作" width="280" fixed="right">
        <template #default="{ row }">
          <el-button link type="primary" @click="openEditAdmin(row)">编辑</el-button>
          <el-button link type="primary" @click="resetPwd(row)">重置密码</el-button>
          <el-button link type="warning" @click="toggleAdmin(row)">{{ row.status === 'active' ? '停用' : '启用' }}</el-button>
          <el-button link type="danger" @click="onDeleteAdmin(row)">删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <el-dialog v-model="visible" :title="form._id ? '编辑员工' : '新增员工账号'" width="520px" destroy-on-close>
      <el-form label-width="100px">
        <el-form-item label="姓名" required><el-input v-model="form.name" /></el-form-item>
        <el-form-item label="手机号"><el-input v-model="form.phone" placeholder="建议填手机，可当登录账号" /></el-form-item>
        <el-form-item label="岗位" required>
          <el-select v-model="form.role" style="width: 100%">
            <el-option label="前台 / 店员" value="front" />
            <el-option label="客服" value="service" />
            <el-option label="店长" value="manager" />
            <el-option label="其他" value="other" />
          </el-select>
        </el-form-item>
        <el-form-item label="备注"><el-input v-model="form.specialty" /></el-form-item>
        <el-form-item label="排序"><el-input-number v-model="form.sort" :min="0" /></el-form-item>
        <el-form-item label="状态"><el-switch v-model="form.active" active-text="在职" inactive-text="停用" /></el-form-item>
        <el-divider content-position="left">后台登录</el-divider>
        <el-form-item label="开通登录">
          <el-switch v-model="form.openLogin" :disabled="!!form._id" />
        </el-form-item>
        <el-form-item v-if="form.openLogin || form._id" label="登录账号">
          <el-input v-model="form.username" :disabled="!!form._id" placeholder="默认用手机号" />
        </el-form-item>
        <el-form-item v-if="form.openLogin && !form._id" label="登录密码" required>
          <el-input v-model="form.password" type="password" show-password placeholder="至少 4 位，发给店员" />
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="visible = false">取消</el-button>
        <el-button type="primary" :loading="saving" @click="save">保存</el-button>
      </template>
    </el-dialog>

    <el-dialog v-model="adminVisible" title="编辑登录账号" width="480px" destroy-on-close>
      <el-form label-width="100px">
        <el-form-item label="登录账号"><el-input :model-value="adminForm.username" disabled /></el-form-item>
        <el-form-item label="显示名"><el-input v-model="adminForm.name" /></el-form-item>
        <el-form-item label="角色">
          <el-select v-model="adminForm.role" style="width: 100%" :disabled="adminForm.role === 'admin'">
            <el-option label="前台 / 店员" value="front" />
            <el-option label="客服" value="service" />
            <el-option label="店长" value="manager" />
          </el-select>
        </el-form-item>
        <el-form-item label="权限">
          <el-checkbox-group v-model="adminForm.perms">
            <el-checkbox v-for="p in permOptions" :key="p.key" :label="p.key">{{ p.label }}</el-checkbox>
          </el-checkbox-group>
          <div class="hint">不勾选则按角色默认。勾选后只开放勾了的菜单和操作。超管不受限制。</div>
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="adminVisible = false">取消</el-button>
        <el-button type="primary" :loading="adminSaving" @click="saveAdmin">保存</el-button>
      </template>
    </el-dialog>
  </div>
</template>
<script setup>
import { ref, onMounted, onUnmounted } from 'vue'
import { PERM_OPTIONS, ALLOWED } from '../utils/auth'
import { ElMessage, ElMessageBox } from 'element-plus'
const list = ref([])
const admins = ref([])
const loading = ref(false)
const adminLoading = ref(false)
const saving = ref(false)
const visible = ref(false)
const adminVisible = ref(false)
const adminSaving = ref(false)
const adminForm = ref({ _id: '', username: '', name: '', role: 'front', password: '', perms: [] })
const permOptions = PERM_OPTIONS
const filterRole = ref('')
const venueName = ref(localStorage.getItem('venue_name') || '')
const form = ref({ _id: '', name: '', phone: '', role: 'front', specialty: '', sort: 0, active: true, remark: '', openLogin: true, username: '', password: '' })
const base = import.meta.env.DEV ? '/api' : 'https://cloud1-d3g0pb1qk028e3585-d862bc2-1312769671.ap-shanghai.app.tcloudbase.com'
function venueId() { return localStorage.getItem('venue_id') || '' }
function roleLabel(r) { return { admin: '超管', front: '前台', service: '客服', manager: '店长', other: '其他' }[r] || r }
function roleTag(r) { return { admin: 'danger', front: 'success', service: 'primary', manager: 'warning', other: 'info' }[r] || 'info' }
async function post(path, body = {}) {
  const res = await fetch(base + path, { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify(body) })
  const data = await res.json()
  return data.body ? (typeof data.body === 'string' ? JSON.parse(data.body) : data.body) : data
}
async function loadAdmins() {
  adminLoading.value = true
  try {
    const result = await post('/adminSaveAdmin', { action: 'list', venueId: venueId() })
    if (result.ok) admins.value = result.list || []
  } catch (e) { /* 云函数未部署时不挡员工列表 */ }
  finally { adminLoading.value = false }
}
async function loadData() {
  venueName.value = localStorage.getItem('venue_name') || ''
  if (!venueId()) { list.value = []; ElMessage.warning('请先在顶部选择场馆'); return }
  loading.value = true
  try {
    const result = await post('/adminGetStaff', { venueId: venueId(), role: filterRole.value || '' })
    if (!result.ok) { ElMessage.error(result.msg || '加载失败'); return }
    list.value = (result.list || []).filter((r) => r.role !== 'coach')
  } catch (e) { ElMessage.error(e.message || '网络错误') }
  finally { loading.value = false }
  loadAdmins()
}
function openAdd() {
  if (!venueId()) { ElMessage.warning('请先选择场馆'); return }
  form.value = { _id: '', name: '', phone: '', role: 'front', specialty: '', sort: 0, active: true, remark: '', openLogin: true, username: '', password: '' }
  visible.value = true
}
function openEdit(row) {
  form.value = { _id: row._id, name: row.name || '', phone: row.phone || '', role: row.role === 'coach' ? 'other' : row.role || 'other', specialty: row.specialty || '', sort: row.sort || 0, active: row.status === 'active', remark: row.remark || '', openLogin: false, username: '', password: '' }
  visible.value = true
}
async function save() {
  if (!form.value.name) { ElMessage.warning('请填写姓名'); return }
  if (!form.value._id && form.value.openLogin) {
    const user = (form.value.username || form.value.phone || '').trim()
    if (!user) { ElMessage.warning('开通登录请填账号或手机号'); return }
    if (!form.value.password || form.value.password.length < 4) { ElMessage.warning('请设置至少 4 位密码'); return }
  }
  saving.value = true
  try {
    const data = { name: form.value.name, phone: form.value.phone, role: form.value.role, specialty: form.value.specialty, sort: form.value.sort, status: form.value.active ? 'active' : 'disabled', remark: form.value.remark, venueId: venueId() }
    const result = form.value._id ? await post('/adminSaveStaff', { action: 'update', id: form.value._id, data }) : await post('/adminSaveStaff', { action: 'add', data })
    if (!result.ok) { ElMessage.error(result.msg || '保存员工失败'); return }
    if (!form.value._id && form.value.openLogin) {
      const acc = await post('/adminSaveAdmin', {
        action: 'add',
        username: (form.value.username || form.value.phone || '').trim(),
        password: form.value.password,
        name: form.value.name,
        role: form.value.role === 'other' ? 'front' : form.value.role,
        venueId: venueId(),
        venueName: venueName.value,
        operatorRole: localStorage.getItem('admin_role') || ''
      })
      if (!acc.ok) {
        ElMessage.warning('员工已建，但登录账号失败：' + (acc.msg || '请部署 adminSaveAdmin'))
        visible.value = false
        loadData()
        return
      }
    }
    ElMessage.success('保存成功')
    visible.value = false
    loadData()
  } catch (e) { ElMessage.error(e.message || '网络错误') }
  finally { saving.value = false }
}
async function toggleStatus(row) {
  const next = row.status === 'active' ? 'disabled' : 'active'
  const result = await post('/adminSaveStaff', { action: 'toggle', id: row._id, data: { status: next } })
  if (!result.ok) { ElMessage.error(result.msg || '操作失败'); return }
  ElMessage.success('已更新'); loadData()
}
async function onDelete(row) {
  try {
    await ElMessageBox.confirm('确定删除员工「' + row.name + '」？将同时删除同名/同手机号的登录账号。', '警告', { type: 'warning' })
    const result = await post('/adminSaveStaff', { action: 'delete', id: row._id })
    if (!result.ok) { ElMessage.error(result.msg || '删除失败'); return }
    const acc = await post('/adminSaveAdmin', { action: 'deleteMatch', phone: row.phone || '', name: row.name || '', venueId: venueId() })
    ElMessage.success(acc.ok && acc.deleted ? '员工和登录账号已删除' : '员工已删除')
    loadData()
  } catch (e) { if (e !== 'cancel') ElMessage.error(e.message || '失败') }
}
function openEditAdmin(row) {
  if (row.role === 'admin' || String(row.username).toLowerCase() === 'admin') {
    ElMessage.warning('超级管理员请在库里改，这里只改店员账号')
    return
  }
  adminForm.value = { _id: row._id, username: row.username, name: row.name || '', role: row.role || 'front', password: '', perms: row.perms && row.perms.length ? row.perms.slice() : (ALLOWED[row.role] || []).slice() }
  adminVisible.value = true
}
async function saveAdmin() {
  adminSaving.value = true
  try {
    const result = await post('/adminSaveAdmin', {
      action: 'update',
      id: adminForm.value._id,
      name: adminForm.value.name,
      role: adminForm.value.role,
      password: adminForm.value.password || '',
      perms: adminForm.value.perms || [],
      venueId: venueId(),
      venueName: venueName.value
    })
    if (!result.ok) { ElMessage.error(result.msg || '保存失败'); return }
    ElMessage.success('账号已更新')
    adminVisible.value = false
    loadAdmins()
  } catch (e) { ElMessage.error(e.message || '失败') }
  finally { adminSaving.value = false }
}
async function onDeleteAdmin(row) {
  try {
    await ElMessageBox.confirm('确定删除登录账号「' + row.username + '」？删除后无法登录后台。', '警告', { type: 'warning' })
    const result = await post('/adminSaveAdmin', { action: 'delete', id: row._id })
    if (!result.ok) { ElMessage.error(result.msg || '删除失败'); return }
    ElMessage.success('账号已删除')
    loadAdmins()
  } catch (e) { if (e !== 'cancel') ElMessage.error(e.message || '失败') }
}
async function resetPwd(row) {
  try {
    const { value } = await ElMessageBox.prompt('为「' + (row.name || row.username) + '」设置新密码', '重置密码', { inputType: 'password' })
    if (!value || value.length < 4) { ElMessage.warning('至少 4 位'); return }
    const result = await post('/adminSaveAdmin', { action: 'update', id: row._id, password: value })
    if (!result.ok) { ElMessage.error(result.msg || '失败'); return }
    ElMessage.success('密码已更新')
  } catch (e) { if (e !== 'cancel') ElMessage.error(e.message || '取消') }
}
async function toggleAdmin(row) {
  const next = row.status === 'active' ? 'disabled' : 'active'
  const result = await post('/adminSaveAdmin', { action: 'toggle', id: row._id, status: next })
  if (!result.ok) { ElMessage.error(result.msg || '失败'); return }
  ElMessage.success('已更新'); loadAdmins()
}
onMounted(() => { loadData(); window.addEventListener('venue-changed', loadData) })
onUnmounted(() => window.removeEventListener('venue-changed', loadData))
</script>
<style scoped>
.page-header { display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 12px; }
h2 { margin: 0 0 4px; font-size: 20px; }
.sub { margin: 28px 0 8px; font-size: 16px; }
.tip { margin: 0 0 12px; color: #888; font-size: 13px; }
.filters { margin-bottom: 12px; }
</style>
