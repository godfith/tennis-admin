<template>
  <div class="page">
    <div class="page-header">
      <h2>预约通知话术</h2>
    </div>
    <p class="tip">订场/排课成功后弹出的通知，固定部分由系统按实际时间生成，这里只编辑后面的自定义话术。所有人共用。</p>
    <el-alert type="warning" :closable="false" style="margin-bottom:16px"
      title="注意：前面的「已预约11月4日15:00-16:00 1号场」是系统自动生成的，不用写进话术里。这里只填后面那句即可。" />

    <el-card shadow="never" style="margin-bottom:16px">
      <template #header>普通订场话术</template>
      <el-input v-model="normal" type="textarea" :rows="4" placeholder="如：如取消或改期需提前2小时告知" />
      <div style="margin-top:12px;text-align:right">
        <el-button type="primary" :loading="savingNormal" @click="save('normal')">保存普通订场</el-button>
      </div>
    </el-card>

    <el-card shadow="never">
      <template #header>教练课话术</template>
      <el-input v-model="coach" type="textarea" :rows="4" placeholder="如：请准时到场，如需取消请提前告知教练" />
      <div style="margin-top:12px;text-align:right">
        <el-button type="primary" :loading="savingCoach" @click="save('coach')">保存教练课</el-button>
      </div>
    </el-card>

    <el-alert style="margin-top:16px" type="info" :closable="false"
      title="预览示例：已预约11月4日15:00-16:00 1号场，如取消或改期需提前2小时告知" />
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

const normal = ref('')
const coach = ref('')
const savingNormal = ref(false)
const savingCoach = ref(false)

async function load() {
  const r = await post('/adminNotices', { action: 'getScripts' })
  if (r.ok && r.scripts) {
    normal.value = r.scripts.normal || ''
    coach.value = r.scripts.coach || ''
  }
}

async function save(type) {
  const loading = type === 'normal' ? savingNormal : savingCoach
  loading.value = true
  try {
    const content = type === 'normal' ? normal.value : coach.value
    const r = await post('/adminNotices', { action: 'saveScript', type, content })
    if (!r.ok) { ElMessage.error(r.msg || '保存失败'); return }
    ElMessage.success('已保存')
  } finally {
    loading.value = false
  }
}

onMounted(load)
</script>

<style scoped>
.page { padding: 20px; max-width: 720px; }
.page-header { margin-bottom: 8px; }
.page-header h2 { margin: 0; }
.tip { color: #666; font-size: 13px; margin-bottom: 16px; }
</style>
