<template>
  <div class="page">
    <div class="page-header">
      <div>
        <h2>场地时间</h2>
        <p class="sub">按场馆、按星期配置可订时段。保存后订场率、价格表会按这里的时段显示。午休或不开放的小时不要勾选即可。</p>
      </div>
      <div class="toolbar">
        <el-button :loading="loading" @click="load">刷新</el-button>
        <el-button type="primary" :loading="saving" @click="save">保存时段</el-button>
      </div>
    </div>

    <div class="card filters">
      <div class="filter-row">
        <span class="label">保存到星期</span>
        <el-checkbox-group v-model="applyWeekdays">
          <el-checkbox :value="1">一</el-checkbox>
          <el-checkbox :value="2">二</el-checkbox>
          <el-checkbox :value="3">三</el-checkbox>
          <el-checkbox :value="4">四</el-checkbox>
          <el-checkbox :value="5">五</el-checkbox>
          <el-checkbox :value="6">六</el-checkbox>
          <el-checkbox :value="7">日</el-checkbox>
        </el-checkbox-group>
        <el-button-group>
          <el-button size="small" @click="applyWeekdays = [1,2,3,4,5]">工作日</el-button>
          <el-button size="small" @click="applyWeekdays = [6,7]">周末</el-button>
          <el-button size="small" @click="applyWeekdays = [1,2,3,4,5,6,7]">全周</el-button>
        </el-button-group>
      </div>
      <div class="filter-row">
        <span class="label">预览星期</span>
        <el-radio-group v-model="previewWeekday" size="small" @change="applyPreview">
          <el-radio-button :value="1">一</el-radio-button>
          <el-radio-button :value="2">二</el-radio-button>
          <el-radio-button :value="3">三</el-radio-button>
          <el-radio-button :value="4">四</el-radio-button>
          <el-radio-button :value="5">五</el-radio-button>
          <el-radio-button :value="6">六</el-radio-button>
          <el-radio-button :value="7">日</el-radio-button>
        </el-radio-group>
      </div>
    </div>

    <div class="card">
      <div class="gen">
        <span class="batch-label">快速生成</span>
        <span class="mini">开始</span>
        <el-select v-model="genStart" style="width: 110px">
          <el-option v-for="h in hourOptions" :key="'s'+h" :label="h" :value="h" />
        </el-select>
        <span class="mini">结束</span>
        <el-select v-model="genEnd" style="width: 110px">
          <el-option v-for="h in hourOptions" :key="'e'+h" :label="h" :value="h" />
        </el-select>
        <span class="mini">跳过</span>
        <el-select v-model="genSkipStart" clearable placeholder="午休起" style="width: 110px">
          <el-option v-for="h in hourOptions" :key="'ss'+h" :label="h" :value="h" />
        </el-select>
        <span class="mini">至</span>
        <el-select v-model="genSkipEnd" clearable placeholder="午休止" style="width: 110px">
          <el-option v-for="h in hourOptions" :key="'se'+h" :label="h" :value="h" />
        </el-select>
        <el-button type="success" plain @click="generate">生成并勾选</el-button>
      </div>
      <p class="hint">例如开始 08:00、结束 21:00、跳过 12:00–14:00，会生成现在这套 11 个时段。以后要开到 22:00，把结束改成 22:00 再生成即可。</p>
    </div>

    <div class="card" v-loading="loading">
      <div class="slot-head">
        <span class="batch-label">开放时段（{{ selected.length }}）</span>
        <el-button link type="primary" @click="selectAll">全选候选</el-button>
        <el-button link @click="selected = []">清空</el-button>
      </div>
      <el-checkbox-group v-model="selected" class="slot-group">
        <el-checkbox v-for="t in candidates" :key="t" :value="t" border class="slot-item">{{ t }}</el-checkbox>
      </el-checkbox-group>
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from 'vue'
import { ElMessage } from 'element-plus'

const hourOptions = []
for (let h = 6; h <= 23; h++) {
  hourOptions.push((h < 10 ? '0' : '') + h + ':00')
}

const loading = ref(false)
const saving = ref(false)
const previewWeekday = ref(1)
const applyWeekdays = ref([1, 2, 3, 4, 5, 6, 7])
const genStart = ref('08:00')
const genEnd = ref('21:00')
const genSkipStart = ref('12:00')
const genSkipEnd = ref('14:00')
const selected = ref([])
const candidates = ref([])
const byWeekday = ref({})

const base = import.meta.env.DEV
  ? '/api'
  : 'https://cloud1-d3g0pb1qk028e3585-d862bc2-1312769671.ap-shanghai.app.tcloudbase.com'

function venueId() {
  return localStorage.getItem('venue_id') || ''
}

async function post(path, body = {}) {
  const res = await fetch(base + path, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(body)
  })
  const text = await res.text()
  if (!text) throw new Error(path + ' 无返回 HTTP ' + res.status)
  const data = JSON.parse(text)
  return data.body ? (typeof data.body === 'string' ? JSON.parse(data.body) : data.body) : data
}

function toMin(hhmm) {
  const [h, m] = String(hhmm).split(':').map(Number)
  return h * 60 + m
}
function fromMin(n) {
  const h = Math.floor(n / 60)
  const m = n % 60
  const pad = (x) => (x < 10 ? '0' + x : '' + x)
  return pad(h) + ':' + pad(m)
}

function buildRange(start, end, skipS, skipE) {
  const out = []
  let t = toMin(start)
  const stop = toMin(end)
  const ss = skipS ? toMin(skipS) : -1
  const se = skipE ? toMin(skipE) : -1
  while (t + 60 <= stop) {
    const n = t + 60
    const inSkip = ss >= 0 && se > ss && t >= ss && t < se
    if (!inSkip) out.push(fromMin(t) + '-' + fromMin(n))
    t = n
  }
  return out
}

function unionSlots() {
  const set = new Set()
  Object.values(byWeekday.value || {}).forEach((arr) => {
    ;(arr || []).forEach((t) => set.add(t))
  })
  buildRange('06:00', '23:00', '', '').forEach((t) => set.add(t))
  return Array.from(set).sort()
}

function generate() {
  const list = buildRange(genStart.value, genEnd.value, genSkipStart.value, genSkipEnd.value)
  if (!list.length) {
    ElMessage.warning('生成结果为空，请检查开始/结束时间')
    return
  }
  const set = new Set(candidates.value.concat(list))
  candidates.value = Array.from(set).sort()
  selected.value = list.slice()
}

function selectAll() {
  selected.value = candidates.value.slice()
}

function applyPreview() {
  const saved = byWeekday.value[previewWeekday.value] || []
  if (saved.length) selected.value = saved.slice()
}

async function load() {
  const vid = venueId()
  if (!vid) {
    ElMessage.warning('请先选择场馆')
    return
  }
  loading.value = true
  try {
    const result = await post('/adminGetVenueHours', { venueId: vid })
    if (!result.ok) {
      ElMessage.error(result.msg || '加载失败')
      return
    }
    byWeekday.value = result.byWeekday || {}
    const saved = byWeekday.value[previewWeekday.value] || []
    candidates.value = unionSlots()
    selected.value = saved.length ? saved.slice() : (result.fallback || []).slice()
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    loading.value = false
  }
}

async function save() {
  const vid = venueId()
  if (!vid) {
    ElMessage.warning('请先选择场馆')
    return
  }
  if (!applyWeekdays.value.length) {
    ElMessage.warning('请勾选要保存到的星期')
    return
  }
  if (!selected.value.length) {
    ElMessage.warning('请至少勾选一个开放时段')
    return
  }
  saving.value = true
  try {
    const result = await post('/adminSaveVenueHours', {
      venueId: vid,
      weekdays: applyWeekdays.value,
      slots: selected.value
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '保存失败')
      return
    }
    ElMessage.success('已保存开放时段')
    await load()
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    saving.value = false
  }
}

onMounted(() => {
  load()
  window.addEventListener('venue-changed', load)
})
onUnmounted(() => {
  window.removeEventListener('venue-changed', load)
})
</script>

<style scoped>
.page-header { display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 16px; gap: 12px; }
h2 { margin: 0; font-size: 20px; color: #1a5c3a; }
.sub { margin: 4px 0 0; font-size: 13px; color: #909399; max-width: 720px; }
.toolbar { display: flex; gap: 8px; }
.card { background: #fff; border-radius: 10px; padding: 14px 18px; margin-bottom: 12px; box-shadow: 0 1px 4px rgba(0,0,0,.04); }
.filter-row { display: flex; align-items: center; flex-wrap: wrap; gap: 10px; margin-bottom: 10px; }
.filter-row:last-child { margin-bottom: 0; }
.label { width: 84px; color: #606266; font-size: 13px; flex-shrink: 0; }
.gen { display: flex; align-items: center; flex-wrap: wrap; gap: 8px; }
.batch-label { font-weight: 600; color: #1a5c3a; margin-right: 4px; }
.mini { color: #909399; font-size: 13px; }
.hint { margin: 10px 0 0; font-size: 12px; color: #909399; }
.slot-head { display: flex; align-items: center; gap: 8px; margin-bottom: 12px; }
.slot-group { display: flex; flex-wrap: wrap; gap: 8px; }
.slot-item { margin-right: 0 !important; }
</style>
