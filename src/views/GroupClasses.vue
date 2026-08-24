<template>
  <div class="page">
    <div class="page-header">
      <div>
        <h2>团课排期</h2>
        <p class="tip">当前场馆：{{ venueName || '未选择' }} · 可查看报名名单并加减学员</p>
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
      <el-table-column label="操作" width="280" fixed="right">
        <template #default="{ row }">
          <el-button link type="success" @click="openMembers(row)">名单</el-button>
          <el-button link type="primary" @click="openEdit(row)">编辑</el-button>
          <el-button link type="warning" @click="toggleStatus(row)">
            {{ row.status === 'open' ? '关闭' : '开放' }}
          </el-button>
          <el-button link type="danger" @click="onDelete(row)">删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <!-- 新增/编辑团课 -->
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

    <!-- 报名名单 -->
    <el-dialog
      v-model="memberVisible"
      :title="`报名名单 · ${currentClass.name || ''}`"
      width="640px"
      destroy-on-close
    >
      <div class="member-toolbar">
        <span>已报名 {{ members.length }} / {{ currentClass.capacity || '-' }}</span>
        <el-button type="primary" size="small" @click="openAddMember">添加学员</el-button>
      </div>

      <el-table :data="members" stripe border v-loading="memberLoading" size="small">
        <el-table-column prop="userName" label="学员" min-width="120" />
        <el-table-column prop="phone" label="手机" width="120" />
        <el-table-column prop="cardName" label="使用卡" min-width="120" />
        <el-table-column label="操作" width="100" fixed="right">
          <template #default="{ row }">
            <el-button link type="danger" @click="removeMember(row)">移除</el-button>
          </template>
        </el-table-column>
      </el-table>

      <template #footer>
        <el-button @click="memberVisible = false">关闭</el-button>
      </template>
    </el-dialog>

    <!-- 添加学员 -->
    <el-dialog v-model="addMemberVisible" title="添加学员到团课" width="480px" destroy-on-close>
      <el-form label-width="90px">
        <el-form-item label="学员" required>
          <el-select
            v-model="addForm.memberKey"
            filterable
            remote
            clearable
            reserve-keyword
            placeholder="输入昵称/手机号搜索"
            :remote-method="searchMembers"
            :loading="memberSearchLoading"
            style="width:100%"
            @change="onMemberPick"
          >
            <el-option
              v-for="m in memberOptions"
              :key="m._id"
              :label="memberLabel(m)"
              :value="m._id"
            />
          </el-select>
        </el-form-item>
        <el-form-item label="团课卡" required>
          <el-select
            v-model="addForm.cardId"
            placeholder="请选择团课卡"
            style="width:100%"
            :loading="cardLoading"
            :disabled="!addForm.memberKey"
          >
            <el-option
              v-for="c in groupCards"
              :key="c._id"
              :label="`${c.cardName}（剩${c.remainingTimes}次）`"
              :value="c._id"
            />
          </el-select>
          <div v-if="addForm.memberKey && !cardLoading && groupCards.length === 0" class="hint-error">
            该会员没有可用团课卡
          </div>
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="addMemberVisible = false">取消</el-button>
        <el-button type="primary" :loading="adding" @click="submitAddMember">确认添加</el-button>
      </template>
    </el-dialog>
  </div>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from 'vue'
import { ElMessage, ElMessageBox } from 'element-plus'

const timeSlots = [
  '08:00-09:00', '09:00-10:00', '10:00-11:00', '11:00-12:00',
  '14:00-15:00', '15:00-16:00', '16:00-17:00', '17:00-18:00',
  '18:00-19:00', '19:00-20:00', '20:00-21:00'
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
  _id: '', name: '', date: '', time: '', court: '',
  coachId: '', coachName: '', capacity: 6, open: true, remark: ''
})

const memberVisible = ref(false)
const memberLoading = ref(false)
const members = ref([])
const currentClass = ref({})

const addMemberVisible = ref(false)
const addForm = ref({ memberKey: '', userName: '', openid: '', phone: '', cardId: '' })
const memberOptions = ref([])
const memberSearchLoading = ref(false)
const groupCards = ref([])
const cardLoading = ref(false)
const adding = ref(false)

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

function memberLabel(m) {
  const name = m.nickName || m.nickname || m.name || ''
  if (m.phone) return `${name}（${m.phone}）`
  return name || m.userId || m._id
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
    _id: '', name: '', date: new Date().toISOString().slice(0, 10),
    time: '', court: '', coachId: '', coachName: '', capacity: 6, open: true, remark: ''
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

async function openMembers(row) {
  currentClass.value = row
  memberVisible.value = true
  await loadMembers()
}

async function loadMembers() {
  if (!currentClass.value._id) return
  memberLoading.value = true
  try {
    const result = await post('/adminGetGroupEnrollments', {
      groupClassId: currentClass.value._id
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '加载名单失败')
      members.value = []
      return
    }
    members.value = result.list || []
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
    members.value = []
  } finally {
    memberLoading.value = false
  }
}

async function removeMember(row) {
  try {
    await ElMessageBox.confirm(
      `确定移除「${row.userName || '该学员'}」？将取消报名并退还团课卡次数。`,
      '移除学员',
      { type: 'warning' }
    )
    const result = await post('/adminSaveBooking', {
      action: 'cancel',
      id: row._id,
      data: { operatorName: localStorage.getItem('admin_name') || '管理员' }
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '移除失败')
      return
    }
    ElMessage.success('已移除')
    await loadMembers()
    loadData()
  } catch (e) {
    if (e !== 'cancel') ElMessage.error(e.message || '失败')
  }
}

function openAddMember() {
  addForm.value = { memberKey: '', userName: '', openid: '', phone: '', cardId: '' }
  memberOptions.value = []
  groupCards.value = []
  addMemberVisible.value = true
}

async function searchMembers(query) {
  const q = (query || '').trim()
  if (!q) {
    memberOptions.value = []
    return
  }
  memberSearchLoading.value = true
  try {
    let result
    try {
      result = await post('/adminGetUsers', { keyword: q })
    } catch (e) {
      result = await post('/adminSearchUsers', { keyword: q })
    }
    memberOptions.value = result.list || []
  } catch (e) {
    memberOptions.value = []
  } finally {
    memberSearchLoading.value = false
  }
}

async function onMemberPick(id) {
  addForm.value.cardId = ''
  groupCards.value = []
  const m = memberOptions.value.find((x) => x._id === id)
  if (!m) {
    addForm.value.userName = ''
    addForm.value.openid = ''
    addForm.value.phone = ''
    return
  }
  addForm.value.userName = m.nickName || m.nickname || m.name || m.userId || ''
  addForm.value.openid = m._openid || m.openid || ''
  addForm.value.phone = m.phone || ''
  cardLoading.value = true
  try {
    const result = await post('/adminGetMemberCards', {
      userId: m._id,
      openid: addForm.value.openid
    })
    groupCards.value = (result.list || []).filter(
      (c) => c.type === 'group' && c.status === 'active' && (c.remainingTimes || 0) > 0
    )
  } catch (e) {
    groupCards.value = []
  } finally {
    cardLoading.value = false
  }
}

async function submitAddMember() {
  if (!addForm.value.memberKey || !addForm.value.userName) {
    ElMessage.warning('请选择学员')
    return
  }
  if (!addForm.value.cardId) {
    ElMessage.warning('请选择团课卡')
    return
  }
  adding.value = true
  try {
    const result = await post('/adminEnrollGroupClass', {
      groupClassId: currentClass.value._id,
      userId: addForm.value.memberKey,
      userName: addForm.value.userName,
      openid: addForm.value.openid,
      phone: addForm.value.phone,
      cardId: addForm.value.cardId
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '添加失败')
      return
    }
    ElMessage.success('已添加')
    addMemberVisible.value = false
    await loadMembers()
    loadData()
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    adding.value = false
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
.member-toolbar {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 12px;
}
.hint-error {
  color: #f56c6c;
  font-size: 12px;
  margin-top: 4px;
}
</style>
