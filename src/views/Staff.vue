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
            <el-option label="联营人" value="partner" />
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

    <div class="sub-row">
      <div>
        <h3 class="sub">后台登录账号</h3>
        <p class="tip">这些人可以用账号密码登录管理后台。超级管理员只能改自己已有账号，不要在这里再建超管。给教练开通登录时，请使用与教练资料相同的手机号。</p>
      </div>
      <el-button type="primary" plain @click="openAddAdmin">新增登录账号</el-button>
    </div>
    <el-table :data="admins" stripe border v-loading="adminLoading">
      <el-table-column prop="username" label="登录账号" min-width="120" />
      <el-table-column prop="name" label="显示名" min-width="100" />
      <el-table-column label="角色" width="110"><template #default="{ row }"><el-tag size="small" :type="roleTag(row.role)">{{ roleLabel(row.role) }}</el-tag></template></el-table-column>
      <el-table-column label="可查看场馆" min-width="200">
        <template #default="{ row }">{{ adminVenueText(row) }}</template>
      </el-table-column>
      <el-table-column label="权限" width="120">
        <template #default="{ row }">
          <el-tag size="small" :type="permTagType(row)">{{ permSummary(row) }}</el-tag>
        </template>
      </el-table-column>
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
            <el-option label="联营人" value="partner" />
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

    <el-dialog v-model="adminVisible" :title="adminForm._id ? '编辑登录账号' : '新增登录账号'" width="680px" destroy-on-close class="perm-dialog">
      <el-form label-width="100px">
        <el-form-item label="登录账号" required>
          <el-input v-model="adminForm.username" :disabled="!!adminForm._id" placeholder="建议用教练/店员手机号" />
        </el-form-item>
        <el-form-item v-if="!adminForm._id" label="登录密码" required>
          <el-input v-model="adminForm.password" type="password" show-password placeholder="至少 4 位" />
        </el-form-item>
        <el-form-item label="显示名"><el-input v-model="adminForm.name" /></el-form-item>
        <el-form-item label="手机号">
          <el-input v-model="adminForm.phone" placeholder="教练请填与教练资料相同的手机号" />
        </el-form-item>
        <el-form-item label="角色">
          <el-select v-model="adminForm.role" style="width: 100%" :disabled="adminForm.role === 'admin'" @change="onAdminRoleChange">
            <el-option label="前台 / 店员" value="front" />
            <el-option label="客服" value="service" />
            <el-option label="店长" value="manager" />
            <el-option label="联营人" value="partner" />
            <el-option label="教练" value="coach" />
          </el-select>
          <div v-if="adminForm.role === 'coach'" class="hint">教练默认只能进入「团课排期」「教练排课」：可发布自己的团课、锁自己的外场，不能代约私教课。请用与教练资料相同的手机号开通登录。</div>
        </el-form-item>
        <el-form-item label="可查看场馆">
          <el-checkbox-group v-model="adminForm.venueIds" class="venue-checks">
            <el-checkbox v-for="v in venueOptions" :key="v.id" :label="v.id">{{ v.name }}</el-checkbox>
          </el-checkbox-group>
          <div class="hint">勾选多家后，对方重新登录即可在顶部切换；只选一家则不能切换。超管不受此限制。</div>
        </el-form-item>
        <el-form-item label="权限">
          <el-radio-group v-model="permMode" @change="onPermModeChange">
            <el-radio-button label="default" value="default">使用角色默认</el-radio-button>
            <el-radio-button label="custom" value="custom">自定义权限</el-radio-button>
          </el-radio-group>
          <div class="hint">{{ permModeHint }}</div>
          <div class="perm-toolbar" v-if="permMode === 'custom'">
            <el-button size="small" @click="applyRoleDefaults">套用{{ roleLabel(adminForm.role) }}默认</el-button>
          </div>
          <el-checkbox-group v-model="adminForm.perms" :disabled="permMode === 'default'" class="perm-groups">
            <div v-for="g in permGroups" :key="g.id" class="perm-group">
              <div class="perm-group-hd">
                <span>{{ g.title }}</span>
                <span v-if="permMode === 'custom'" class="perm-group-actions">
                  <el-button link type="primary" @click="setGroup(g, true)">全选</el-button>
                  <el-button link @click="setGroup(g, false)">清空</el-button>
                </span>
              </div>
              <div class="perm-grid">
                <el-checkbox v-for="p in g.items" :key="p.key" :label="p.key" :class="{ 'perm-book': p.key === 'book' }">{{ p.label }}</el-checkbox>
              </div>
              <div v-if="g.id === 'actions' && showBookTip" class="perm-warn">已勾选「预约管理」，但未勾选「代客订场」，该账号打开预约页后只能查看，不能帮顾客订场。</div>
            </div>
          </el-checkbox-group>
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
import { ref, computed, onMounted, onUnmounted } from 'vue'
import { PERM_GROUPS, defaultPermsForRole } from '../utils/auth'
import { ElMessage, ElMessageBox } from 'element-plus'
const list = ref([])
const admins = ref([])
const loading = ref(false)
const adminLoading = ref(false)
const saving = ref(false)
const visible = ref(false)
const adminVisible = ref(false)
const adminSaving = ref(false)
const adminForm = ref({ _id: '', username: '', name: '', phone: '', role: 'front', password: '', perms: [], venueIds: [], homeVenueId: '' })
const permMode = ref('default')
const permGroups = PERM_GROUPS
const venueOptions = ref([])
const filterRole = ref('')
const venueName = ref(localStorage.getItem('venue_name') || '')
const form = ref({ _id: '', name: '', phone: '', role: 'front', specialty: '', sort: 0, active: true, remark: '', openLogin: true, username: '', password: '' })
const base = import.meta.env.DEV ? '/api' : 'https://cloud1-d3g0pb1qk028e3585-d862bc2-1312769671.ap-shanghai.app.tcloudbase.com'
function venueId() { return localStorage.getItem('venue_id') || '' }
function roleLabel(r) { return { admin: '超管', front: '前台', service: '客服', manager: '店长', partner: '联营人', coach: '教练', other: '其他' }[r] || r }
function roleTag(r) { return { admin: 'danger', front: 'success', service: 'primary', manager: 'warning', partner: 'info', coach: 'success', other: 'info' }[r] || 'info' }
function pagePerms(perms) {
  return (perms || []).filter((p) => p && !String(p).startsWith('venue:'))
}
function venueIdsFromPerms(perms) {
  return (perms || []).filter((p) => String(p).startsWith('venue:')).map((p) => String(p).slice(6)).filter(Boolean)
}
function adminVenueText(row) {
  const ids = venueIdsFromPerms(row.perms)
  if (!ids.length && row.venueId) ids.push(String(row.venueId))
  if (!ids.length) return row.venueName || '-'
  const names = ids.map((id) => {
    const v = venueOptions.value.find((x) => x.id === String(id))
    return v ? v.name : id
  })
  return names.join('、')
}
function permSummary(row) {
  if (row.role === 'admin') return '全部权限'
  const n = pagePerms(row.perms).length
  if (!n) return '角色默认'
  return '自定义 ' + n + ' 项'
}
function permTagType(row) {
  if (row.role === 'admin') return 'danger'
  if (!pagePerms(row.perms).length) return 'info'
  return 'warning'
}
const permModeHint = computed(() => {
  if (permMode.value === 'default') return '按「' + roleLabel(adminForm.value.role) + '」的默认权限开放，下面仅供查看，保存后不写入自定义列表。'
  return '只开放下面勾选的菜单和操作。超管不受限制。'
})
const showBookTip = computed(() => {
  const perms = adminForm.value.perms || []
  return permMode.value === 'custom' && perms.includes('/bookings') && !perms.includes('book')
})
function onPermModeChange(mode) {
  if (mode === 'default') {
    adminForm.value.perms = defaultPermsForRole(adminForm.value.role)
  } else if (!(adminForm.value.perms || []).length) {
    adminForm.value.perms = defaultPermsForRole(adminForm.value.role)
  }
}
function onAdminRoleChange(role) {
  if (permMode.value === 'default') {
    adminForm.value.perms = defaultPermsForRole(role)
  }
}
function applyRoleDefaults() {
  adminForm.value.perms = defaultPermsForRole(adminForm.value.role)
}
function setGroup(group, checked) {
  const keys = (group.items || []).map((p) => p.key)
  const cur = new Set(adminForm.value.perms || [])
  keys.forEach((k) => { if (checked) cur.add(k); else cur.delete(k) })
  adminForm.value.perms = Array.from(cur)
}
async function post(path, body = {}) {
  const res = await fetch(base + path, { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify(body) })
  const data = await res.json()
  return data.body ? (typeof data.body === 'string' ? JSON.parse(data.body) : data.body) : data
}
async function loadVenueOptions() {
  try {
    const result = await post('/adminGetVenues', {})
    if (result.ok) {
      venueOptions.value = (result.list || []).map((v) => ({
        id: String(v.venueId || v._id || ''),
        name: v.name || String(v.venueId || v._id || '')
      })).filter((v) => v.id)
    }
  } catch (e) { /* 场馆列表失败时仍可编辑其它项 */ }
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
  await loadVenueOptions()
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
function openAddAdmin() {
  if (!venueId()) { ElMessage.warning('请先选择场馆'); return }
  permMode.value = 'default'
  adminForm.value = {
    _id: '',
    username: '',
    name: '',
    phone: '',
    role: 'coach',
    password: '',
    perms: defaultPermsForRole('coach'),
    venueIds: venueId() ? [venueId()] : [],
    homeVenueId: venueId() || ''
  }
  adminVisible.value = true
}
function openEditAdmin(row) {
  if (row.role === 'admin' || String(row.username).toLowerCase() === 'admin') {
    ElMessage.warning('超级管理员请在库里改，这里只改店员账号')
    return
  }
  const pages = pagePerms(row.perms)
  const custom = pages.length > 0
  permMode.value = custom ? 'custom' : 'default'
  const ids = venueIdsFromPerms(row.perms)
  if (!ids.length && row.venueId) ids.push(String(row.venueId))
  adminForm.value = {
    _id: row._id,
    username: row.username,
    name: row.name || '',
    phone: row.phone || '',
    role: row.role || 'front',
    password: '',
    perms: custom ? pages.slice() : defaultPermsForRole(row.role || 'front'),
    venueIds: ids,
    homeVenueId: String(row.venueId || ids[0] || '')
  }
  adminVisible.value = true
}
async function saveAdmin() {
  const venueIds = [...new Set((adminForm.value.venueIds || []).map(String).filter(Boolean))]
  if (!venueIds.length) { ElMessage.warning('请至少选择一个可查看的场馆'); return }
  if (!adminForm.value._id) {
    const user = (adminForm.value.username || adminForm.value.phone || '').trim()
    if (!user) { ElMessage.warning('请填写登录账号或手机号'); return }
    if (!adminForm.value.password || adminForm.value.password.length < 4) { ElMessage.warning('请设置至少 4 位密码'); return }
  }
  adminSaving.value = true
  try {
    const pages = permMode.value === 'default' ? [] : pagePerms(adminForm.value.perms)
    const perms = pages.concat(venueIds.map((id) => 'venue:' + id))
    const homeId = venueIds.includes(adminForm.value.homeVenueId) ? adminForm.value.homeVenueId : venueIds[0]
    const home = venueOptions.value.find((v) => v.id === homeId)
    const payload = {
      name: adminForm.value.name,
      phone: (adminForm.value.phone || '').trim(),
      role: adminForm.value.role,
      password: adminForm.value.password || '',
      perms,
      venueId: homeId,
      venueName: home ? home.name : (homeId === venueId() ? venueName.value : ''),
      operatorRole: localStorage.getItem('admin_role') || ''
    }
    const result = adminForm.value._id
      ? await post('/adminSaveAdmin', Object.assign({ action: 'update', id: adminForm.value._id }, payload))
      : await post('/adminSaveAdmin', Object.assign({
          action: 'add',
          username: (adminForm.value.username || adminForm.value.phone || '').trim()
        }, payload))
    if (!result.ok) { ElMessage.error(result.msg || '保存失败'); return }
    ElMessage.success(adminForm.value._id ? '账号已更新' : '账号已创建')
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
.sub-row { display: flex; justify-content: space-between; align-items: flex-end; gap: 12px; margin-top: 20px; }
.sub { margin: 8px 0; font-size: 16px; }
.tip { margin: 0 0 12px; color: #888; font-size: 13px; }
.filters { margin-bottom: 12px; }
.hint { margin: 8px 0 0; color: #888; font-size: 12px; line-height: 1.5; }
.perm-toolbar { margin: 10px 0 4px; }
.perm-groups { display: flex; flex-direction: column; gap: 10px; margin-top: 12px; width: 100%; }
.perm-group { padding: 10px 12px; background: #f6f8f6; border-radius: 8px; }
.perm-group-hd { display: flex; justify-content: space-between; align-items: center; margin-bottom: 8px; font-weight: 600; color: #1a5c3a; font-size: 13px; }
.perm-group-actions { font-weight: 400; }
.perm-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 6px 12px; }
.perm-book :deep(.el-checkbox__label) { font-weight: 600; color: #c45600; }
.perm-warn { margin-top: 8px; color: #c45600; font-size: 12px; line-height: 1.5; }
.venue-checks { display: grid; grid-template-columns: 1fr 1fr; gap: 6px 12px; width: 100%; }
@media (max-width: 720px) {
  .perm-grid { grid-template-columns: 1fr; }
  .venue-checks { grid-template-columns: 1fr; }
}
</style>
