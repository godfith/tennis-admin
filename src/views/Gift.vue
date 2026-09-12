<template>
  <div class="page">
    <div class="page-header">
      <div>
        <h2>体验发放</h2>
        <p class="sub">给新客或活动用户开通体验次卡，或直接报进指定团课。记 0 元，不计入营业额。仅管理员可用。</p>
      </div>
    </div>
    <el-alert v-if="!canGift" title="当前账号无权发放体验，请用管理员账号登录。" type="warning" show-icon :closable="false" style="margin-bottom: 16px" />
    <el-row :gutter="16">
      <el-col :xs="24" :md="11">
        <div class="card">
          <div class="card-title">发放</div>
          <el-radio-group v-model="mode" style="margin-bottom: 14px">
            <el-radio-button value="new">发体验次卡</el-radio-button>
            <el-radio-button value="class">报体验课</el-radio-button>
            <el-radio-button value="add">已有卡加次</el-radio-button>
          </el-radio-group>
          <el-form label-width="96px">
            <el-form-item label="查找用户" required>
              <el-input v-model="keyword" placeholder="昵称 / 手机，多个用空格或逗号隔开" clearable @keyup.enter="searchUsers">
                <template #append>
                  <el-button :loading="searching" @click="searchUsers">搜索</el-button>
                </template>
              </el-input>
            </el-form-item>
            <el-form-item v-if="hits.length" label="搜索结果">
              <div class="hit-tools">
                <el-button link type="primary" @click="pickAllHits">全选本页 {{ hits.length }} 人</el-button>
              </div>
              <el-checkbox-group v-model="hitChecks" class="hit-list" @change="onHitCheck">
                <el-checkbox v-for="u in hits" :key="u._id" :value="u._id">{{ displayName(u) }} · {{ u.phone || '无手机' }}</el-checkbox>
              </el-checkbox-group>
            </el-form-item>
            <el-form-item label="已选">
              <div v-if="!picked.length" class="muted">还没选人，可多次搜索往里加</div>
              <div v-else class="picked">
                <el-tag v-for="u in picked" :key="u._id" closable style="margin: 0 6px 6px 0" @close="removePicked(u._id)">{{ displayName(u) }}</el-tag>
                <el-button link type="danger" @click="picked = []; hitChecks = []">清空</el-button>
              </div>
              <div class="hint">已选 {{ picked.length }} 人，确认后会一次性发放</div>
            </el-form-item>
            <template v-if="mode === 'new'">
              <el-form-item label="体验类型" required>
                <el-select v-model="form.type" style="width: 100%">
                  <el-option label="场地体验次" value="times" />
                  <el-option label="团课体验次" value="group" />
                  <el-option label="私教体验次" value="coach" />
                </el-select>
              </el-form-item>
              <el-form-item label="次数" required><el-input-number v-model="form.times" :min="1" :max="99" /></el-form-item>
              <el-form-item label="场馆" required>
                <el-select v-model="form.venueId" style="width: 100%" @change="onVenue">
                  <el-option v-for="v in venueList" :key="v._id || v.venueId" :label="v.name" :value="v.venueId || v._id" />
                </el-select>
              </el-form-item>
              <el-form-item label="名称"><el-input v-model="form.cardName" :placeholder="defaultName" /></el-form-item>
              <el-form-item label="生效"><el-date-picker v-model="form.validFrom" type="date" value-format="YYYY-MM-DD" /></el-form-item>
              <el-form-item label="到期"><el-date-picker v-model="form.validTo" type="date" value-format="YYYY-MM-DD" placeholder="可留空" /></el-form-item>
            </template>
            <template v-else-if="mode === 'class'">
              <el-form-item label="场馆">
                <el-select v-model="form.venueId" style="width: 100%" @change="onVenue">
                  <el-option v-for="v in venueList" :key="v._id || v.venueId" :label="v.name" :value="v.venueId || v._id" />
                </el-select>
              </el-form-item>
              <el-form-item label="体验课" required>
                <el-select v-model="form.groupClassId" placeholder="选择一节开放中的团课" style="width: 100%" filterable>
                  <el-option v-for="g in classes" :key="g._id" :label="`${g.date} ${g.time} ${g.name}（${g.enrolled}/${g.capacity}）`" :value="g._id" :disabled="g.enrolled >= g.capacity" />
                </el-select>
              </el-form-item>
            </template>
            <template v-else>
              <el-form-item label="已有卡" required>
                <el-select v-model="form.cardId" placeholder="加次一次只能选一个人" style="width: 100%">
                  <el-option v-for="c in userCards" :key="c._id" :label="`${c.cardName}（剩${c.remainingTimes}/${c.totalTimes}）`" :value="c._id" />
                </el-select>
              </el-form-item>
              <el-form-item label="增加次数" required><el-input-number v-model="form.times" :min="1" :max="99" /></el-form-item>
            </template>
            <el-form-item label="备注"><el-input v-model="form.remark" type="textarea" :rows="2" placeholder="如：新客体验 / 活动发放" /></el-form-item>
            <el-form-item>
              <el-button type="primary" :loading="saving" :disabled="!canGift" @click="submit">确认发放（{{ picked.length }} 人）</el-button>
            </el-form-item>
          </el-form>
        </div>
      </el-col>
      <el-col :xs="24" :md="13">
        <div class="card">
          <div class="card-title">发放记录</div>
          <el-table :data="history" border size="small" v-loading="histLoading">
            <el-table-column prop="userName" label="用户" width="100" />
            <el-table-column prop="cardName" label="内容" min-width="140" />
            <el-table-column label="类型" width="80"><template #default="{ row }">{{ typeLabel(row.type) }}</template></el-table-column>
            <el-table-column label="次数" width="90"><template #default="{ row }">{{ row.remainingTimes }}/{{ row.totalTimes }}</template></el-table-column>
            <el-table-column prop="venueName" label="场馆" min-width="120" />
            <el-table-column label="有效期" min-width="160"><template #default="{ row }">{{ row.validFrom || '-' }} ~ {{ row.validTo || '不限' }}</template></el-table-column>
            <el-table-column prop="issuerName" label="操作人" width="90" />
            <el-table-column prop="remark" label="备注" min-width="120" />
          </el-table>
        </div>
      </el-col>
    </el-row>
  </div>
</template>
<script setup>
import { ref, computed, watch, onMounted } from 'vue'
import { ElMessage } from 'element-plus'
import { can } from '../utils/auth'
const canGift = can('gift')
const keyword = ref('')
const searching = ref(false)
const hits = ref([])
const hitChecks = ref([])
const picked = ref([])
const mode = ref('new')
const venueList = ref([])
const userCards = ref([])
const classes = ref([])
const history = ref([])
const histLoading = ref(false)
const saving = ref(false)
const form = ref({ type: 'times', times: 1, venueId: localStorage.getItem('venue_id') || '', venueName: localStorage.getItem('venue_name') || '', cardName: '', cardId: '', groupClassId: '', validFrom: new Date().toISOString().slice(0, 10), validTo: '', remark: '' })
const base = import.meta.env.DEV ? '/api' : 'https://cloud1-d3g0pb1qk028e3585-d862bc2-1312769671.ap-shanghai.app.tcloudbase.com'
const defaultName = computed(() => {
  const map = { times: '场地体验', group: '团课体验', coach: '私教体验' }
  return (map[form.value.type] || '体验') + form.value.times + '次'
})
function displayName(u) { return (u && (u.nickName || u.userId || u._id)) || '-' }
function typeLabel(t) { return { times: '场地', group: '团课', coach: '私教', time: '时间卡' }[t] || t }
async function post(path, body = {}) {
  const res = await fetch(base + path, { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify(body) })
  const data = await res.json()
  return data.body ? (typeof data.body === 'string' ? JSON.parse(data.body) : data.body) : data
}
function authBody(extra) {
  return Object.assign({ role: localStorage.getItem('admin_role') || 'admin', operatorName: localStorage.getItem('admin_name') || '管理员' }, extra)
}
function addPicked(list) {
  const map = {}
  picked.value.forEach((u) => { map[u._id] = u })
  ;(list || []).forEach((u) => { map[u._id] = u })
  picked.value = Object.keys(map).map((k) => map[k])
}
async function searchUsers() {
  const raw = keyword.value.trim()
  if (!raw) { ElMessage.warning('请输入昵称或手机号'); return }
  const parts = raw.split(/[\s,，;；]+/).filter(Boolean)
  searching.value = true
  try {
    const found = []
    for (const kw of parts) {
      const result = await post('/adminGetUsers', { action: 'list', keyword: kw })
      ;(result.list || []).forEach((u) => found.push(u))
    }
    const uniq = {}
    found.forEach((u) => { uniq[u._id] = u })
    hits.value = Object.keys(uniq).map((k) => uniq[k])
    hitChecks.value = []
    if (!hits.value.length) ElMessage.info('没找到用户')
  } catch (e) {
    ElMessage.error(e.message || '搜索失败')
  } finally {
    searching.value = false
  }
}
function pickAllHits() {
  hitChecks.value = hits.value.map((u) => u._id)
  addPicked(hits.value)
}
function onHitCheck(ids) {
  addPicked(hits.value.filter((u) => new Set(ids).has(u._id)))
}
function removePicked(id) {
  picked.value = picked.value.filter((u) => u._id !== id)
  hitChecks.value = hitChecks.value.filter((x) => x !== id)
}
function onVenue(id) {
  const v = venueList.value.find((x) => (x.venueId || x._id) === id)
  form.value.venueName = v ? v.name : ''
  if (mode.value === 'class') loadClasses()
}
watch(picked, async (list) => {
  form.value.cardId = ''
  userCards.value = []
  if (mode.value !== 'add' || list.length !== 1) return
  userCards.value = (await post('/adminGift', authBody({ action: 'userCards', userId: list[0]._id }))).list || []
})
watch(mode, () => {
  form.value.cardId = ''
  userCards.value = []
  if (mode.value === 'class') loadClasses()
})
let searchTimer = null
watch(keyword, (val) => {
  if (searchTimer) clearTimeout(searchTimer)
  if (!String(val || '').trim()) return
  searchTimer = setTimeout(() => { searchUsers() }, 400)
})
async function loadClasses() {
  try { classes.value = (await post('/adminGift', authBody({ action: 'classes', venueId: form.value.venueId }))).list || [] } catch (e) { classes.value = [] }
}
async function loadHistory() {
  histLoading.value = true
  try { history.value = (await post('/adminGift', authBody({ action: 'list' }))).list || [] } catch (e) { history.value = [] }
  finally { histLoading.value = false }
}
async function submit() {
  if (!canGift) { ElMessage.warning('仅管理员可发放'); return }
  if (!picked.value.length) { ElMessage.warning('请先搜索并选人'); return }
  saving.value = true
  try {
    let result
    const users = picked.value.map((u) => ({ _id: u._id, userId: u._id, nickName: displayName(u), openid: u._openid || '', phone: u.phone }))
    if (mode.value === 'add') {
      if (picked.value.length !== 1) { ElMessage.warning('给已有卡加次一次只能选一个人'); return }
      if (!form.value.cardId) { ElMessage.warning('请选择要加次的卡'); return }
      result = await post('/adminGift', authBody({ action: 'addTimes', cardId: form.value.cardId, times: form.value.times, remark: form.value.remark }))
    } else if (mode.value === 'class') {
      if (!form.value.groupClassId) { ElMessage.warning('请选择体验课'); return }
      result = await post('/adminGift', authBody({ action: 'trialClass', groupClassId: form.value.groupClassId, remark: form.value.remark || '体验课', users }))
    } else {
      if (!form.value.venueId) { ElMessage.warning('请选择场馆'); return }
      result = await post('/adminGift', authBody({ action: 'gift', type: form.value.type, times: form.value.times, venueId: form.value.venueId, venueName: form.value.venueName, cardName: form.value.cardName || defaultName.value, validFrom: form.value.validFrom, validTo: form.value.validTo || null, remark: form.value.remark, users }))
    }
    if (!result.ok) { ElMessage.error(result.msg || '发放失败'); return }
    const failN = (result.fail && result.fail.length) || 0
    if (failN) ElMessage.warning('成功 ' + (result.count || 0) + ' 人，未成功：' + result.fail.join('；'))
    else ElMessage.success(mode.value === 'add' ? '已加次' : '已发放 ' + (result.count || picked.value.length) + ' 人')
    picked.value = []
    hitChecks.value = []
    form.value.remark = ''
    loadHistory()
    if (mode.value === 'class') loadClasses()
  } catch (e) {
    ElMessage.error(e.message || '请先部署 adminGift 云函数')
  } finally {
    saving.value = false
  }
}
onMounted(async () => {
  try {
    venueList.value = (await post('/adminGetVenues', {})).list || []
    if (!form.value.venueId && venueList.value[0]) {
      form.value.venueId = venueList.value[0].venueId || venueList.value[0]._id
      form.value.venueName = venueList.value[0].name
    }
  } catch (e) {}
  loadHistory()
})
</script>
<style scoped>
.page-header { margin-bottom: 16px; }
h2 { margin: 0; font-size: 20px; color: #1a5c3a; }
.sub { margin: 4px 0 0; color: #909399; font-size: 13px; }
.card { background: #fff; border-radius: 10px; padding: 16px; margin-bottom: 16px; }
.card-title { font-weight: 700; margin-bottom: 12px; }
.hit-list { display: flex; flex-direction: column; gap: 6px; max-height: 160px; overflow: auto; }
.hit-tools { margin-bottom: 4px; }
.picked { line-height: 1.6; }
.muted { color: #bbb; }
.hint { color: #909399; font-size: 12px; margin-top: 4px; }
</style>
