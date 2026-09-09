<template>
  <div class="page">
    <div class="page-header">
      <h2>用户管理</h2>
      <div class="toolbar">
        <el-input v-model="keyword" placeholder="昵称 / 手机号 / 会员号" clearable style="width: 240px" @keyup.enter="loadData" />
        <el-button type="primary" :loading="loading" @click="loadData">搜索</el-button>
        <el-button :loading="loading" @click="resetAndLoad">刷新</el-button>
      </div>
    </div>
    <el-table :data="list" stripe border v-loading="loading">
      <el-table-column label="昵称" min-width="120"><template #default="{ row }">{{ displayName(row) }}</template></el-table-column>
      <el-table-column label="手机号" width="130"><template #default="{ row }">{{ row.phone || row.mobile || '-' }}</template></el-table-column>
      <el-table-column prop="userId" label="会员号" width="150" />
      <el-table-column label="所属场馆" min-width="160"><template #default="{ row }">{{ row.venueName || '-' }}</template></el-table-column>
      <el-table-column label="持卡数" width="90"><template #default="{ row }">{{ row.cardCount ?? 0 }}</template></el-table-column>
      <el-table-column label="注册时间" width="170"><template #default="{ row }">{{ formatTime(row.createdAt || row._createTime) }}</template></el-table-column>
      <el-table-column label="操作" width="220" fixed="right">
        <template #default="{ row }">
          <el-button link type="primary" @click="openCards(row)">查看持卡</el-button>
          <el-button link type="success" @click="openIssue(row)">发卡</el-button>
        </template>
      </el-table-column>
    </el-table>
    <el-dialog v-model="cardsVisible" :title="`持卡列表 - ${displayName(currentUser)}`" width="920px">
      <el-table :data="memberCards" border v-loading="cardsLoading" size="small">
        <el-table-column prop="cardName" label="卡名称" min-width="120" />
        <el-table-column label="类型" width="90"><template #default="{ row }"><el-tag size="small" :type="typeTag(row.type)">{{ typeLabel(row.type) }}</el-tag></template></el-table-column>
        <el-table-column label="场馆" min-width="140"><template #default="{ row }">{{ row.venueName || '-' }}</template></el-table-column>
        <el-table-column label="发卡人" width="100"><template #default="{ row }">{{ row.issuerName || '-' }}</template></el-table-column>
        <el-table-column label="金额" width="90"><template #default="{ row }">{{ row.price != null && row.price !== '' ? row.price + '元' : '-' }}</template></el-table-column>
        <el-table-column label="剩余/总次" width="100"><template #default="{ row }"><span v-if="isTimesLike(row.type)">{{ row.remainingTimes }} / {{ row.totalTimes }}</span><span v-else>-</span></template></el-table-column>
        <el-table-column label="有效期" min-width="160"><template #default="{ row }">{{ row.validFrom || '-' }} ~ {{ row.validTo || '不限' }}</template></el-table-column>
        <el-table-column label="状态" width="90"><template #default="{ row }"><el-tag :type="statusTag(row.status)" size="small">{{ statusLabel(row.status) }}</el-tag></template></el-table-column>
        <el-table-column label="操作" width="160" fixed="right">
          <template #default="{ row }">
            <el-button v-if="canExtendCards && row.status !== 'refunded'" link type="primary" @click="openExtend(row)">延期</el-button>
            <el-button v-if="row.status === 'active'" link type="danger" @click="onRefund(row)">退卡</el-button>
          </template>
        </el-table-column>
      </el-table>
      <div v-if="!cardsLoading && memberCards.length === 0" class="empty">暂无持卡</div>
    </el-dialog>
    <el-dialog v-model="issueVisible" title="给会员发卡" width="520px" destroy-on-close>
      <el-form label-width="100px">
        <el-form-item label="会员"><el-input :model-value="displayName(currentUser)" disabled /></el-form-item>
        <el-form-item label="发卡场馆" required>
          <el-select v-model="issueForm.venueId" placeholder="请选择场馆" style="width: 100%" @change="onVenuePick">
            <el-option v-for="v in venueList" :key="v._id || v.venueId" :label="v.name" :value="v.venueId || v._id" />
          </el-select>
        </el-form-item>
        <el-form-item label="发卡人" required><el-input v-model="issueForm.issuerName" placeholder="前台 / 管理员姓名" /></el-form-item>
        <el-form-item label="选择卡模板" required>
          <el-select v-model="issueForm.templateId" placeholder="请选择" style="width: 100%" @change="onTemplateChange">
            <el-option v-for="t in activeTemplates" :key="t._id" :label="`${t.name}（${typeLabel(t.type)}）`" :value="t._id" />
          </el-select>
        </el-form-item>
        <el-form-item v-if="selectedTemplate" label="卡类型"><el-tag :type="typeTag(selectedTemplate.type)">{{ typeLabel(selectedTemplate.type) }}</el-tag></el-form-item>
        <el-form-item label="实收金额" required>
          <el-input-number v-model="issueForm.price" :min="0" :precision="2" :step="1" />
          <span class="hint">元（本次发卡实际收款，计入营业额）</span>
        </el-form-item>
        <el-form-item v-if="selectedTemplate && isTimesLike(selectedTemplate.type)" label="次数">
          <el-input-number v-model="issueForm.totalTimes" :min="1" />
        </el-form-item>
        <el-form-item label="生效日期"><el-date-picker v-model="issueForm.validFrom" type="date" value-format="YYYY-MM-DD" /></el-form-item>
        <el-form-item label="到期日期"><el-date-picker v-model="issueForm.validTo" type="date" value-format="YYYY-MM-DD" placeholder="可留空" /></el-form-item>
        <el-form-item label="备注"><el-input v-model="issueForm.remark" type="textarea" :rows="2" /></el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="issueVisible = false">取消</el-button>
        <el-button type="primary" :loading="issuing" @click="submitIssue">确认发卡</el-button>
      </template>
    </el-dialog>
    <el-dialog v-model="extendVisible" title="会员卡延期" width="420px" destroy-on-close>
      <el-form label-width="100px">
        <el-form-item label="卡名称"><el-input :model-value="extendCard.cardName" disabled /></el-form-item>
        <el-form-item label="发卡日期"><el-input :model-value="extendCard.validFrom || '-'" disabled /></el-form-item>
        <el-form-item label="当前到期"><el-input :model-value="extendCard.validTo || '不限 / 未设置'" disabled /></el-form-item>
        <el-form-item label="调整天数" required>
          <el-input-number v-model="extendDays" :min="extendMin" :max="extendMax" :step="1" />
          <div class="hint">正数延长，负数缩短{{ isStoreManager ? '（店长限 ±120 天）' : '' }}</div>
        </el-form-item>
        <el-form-item label="调整后"><span :style="extendBeforeIssue ? 'color:#c45656' : ''">{{ previewNewValidTo }}</span></el-form-item>
        <div v-if="extendBeforeIssue" class="err">调整后到期日不能早于发卡日期</div>
      </el-form>
      <template #footer>
        <el-button @click="extendVisible = false">取消</el-button>
        <el-button type="primary" :loading="extending" :disabled="extendBeforeIssue" @click="submitExtend">确认延期</el-button>
      </template>
    </el-dialog>
  </div>
</template>
<script setup>
import { ref, computed, onMounted } from 'vue'
import { ElMessage, ElMessageBox } from 'element-plus'
const list = ref([])
const loading = ref(false)
const keyword = ref('')
const currentUser = ref(null)
const venueList = ref([])
const cardsVisible = ref(false)
const cardsLoading = ref(false)
const memberCards = ref([])
const issueVisible = ref(false)
const issuing = ref(false)
const templates = ref([])
const extendVisible = ref(false)
const extending = ref(false)
const extendCard = ref({})
const extendDays = ref(30)
const rawRole = localStorage.getItem('admin_role') || ''
const adminName = localStorage.getItem('admin_name') || ''
const adminRole = rawRole.toLowerCase()
const isSuperAdmin = ['admin', 'super', 'superadmin', '超级管理员', '管理员'].includes(adminRole) || adminName.includes('超级') || (!rawRole && adminName.includes('管理员'))
const isStoreManager = ['manager', '店长'].includes(adminRole) || adminName.includes('店长')
const canExtendCards = isSuperAdmin || isStoreManager || !rawRole
const extendMin = isStoreManager && !isSuperAdmin ? -120 : -36500
const extendMax = isStoreManager && !isSuperAdmin ? 120 : 36500
const issueForm = ref({ templateId: '', price: 0, totalTimes: 10, validFrom: '', validTo: '', remark: '', venueId: '', venueName: '', issuerName: '' })
const base = import.meta.env.DEV ? '/api' : 'https://cloud1-d3g0pb1qk028e3585-d862bc2-1312769671.ap-shanghai.app.tcloudbase.com'
const activeTemplates = computed(() => templates.value.filter((t) => t.status === 'active'))
const selectedTemplate = computed(() => templates.value.find((t) => t._id === issueForm.value.templateId))
function displayName(u) { if (!u) return '-'; return u.nickName || u.nickname || u.name || u.userId || u._id || '-' }
function isTimesLike(t) { return t === 'times' || t === 'coach' || t === 'group' }
function typeLabel(t) { return { times: '次卡', coach: '教练卡', group: '团课', time: '时间卡' }[t] || t }
function typeTag(t) { return { times: 'success', coach: 'warning', group: 'danger', time: 'primary' }[t] || 'info' }
function statusLabel(s) { return { active: '有效', expired: '已过期', used_up: '已用完', refunded: '已退卡' }[s] || s }
function statusTag(s) { return { active: 'success', expired: 'info', used_up: 'warning', refunded: 'danger' }[s] || 'info' }
function formatTime(t) { if (!t) return '-'; if (typeof t === 'number') return new Date(t).toLocaleString(); return String(t).slice(0, 19).replace('T', ' ') }
async function post(path, body = {}) {
  const res = await fetch(base + path, { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify(body) })
  const data = await res.json()
  return data.body ? (typeof data.body === 'string' ? JSON.parse(data.body) : data.body) : data
}
async function loadVenues() { try { venueList.value = (await post('/adminGetVenues', {})).list || [] } catch (e) { venueList.value = [] } }
async function loadData() {
  loading.value = true
  try {
    const result = await post('/adminGetUsers', { keyword: keyword.value.trim() })
    if (!result.ok) { ElMessage.error(result.msg || '加载失败'); return }
    list.value = result.list || []
  } catch (e) { ElMessage.error(e.message || '网络错误') } finally { loading.value = false }
}
function resetAndLoad() { keyword.value = ''; loadData() }
async function loadTemplates() { try { templates.value = (await post('/adminGetCardTemplates', {})).list || [] } catch (e) { console.error(e) } }
async function openCards(row) {
  currentUser.value = row; cardsVisible.value = true; cardsLoading.value = true; memberCards.value = []
  try { memberCards.value = (await post('/adminGetMemberCards', { userId: row._id, openid: row._openid || '' })).list || [] }
  catch (e) { ElMessage.error(e.message || '加载持卡失败') } finally { cardsLoading.value = false }
}
function addDaysYmd(ymd, days) {
  const base = ymd && /^\d{4}-\d{2}-\d{2}/.test(String(ymd)) ? String(ymd).slice(0, 10) : new Date().toISOString().slice(0, 10)
  const d = new Date(base.replace(/-/g, '/') + ' 00:00:00')
  d.setDate(d.getDate() + Number(days || 0))
  return `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, '0')}-${String(d.getDate()).padStart(2, '0')}`
}
const previewNewValidTo = computed(() => { if (!extendVisible.value) return '-'; return addDaysYmd(extendCard.value.validTo, extendDays.value) })
const extendBeforeIssue = computed(() => {
  const from = extendCard.value.validFrom
  if (!from || !extendVisible.value) return false
  return previewNewValidTo.value < String(from).slice(0, 10)
})
function openExtend(card) {
  if (!canExtendCards) { ElMessage.warning('当前账号无延期权限'); return }
  extendCard.value = card; extendDays.value = 30; extendVisible.value = true
}
async function submitExtend() {
  const days = Number(extendDays.value)
  if (!days) { ElMessage.warning('请填写非 0 的天数'); return }
  if (isStoreManager && !isSuperAdmin && (days < -120 || days > 120)) { ElMessage.warning('店长只能调整 ±120 天以内'); return }
  if (extendBeforeIssue.value) {
    ElMessage.error('调整后到期日不能早于发卡日期 ' + (extendCard.value.validFrom || ''))
    return
  }
  extending.value = true
  try {
    const result = await post('/adminExtendCard', {
      cardId: extendCard.value._id,
      days,
      adminId: localStorage.getItem('admin_token') || '',
      role: localStorage.getItem('admin_role') || 'admin',
      operatorName: localStorage.getItem('admin_name') || '管理员'
    })
    if (!result.ok) { ElMessage.error(result.msg || '延期失败'); return }
    ElMessage.success('已调整到期日：' + (result.validTo || previewNewValidTo.value))
    extendVisible.value = false
    if (currentUser.value) openCards(currentUser.value)
  } catch (e) { ElMessage.error(e.message || '网络错误，请先部署 adminExtendCard') } finally { extending.value = false }
}
async function onRefund(card) {
  try {
    await ElMessageBox.confirm(`确定退卡「${card.cardName}」？退卡后不可再用于预约。`, '退卡确认', { type: 'warning', confirmButtonText: '确认退卡' })
    const result = await post('/adminRefundCard', { cardId: card._id, operatorName: localStorage.getItem('admin_name') || '管理员' })
    if (!result.ok) { ElMessage.error(result.msg || '退卡失败'); return }
    ElMessage.success('已退卡')
    if (currentUser.value) openCards(currentUser.value)
    loadData()
  } catch (e) { if (e !== 'cancel') ElMessage.error(e.message || '退卡失败') }
}
function onVenuePick(id) { const v = venueList.value.find((x) => (x.venueId || x._id) === id); issueForm.value.venueName = v ? v.name : '' }
function openIssue(row) {
  currentUser.value = row
  const vid = row.venueId || localStorage.getItem('venue_id') || ''
  const vname = row.venueName || localStorage.getItem('venue_name') || (venueList.value.find((x) => (x.venueId || x._id) === vid) || {}).name || ''
  issueForm.value = { templateId: '', price: 0, totalTimes: 10, validFrom: new Date().toISOString().slice(0, 10), validTo: '', remark: '', venueId: vid, venueName: vname, issuerName: localStorage.getItem('admin_name') || '' }
  issueVisible.value = true
}
function onTemplateChange(id) {
  const t = templates.value.find((x) => x._id === id)
  if (t) {
    issueForm.value.totalTimes = t.totalTimes || 10
    issueForm.value.price = 0
    if (t.durationDays && t.durationDays > 0) { const d = new Date(); d.setDate(d.getDate() + t.durationDays); issueForm.value.validTo = d.toISOString().slice(0, 10) } else { issueForm.value.validTo = '' }
  }
}
async function submitIssue() {
  if (!issueForm.value.templateId) { ElMessage.warning('请选择卡模板'); return }
  if (!issueForm.value.venueId) { ElMessage.warning('请选择发卡场馆'); return }
  if (!String(issueForm.value.issuerName || '').trim()) { ElMessage.warning('请填写发卡人'); return }
  if (!currentUser.value?._id) { ElMessage.warning('用户信息异常'); return }
  if (issueForm.value.price === null || issueForm.value.price === undefined) { ElMessage.warning('请填写实收金额'); return }
  const tpl = selectedTemplate.value
  if (tpl && isTimesLike(tpl.type) && !issueForm.value.totalTimes) { ElMessage.warning('请填写次数'); return }
  issuing.value = true
  try {
    const result = await post('/adminIssueCard', { userId: currentUser.value._id, openid: currentUser.value._openid || '', userName: displayName(currentUser.value), templateId: issueForm.value.templateId, totalTimes: issueForm.value.totalTimes, price: Number(issueForm.value.price) || 0, validFrom: issueForm.value.validFrom, validTo: issueForm.value.validTo || null, remark: issueForm.value.remark, venueId: issueForm.value.venueId, venueName: issueForm.value.venueName, issuerName: String(issueForm.value.issuerName).trim() })
    if (!result.ok) { ElMessage.error(result.msg || '发卡失败'); return }
    ElMessage.success('发卡成功'); issueVisible.value = false; loadData()
  } catch (e) { ElMessage.error(e.message || '网络错误，请检查 adminIssueCard 云函数') } finally { issuing.value = false }
}
onMounted(() => { loadVenues(); loadData(); loadTemplates() })
</script>
<style scoped>
.page-header { display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px; flex-wrap: wrap; gap: 12px; }
h2 { margin: 0; font-size: 20px; }
.toolbar { display: flex; gap: 8px; align-items: center; }
.empty { text-align: center; color: #999; padding: 24px; }
.muted { color: #ccc; }
.hint { margin-left: 8px; color: #999; font-size: 12px; }
.err { color: #c45656; font-size: 13px; margin: 0 0 8px 100px; }
</style>
