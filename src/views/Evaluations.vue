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
      <el-tab-pane label="排名" name="rank">
        <el-table :data="ranking" stripe border>
          <el-table-column prop="rank" label="排名" width="70" />
          <el-table-column prop="user_name" label="学员" width="150" />
          <el-table-column prop="best_total" label="最高总分" width="100" />
          <el-table-column prop="best_forehand" label="正手" width="70" />
          <el-table-column prop="best_backhand" label="反手" width="70" />
          <el-table-column prop="best_serve" label="发球" width="70" />
        </el-table>
      </el-tab-pane>
    </el-tabs>

    <el-dialog v-model="visible" title="学员评分" width="520px">
      <el-form label-width="80px">
        <el-form-item label="学员">
          <el-select v-model="form.userId" filterable remote :remote-method="searchUser" placeholder="搜索学员">
            <el-option v-for="u in users" :key="u.id" :label="u.nick_name || u.phone" :value="u.id" />
          </el-select>
        </el-form-item>
        <el-form-item label="教练">
          <el-select v-model="form.coachId" placeholder="选择教练">
            <el-option v-for="c in coaches" :key="c.id" :label="c.name" :value="c.id" />
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
const ranking = ref([])
const loading = ref(false)
const visible = ref(false)
const saving = ref(false)
const users = ref([])
const coaches = ref([])
const form = ref({ forehand: 50, backhand: 50, serve: 50, volley: 50, slice: 50, smash: 50, dropShot: 50 })

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
  if (r.ok) coaches.value = r.list || []
}
async function searchUser(q) {
  if (!q) return
  const r = await post('/adminSearchUsers', { keyword: q })
  if (r.ok) users.value = r.list || []
}
function openScore() {
  form.value = { forehand: 50, backhand: 50, serve: 50, volley: 50, slice: 50, smash: 50, dropShot: 50, remark: '' }
  visible.value = true
}
async function save() {
  if (!form.value.userId) { ElMessage.warning('请选择学员'); return }
  const u = users.value.find(x => x.id === form.value.userId)
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
  ElMessage.success('已评分，总分 ' + r.total + (r.earned && r.earned.length ? '，获得成就：' + r.earned.join('、') : ''))
  visible.value = false
  fetchList()
  fetchRanking()
}
onMounted(() => { fetchList(); fetchRanking(); loadCoaches() })
</script>
<style scoped>
.page-header { display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px; }
h2 { margin: 0; font-size: 20px; color: #1a5c3a; }
</style>
