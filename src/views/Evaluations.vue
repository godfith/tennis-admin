<template>
  <div class="page">
    <div class="page-header">
      <h2>学员评测</h2>
      <el-button type="primary" @click="openScore()">评分</el-button>
    </div>
    <el-tabs v-model="tab">
      <el-tab-pane label="评测记录" name="list">
        <el-table :data="list" stripe border v-loading="loading">
          <el-table-column prop="user_name" label="学员" width="120" />
          <el-table-column prop="coach_name" label="教练" width="100" />
          <el-table-column prop="forehand" label="正手" width="70" />
          <el-table-column prop="backhand" label="反手" width="70" />
          <el-table-column prop="serve" label="发球" width="70" />
          <el-table-column prop="volley" label="截击" width="70" />
          <el-table-column prop="slice" label="切削" width="70" />
          <el-table-column prop="smash" label="高压" width="70" />
          <el-table-column prop="drop_shot" label="放小球" width="80" />
          <el-table-column prop="total" label="总分" width="80" />
          <el-table-column prop="created_at" label="时间" width="160" />
        </el-table>
      </el-tab-pane>
      <el-tab-pane label="店内排名" name="store">
        <el-select v-model="rankVenue" placeholder="选择门店" @change="fetchStoreRank" style="margin-bottom:12px">
          <el-option v-for="v in venues.filter(x => x.id)" :key="v.id" :label="v.name" :value="v.id" />
        </el-select>
        <el-table :data="storeRank" stripe border>
          <el-table-column prop="rank" label="排名" width="70" />
          <el-table-column prop="user_name" label="学员" width="150" />
          <el-table-column prop="best_total" label="最高总分" width="100" />
        </el-table>
      </el-tab-pane>
      <el-tab-pane label="总排名" name="all">
        <el-table :data="allRank" stripe border>
          <el-table-column prop="rank" label="排名" width="70" />
          <el-table-column prop="user_name" label="学员" width="150" />
          <el-table-column prop="venue_id" label="门店" width="150" />
          <el-table-column prop="best_total" label="最高总分" width="100" />
        </el-table>
      </el-tab-pane>
    </el-tabs>

    <el-dialog v-model="chartVisible" title="评测结果" width="480px">
      <div style="text-align:center">
        <canvas ref="radarCanvas" width="360" height="320"></canvas>
        <div style="font-size:24px;font-weight:700;color:#1a5c3a;margin-top:8px">总分 {{ chartTotal }}</div>
      </div>
    </el-dialog>
    <el-dialog v-model="visible" title="学员评分" width="520px">
      <el-form label-width="80px">
        <el-form-item label="学员">
          <el-select v-model="form.userId" filterable remote :remote-method="searchUsers" :loading="userLoading" placeholder="输入姓名或手机号搜索" style="width:100%">
            <el-option v-for="u in searchResults" :key="u.id" :label="(u.nick_name || u.nickName || '未命名') + ' ' + (u.phone || '')" :value="u.id" />
          </el-select>
        </el-form-item>
        <el-form-item label="教练">
          <el-select v-model="form.coachId" placeholder="选择教练">
            <el-option v-for="c in coaches.filter(x => x.id)" :key="c.id" :label="c.name" :value="c.id" />
          </el-select>
        </el-form-item>
        <el-form-item label="正手"><el-slider v-model="form.forehand" :max="100" show-input /></el-form-item>
        <el-form-item label="反手"><el-slider v-model="form.backhand" :max="100" show-input /></el-form-item>
        <el-form-item label="发球"><el-slider v-model="form.serve" :max="100" show-input /></el-form-item>
        <el-form-item label="截击"><el-slider v-model="form.volley" :max="100" show-input /></el-form-item>
        <el-form-item label="切削球"><el-slider v-model="form.slice" :max="100" show-input /></el-form-item>
        <el-form-item label="高压"><el-slider v-model="form.smash" :max="100" show-input /></el-form-item>
        <el-form-item label="放小球"><el-slider v-model="form.dropShot" :max="100" show-input /></el-form-item>
        <el-form-item label="备注"><el-input v-model="form.remark" type="textarea" /></el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="visible = false">取消</el-button>
        <el-button type="primary" :loading="saving" @click="save">提交</el-button>
      </template>
    </el-dialog>
  </div>
</template>
<script setup>
import { ref, onMounted } from 'vue'
import { ElMessage } from 'element-plus'

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

const tab = ref('list')
const list = ref([])
const rankVenue = ref('')
const storeRank = ref([])
const allRank = ref([])
const venues = ref([])

async function fetchStoreRank() {
  if (!rankVenue.value) return
  const r = await post('/adminEvaluations', { action: 'ranking', venueId: rankVenue.value })
  if (r.ok) storeRank.value = r.list || []
}
async function fetchAllRank() {
  const r = await post('/adminEvaluations', { action: 'ranking' })
  if (r.ok) allRank.value = r.list || []
}
async function loadVenues() {
  const r = await post('/adminGetVenues', {})
  if (r.ok) venues.value = (r.list || []).filter(v => v.id)
}
const loading = ref(false)
const visible = ref(false)
const saving = ref(false)
const users = ref([])
const coaches = ref([])
const form = ref({ forehand: 50, backhand: 50, serve: 50, volley: 50, slice: 50, smash: 50, dropShot: 50, remark: '' })
const chartVisible = ref(false)
const chartTotal = ref(0)
const radarCanvas = ref(null)

function drawRadar(scores) {
  const canvas = radarCanvas.value
  if (!canvas) return
  const ctx = canvas.getContext('2d')
  const w = canvas.width, h = canvas.height
  const cx = w / 2, cy = h / 2 + 10
  const r = 110
  const labels = ['正手', '反手', '发球', '截击', '切削', '高压', '放小球']
  const keys = ['forehand', 'backhand', 'serve', 'volley', 'slice', 'smash', 'dropShot']
  const n = 7
  ctx.clearRect(0, 0, w, h)
  ctx.strokeStyle = '#ddd'
  for (let i = 1; i <= 5; i++) {
    ctx.beginPath()
    for (let j = 0; j < n; j++) {
      const angle = (Math.PI * 2 / n) * j - Math.PI / 2
      const x = cx + Math.cos(angle) * r * i / 5
      const y = cy + Math.sin(angle) * r * i / 5
      j === 0 ? ctx.moveTo(x, y) : ctx.lineTo(x, y)
    }
    ctx.closePath()
    ctx.stroke()
  }
  ctx.strokeStyle = '#aaa'
  for (let j = 0; j < n; j++) {
    const angle = (Math.PI * 2 / n) * j - Math.PI / 2
    ctx.beginPath()
    ctx.moveTo(cx, cy)
    ctx.lineTo(cx + Math.cos(angle) * r, cy + Math.sin(angle) * r)
    ctx.stroke()
  }
  ctx.beginPath()
  ctx.fillStyle = 'rgba(26,92,58,0.3)'
  ctx.strokeStyle = '#1a5c3a'
  ctx.lineWidth = 2
  for (let j = 0; j < n; j++) {
    const angle = (Math.PI * 2 / n) * j - Math.PI / 2
    const val = (scores[keys[j]] || 0) / 100
    const x = cx + Math.cos(angle) * r * val
    const y = cy + Math.sin(angle) * r * val
    j === 0 ? ctx.moveTo(x, y) : ctx.lineTo(x, y)
  }
  ctx.closePath()
  ctx.fill()
  ctx.stroke()
  ctx.fillStyle = '#333'
  ctx.font = '13px sans-serif'
  ctx.textAlign = 'center'
  for (let j = 0; j < n; j++) {
    const angle = (Math.PI * 2 / n) * j - Math.PI / 2
    const x = cx + Math.cos(angle) * (r + 22)
    const y = cy + Math.sin(angle) * (r + 22)
    ctx.fillText(labels[j], x, y + 4)
    ctx.fillStyle = '#1a5c3a'
    ctx.font = 'bold 12px sans-serif'
    ctx.fillText(scores[keys[j]] || 0, x, y + 18)
    ctx.fillStyle = '#333'
    ctx.font = '13px sans-serif'
  }
}

async function fetchList() {
  loading.value = true
  const r = await post('/adminEvaluations', { action: 'list' })
  loading.value = false
  if (r.ok) list.value = r.list || []
}
async function fetchRanking() {
  const r = await post('/adminEvaluations', { action: 'ranking' })
  if (r.ok) ranking.value = r.list || []
}
async function loadCoaches() {
  const r = await post('/adminGetCoaches', {})
  if (r.ok) coaches.value = (r.list || []).filter(c => c.id)
}
const searchResults = ref([])
const userLoading = ref(false)
async function searchUsers(q) {
  if (!q || q.length < 1) { searchResults.value = []; return }
  userLoading.value = true
  const r = await post('/adminSearchUsers', { keyword: q })
  userLoading.value = false
  if (r.ok) searchResults.value = (r.list || []).filter(u => u.id)
}
function openScore() {
  form.value = { forehand: 50, backhand: 50, serve: 50, volley: 50, slice: 50, smash: 50, dropShot: 50, remark: '' }
  visible.value = true
}
async function save() {
  if (!form.value.userId) { ElMessage.warning('请选择学员'); return }
  const u = searchResults.value.find(x => x.id === form.value.userId)
  const c = coaches.value.find(x => x.id === form.value.coachId)
  saving.value = true
  const r = await post('/adminEvaluations', {
    action: 'save',
    userId: form.value.userId,
    userName: u ? (u.nick_name || u.phone) : '',
    avatar: u ? u.avatar_url : '',
    coachId: form.value.coachId,
    coachName: c ? c.name : '',
    ...form.value
  })
  saving.value = false
  if (!r.ok) { ElMessage.error(r.msg || '保存失败'); return }
  const total = (form.value.forehand || 0) + (form.value.backhand || 0) + (form.value.serve || 0) + (form.value.volley || 0) + (form.value.slice || 0) + (form.value.smash || 0) + (form.value.dropShot || 0)
  chartTotal.value = total
  visible.value = false
  chartVisible.value = true
  setTimeout(() => drawRadar(form.value), 100)
  fetchList()
  fetchAllRank()
}
onMounted(() => { fetchList(); fetchAllRank(); loadCoaches(); loadVenues() })
</script>
<style scoped>
.page-header { display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px; }
h2 { margin: 0; font-size: 20px; color: #1a5c3a; }
</style>
