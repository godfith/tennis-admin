<template>
  <div class="page">
    <div class="page-header">
      <div>
        <h2>业务动态</h2>
        <p class="tip">记录订场、取消、发卡、体验发放、团课报名等操作 · {{ list.length }} 条</p>
      </div>
      <el-button :loading="loading" type="primary" plain @click="fetchAll">刷新</el-button>
    </div>
    <div class="filters">
      <el-select v-model="filterType" clearable placeholder="全部类型" style="width: 160px" @change="fetchAll">
        <el-option v-for="opt in typeOptions" :key="opt.value" :label="opt.label" :value="opt.value" />
      </el-select>
      <el-input v-model="keyword" clearable placeholder="用户 / 操作人 / 手机 / 详情" style="width: 260px" @keyup.enter="fetchAll" />
      <el-button @click="fetchAll">搜索</el-button>
      <el-button @click="filterType=''; keyword=''; fetchAll()">重置</el-button>
    </div>
    <el-table :data="list" stripe border v-loading="loading">
      <el-table-column label="时间" width="180"><template #default="{ row }">{{ row.timeText || '-' }}</template></el-table-column>
      <el-table-column label="类型" width="110">
        <template #default="{ row }"><el-tag :type="typeTag(row.type)" size="small">{{ row.typeLabel || typeLabel(row.type) }}</el-tag></template>
      </el-table-column>
      <el-table-column label="用户" min-width="110"><template #default="{ row }">{{ row.userName || '-' }}</template></el-table-column>
      <el-table-column label="操作人" width="110"><template #default="{ row }">{{ row.operatorName || '-' }}</template></el-table-column>
      <el-table-column label="手机号" width="120"><template #default="{ row }">{{ row.phone || '-' }}</template></el-table-column>
      <el-table-column label="详情" min-width="280"><template #default="{ row }">{{ row.detail || '-' }}</template></el-table-column>
      <el-table-column label="场馆" width="160"><template #default="{ row }">{{ row.venueName || '-' }}</template></el-table-column>
    </el-table>
    <div v-if="!loading && !list.length" class="empty">暂无符合条件的数据</div>
  </div>
</template>
<script setup>
import { ref, onMounted } from 'vue'
import { ElMessage } from 'element-plus'
const loading = ref(false)
const list = ref([])
const filterType = ref('')
const keyword = ref('')
const base = import.meta.env.DEV ? '/api' : 'https://cloud1-d3g0pb1qk028e3585-d862bc2-1312769671.ap-shanghai.app.tcloudbase.com'
const typeOptions = [
  { label: '用户注册', value: 'register' },
  { label: '订场', value: 'booking_add' },
  { label: '取消预约', value: 'booking_cancel' },
  { label: '团课报名', value: 'group_enroll' },
  { label: '发卡', value: 'issue_card' },
  { label: '退卡', value: 'refund_card' },
  { label: '延期', value: 'extend_card' },
  { label: '体验发放', value: 'gift_card' },
  { label: '体验加次', value: 'gift_add' },
  { label: '报体验课', value: 'trial_class' }
]
function typeLabel(t) { const hit = typeOptions.find((x) => x.value === t); return hit ? hit.label : (t || '-') }
function typeTag(t) {
  return { register: 'success', booking_add: 'primary', booking_cancel: 'info', group_enroll: 'danger', issue_card: 'warning', refund_card: 'danger', gift_card: 'success', gift_add: 'success', trial_class: 'success' }[t] || 'info'
}
async function post(path, body = {}) {
  const res = await fetch(base + path, { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify(body) })
  const data = await res.json()
  return data.body ? (typeof data.body === 'string' ? JSON.parse(data.body) : data.body) : data
}
async function fetchAll() {
  loading.value = true
  try {
    const result = await post('/adminGetActivityLogs', { venueId: localStorage.getItem('venue_id') || '', type: filterType.value, keyword: keyword.value, limit: 300 })
    if (!result.ok) { ElMessage.error(result.msg || '加载失败'); list.value = []; return }
    list.value = result.list || []
  } catch (e) { ElMessage.error(e.message || '请部署 adminGetActivityLogs'); list.value = [] }
  finally { loading.value = false }
}
onMounted(fetchAll)
</script>
<style scoped>
.page-header { display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 16px; }
h2 { margin: 0 0 4px; font-size: 20px; color: #1a5c3a; }
.tip { margin: 0; color: #888; font-size: 13px; }
.filters { display: flex; gap: 10px; margin-bottom: 14px; flex-wrap: wrap; }
.empty { text-align: center; color: #999; padding: 40px; }
</style>
