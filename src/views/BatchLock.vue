<template>
  <div class="page">
    <div class="page-header">
      <div>
        <h2>批量锁场</h2>
        <p class="sub">按场馆、场地、日期范围、时段批量锁定。已预约或已锁的时段会跳过。</p>
      </div>
    </div>

    <div class="card">
      <el-form label-width="100px">
        <el-form-item label="场馆">
          <el-select v-model="form.venueId" placeholder="选择场馆" style="width: 280px" @change="loadCourts">
            <el-option v-for="v in venues" :key="v.venueId || v._id" :label="v.name" :value="v.venueId || v._id" />
          </el-select>
        </el-form-item>
        <el-form-item label="场地">
          <el-checkbox-group v-model="form.courts">
            <el-checkbox v-for="c in courts" :key="c._id" :value="c.name">{{ c.name }}</el-checkbox>
          </el-checkbox-group>
          <el-button size="small" @click="form.courts = courts.map(c => c.name)">全选</el-button>
          <el-button size="small" @click="form.courts = []">清空</el-button>
        </el-form-item>
        <el-form-item label="日期">
          <el-date-picker v-model="form.dateRange" type="daterange" value-format="YYYY-MM-DD" start-placeholder="开始" end-placeholder="结束" />
          <span class="hint">或单日</span>
          <el-date-picker v-model="form.singleDate" type="date" value-format="YYYY-MM-DD" placeholder="单日" style="margin-left: 8px" />
        </el-form-item>
        <el-form-item label="时段">
          <el-checkbox-group v-model="form.times">
            <el-checkbox v-for="t in timeSlots" :key="t" :value="t">{{ t }}</el-checkbox>
          </el-checkbox-group>
          <div style="margin-top: 8px">
            <el-button size="small" @click="form.times = timeSlots.slice()">全选</el-button>
            <el-button size="small" @click="form.times = timeSlots.filter(t => t >= '18:00-19:00')">晚间</el-button>
            <el-button size="small" @click="form.times = []">清空</el-button>
          </div>
        </el-form-item>
        <el-form-item label="备注">
          <el-input v-model="form.remark" placeholder="锁场原因" style="width: 360px" />
        </el-form-item>
        <el-form-item>
          <el-button type="warning" :loading="saving" @click="doLock">确认批量锁场</el-button>
          <span class="hint" v-if="preview">预计锁定 {{ preview }} 个时段</span>
        </el-form-item>
      </el-form>
    </div>

    <div class="card" v-if="result">
      <h3>结果</h3>
      <p>成功 {{ result.ok }} 个，跳过 {{ result.skip }} 个，失败 {{ result.fail }} 个</p>
      <el-table :data="result.details" size="small" max-height="300" v-if="result.details.length">
        <el-table-column prop="court" label="场地" width="120" />
        <el-table-column prop="date" label="日期" width="110" />
        <el-table-column prop="time" label="时段" width="110" />
        <el-table-column prop="msg" label="说明" />
      </el-table>
    </div>
  </div>
</template>

<script setup>
import { ref, computed, onMounted } from 'vue'
import { ElMessage } from 'element-plus'

const base = import.meta.env.DEV ? '/api' : 'https://cloud1-d3g0pb1qk028e3585-d862bc2-1312769671.ap-shanghai.app.tcloudbase.com'
const venues = ref([])
const courts = ref([])
const saving = ref(false)
const result = ref(null)

const form = ref({
  venueId: '',
  courts: [],
  dateRange: null,
  singleDate: '',
  times: [],
  remark: ''
})

const timeSlots = [
  '08:00-09:00','09:00-10:00','10:00-11:00','11:00-12:00',
  '12:00-13:00','13:00-14:00','14:00-15:00','15:00-16:00',
  '16:00-17:00','17:00-18:00','18:00-19:00','19:00-20:00',
  '20:00-21:00','21:00-22:00'
]

const preview = computed(() => {
  const dates = getDates()
  return form.value.courts.length * dates.length * form.value.times.length
})

function getDates() {
  if (form.value.singleDate) return [form.value.singleDate]
  if (!form.value.dateRange || form.value.dateRange.length !== 2) return []
  const [start, end] = form.value.dateRange
  const dates = []
  const d = new Date(start)
  const endD = new Date(end)
  while (d <= endD) {
    dates.push(d.toISOString().slice(0, 10))
    d.setDate(d.getDate() + 1)
  }
  return dates
}

async function post(path, body) {
  const res = await fetch(base + path, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(body)
  })
  const text = await res.text()
  let data
  try { data = text ? JSON.parse(text) : {} } catch (e) {
    throw new Error('接口异常')
  }
  return data.body ? (typeof data.body === 'string' ? JSON.parse(data.body) : data.body) : data
}

async function loadVenues() {
  const r = await post('/adminGetVenues', {})
  venues.value = r.list || []
}

async function loadCourts() {
  if (!form.value.venueId) { courts.value = []; return }
  const r = await post('/adminGetCourts', { venueId: form.value.venueId })
  courts.value = r.list || []
  form.value.courts = []
}

async function doLock() {
  const dates = getDates()
  if (!form.value.venueId) { ElMessage.warning('请选择场馆'); return }
  if (!form.value.courts.length) { ElMessage.warning('请选择场地'); return }
  if (!dates.length) { ElMessage.warning('请选择日期'); return }
  if (!form.value.times.length) { ElMessage.warning('请选择时段'); return }

  saving.value = true
  result.value = { ok: 0, skip: 0, fail: 0, details: [] }
  const venue = venues.value.find(v => (v.venueId || v._id) === form.value.venueId)
  const venueName = venue ? venue.name : ''
  const operator = localStorage.getItem('admin_name') || '管理员'

  for (const court of form.value.courts) {
    for (const date of dates) {
      for (const time of form.value.times) {
        try {
          const r = await post('/adminSaveBooking', {
            action: 'lock',
            data: {
              venueId: form.value.venueId,
              venueName,
              court,
              date,
              time,
              remark: form.value.remark || '[锁场] 批量锁场',
              operatorName: operator
            }
          })
          if (r.ok) {
            result.value.ok++
          } else {
            result.value.skip++
            result.value.details.push({ court, date, time, msg: r.msg || '跳过' })
          }
        } catch (e) {
          result.value.fail++
          result.value.details.push({ court, date, time, msg: e.message || '失败' })
        }
      }
    }
  }
  saving.value = false
  ElMessage.success(`完成：成功 ${result.value.ok}，跳过 ${result.value.skip}`)
}

onMounted(loadVenues)
</script>

<style scoped>
.page { padding: 16px; }
.page-header { margin-bottom: 16px; }
.page-header h2 { margin: 0; }
.sub { color: #888; font-size: 13px; margin: 4px 0 0; }
.card { background: #fff; border-radius: 8px; padding: 16px; margin-bottom: 16px; }
.hint { color: #999; margin-left: 12px; font-size: 13px; }
</style>
