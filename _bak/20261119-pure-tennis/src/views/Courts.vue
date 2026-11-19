<template>
  <div class="page">
    <div class="page-header">
      <h2>场地管理</h2>
      <div>
        <el-button :loading="loading" @click="loadData">刷新</el-button>
        <el-button type="primary" @click="openAdd">新增场地</el-button>
      </div>
    </div>
    <p class="tip">当前场馆：{{ venueName || '未选择' }}</p>
    <el-table :data="list" stripe border v-loading="loading">
      <el-table-column prop="name" label="场地名称" min-width="120" />
      <el-table-column prop="type" label="类型" width="120" />
      <el-table-column prop="sort" label="排序" width="80" />
      <el-table-column label="状态" width="100"><template #default="{ row }"><el-tag :type="isOpen(row) ? 'success' : 'info'" size="small">{{ isOpen(row) ? '开放' : '关闭' }}</el-tag></template></el-table-column>
      <el-table-column label="对客人显示" width="120">
        <template #default="{ row }">
          <el-tag :type="isCustomerVisible(row) ? 'success' : 'warning'" size="small">{{ isCustomerVisible(row) ? '显示' : '仅内部' }}</el-tag>
        </template>
      </el-table-column>
      <el-table-column label="操作" width="220" fixed="right">
        <template #default="{ row }">
          <el-button link type="primary" @click="openEdit(row)">编辑</el-button>
          <el-button link type="warning" @click="toggleStatus(row)">{{ isOpen(row) ? '关闭' : '开放' }}</el-button>
          <el-button link type="danger" @click="onDelete(row)">删除</el-button>
        </template>
      </el-table-column>
    </el-table>
    <el-dialog v-model="visible" :title="form._id ? '编辑场地' : '新增场地'" width="420px">
      <el-form label-width="80px">
        <el-form-item label="名称"><el-input v-model="form.name" /></el-form-item>
        <el-form-item label="项目">
          <el-select v-model="form.type" style="width: 100%">
            <el-option label="网球" value="网球" />
            <el-option label="匹克球" value="匹克球" />
            <el-option label="共用（发球机/匹克球）" value="共用" />
          </el-select>
          <div class="hint">中大店发球机场地选「共用」。海心沙独立匹克球场选「匹克球」。</div>
        </el-form-item>
        <el-form-item label="排序"><el-input-number v-model="form.sort" :min="0" /></el-form-item>
        <el-form-item label="状态"><el-switch v-model="form.open" active-text="开放" inactive-text="关闭" /></el-form-item>
        <el-form-item label="对客人显示">
          <el-switch v-model="form.customerVisible" active-text="显示" inactive-text="仅内部" />
          <div class="hint">{{ form.name && String(form.name).trim() === '外场' ? '名称正好是「外场」时，本馆会把它当成内部虚拟场：小程序不显示，同一时段可多位教练重复排课。别的场馆也可以各加一块外场，互不影响。' : '关闭后小程序订场不给客人看，后台和教练排课还能用。只有名称正好是「外场」才允许同一时段重复排课。' }}</div>
        </el-form-item>
        <el-form-item label="备注"><el-input v-model="form.remark" type="textarea" /></el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="visible = false">取消</el-button>
        <el-button type="primary" :loading="saving" @click="save">保存</el-button>
      </template>
    </el-dialog>
  </div>
</template>
<script setup>
import { ref, onMounted, onUnmounted, watch } from 'vue'
import { ElMessage, ElMessageBox } from 'element-plus'
const list = ref([])
const loading = ref(false)
const saving = ref(false)
const visible = ref(false)
const venueName = ref(localStorage.getItem('venue_name') || '')
const form = ref({ _id: '', name: '', type: '', sort: 0, open: true, customerVisible: true, remark: '' })
const base = import.meta.env.DEV ? '/api' : 'https://cloud1-d3g0pb1qk028e3585-d862bc2-1312769671.ap-shanghai.app.tcloudbase.com'
function venueId() { return localStorage.getItem('venue_id') || '' }
function isOutdoorSharedCourt(name) { return String(name || '').trim() === '外场' }
function isOpen(row) { return row.status === 'open' || row.status === 1 || row.status === true || row.status === '开门' }
function isCustomerVisible(row) { return !isOutdoorSharedCourt(row && row.name) && row.customerVisible !== 0 && row.customerVisible !== '0' && row.customerVisible !== false }
watch(() => form.value.name, (name) => {
  if (isOutdoorSharedCourt(name)) {
    form.value.customerVisible = false
    if (!String(form.value.remark || '').trim()) form.value.remark = '内部虚拟场，仅教练排课记录，不对客人显示'
  }
})
async function post(path, body = {}) {
  const res = await fetch(base + path, { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify(body) })
  const data = await res.json()
  return data.body ? (typeof data.body === 'string' ? JSON.parse(data.body) : data.body) : data
}
async function loadData() {
  venueName.value = localStorage.getItem('venue_name') || ''
  if (!venueId()) { list.value = []; ElMessage.warning('请先在顶部选择场馆'); return }
  loading.value = true
  try {
    const result = await post('/adminGetCourts', { venueId: venueId() })
    if (!result.ok) { ElMessage.error(result.msg || '加载失败'); return }
    list.value = result.list || []
  } catch (e) { ElMessage.error(e.message || '网络错误') }
  finally { loading.value = false }
}
function openAdd() {
  if (!venueId()) { ElMessage.warning('请先选择场馆'); return }
  form.value = { _id: '', name: '', type: '', sort: 0, open: true, customerVisible: true, remark: '' }
  visible.value = true
}
function openEdit(row) {
  form.value = { _id: row._id, name: row.name || '', type: row.type || '', sort: row.sort || 0, open: isOpen(row), customerVisible: isCustomerVisible(row), remark: row.remark || '' }
  visible.value = true
}
async function save() {
  if (!form.value.name) { ElMessage.warning('请填写名称'); return }
  saving.value = true
  try {
    const isOutdoor = isOutdoorSharedCourt(form.value.name)
    if (isOutdoor) form.value.customerVisible = false
    const data = { name: String(form.value.name || '').trim(), type: form.value.type, sort: form.value.sort, status: form.value.open ? 'open' : 'closed', remark: form.value.remark, venueId: venueId(), customerVisible: isOutdoor || !form.value.customerVisible ? 0 : 1 }
    const result = form.value._id ? await post('/adminSaveCourt', { action: 'update', id: form.value._id, data }) : await post('/adminSaveCourt', { action: 'add', data })
    if (!result.ok) { ElMessage.error(result.msg || '保存失败'); return }
    ElMessage.success('保存成功'); visible.value = false; loadData()
  } catch (e) { ElMessage.error(e.message || '网络错误') }
  finally { saving.value = false }
}
async function toggleStatus(row) {
  const next = isOpen(row) ? 'closed' : 'open'
  const result = await post('/adminSaveCourt', { action: 'toggle', id: row._id, data: { status: next } })
  if (!result.ok) { ElMessage.error(result.msg || '操作失败'); return }
  ElMessage.success('已更新'); loadData()
}
async function onDelete(row) {
  try {
    await ElMessageBox.confirm('确定删除「' + row.name + '」？', '警告', { type: 'warning' })
    const result = await post('/adminSaveCourt', { action: 'delete', id: row._id })
    if (!result.ok) { ElMessage.error(result.msg || '删除失败'); return }
    ElMessage.success('已删除'); loadData()
  } catch (e) { if (e !== 'cancel') ElMessage.error(e.message || '失败') }
}
onMounted(() => { loadData(); window.addEventListener('venue-changed', loadData) })
onUnmounted(() => window.removeEventListener('venue-changed', loadData))
</script>
<style scoped>
.page-header { display: flex; justify-content: space-between; align-items: center; margin-bottom: 12px; }
h2 { margin: 0; font-size: 20px; }
.tip { color: #666; margin-bottom: 16px; font-size: 14px; }
.hint { margin-top: 6px; color: #909399; font-size: 12px; line-height: 1.5; }
</style>
