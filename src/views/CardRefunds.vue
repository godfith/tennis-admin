<template>
  <div class="page">
    <div class="page-header">
      <h2>购卡退款申请</h2>
      <div>
        <el-radio-group v-model="status" size="small" @change="fetchList">
          <el-radio-button value="pending">待确认</el-radio-button>
          <el-radio-button value="refunding">退款中</el-radio-button>
          <el-radio-button value="confirmed">已确认</el-radio-button>
          <el-radio-button value="all">全部</el-radio-button>
        </el-radio-group>
        <el-button style="margin-left:8px" @click="fetchList">刷新</el-button>
      </div>
    </div>
    <p class="tip">小程序只能提交申请，不会自己退成功。前台在群里报备后，由超级管理员在这里确认，系统按「剩余次数 / 总次数 × 购卡实付」原路退回微信，并作废该卡。已用次数不退；未上的课会先取消再折算。</p>
    <el-table :data="list" stripe border v-loading="loading">
      <el-table-column prop="id" label="申请号" width="90" />
      <el-table-column prop="card_name" label="卡" min-width="160" />
      <el-table-column prop="user_name" label="会员" width="110" />
      <el-table-column label="发起人" min-width="200" show-overflow-tooltip>
        <template #default="{ row }">{{ row.initiatorText || refundInitiator(row) }}</template>
      </el-table-column>
      <el-table-column label="确认人" width="130" show-overflow-tooltip>
        <template #default="{ row }">{{ row.operator_name || (row.status === 'pending' ? '待确认' : '-') }}</template>
      </el-table-column>
      <el-table-column label="次数" width="110">
        <template #default="{ row }">{{ row.remaining_times }} / {{ row.total_times }}</template>
      </el-table-column>
      <el-table-column label="实付 / 预估退" width="150">
        <template #default="{ row }">
          ¥{{ Number(row.paid_amount || 0).toFixed(2) }}
          / ¥{{ Number(row.refund_amount || 0).toFixed(2) }}
        </template>
      </el-table-column>
      <el-table-column label="状态" width="100">
        <template #default="{ row }">{{ refundStatusLabel(row.status) }}</template>
      </el-table-column>
      <el-table-column prop="requested_at" label="申请时间" width="170" />
      <el-table-column prop="reason" label="说明" min-width="140" show-overflow-tooltip />
      <el-table-column label="操作" width="120" fixed="right">
        <template #default="{ row }">
          <el-button
            v-if="canConfirm && (row.status === 'pending' || row.status === 'refunding')"
            link
            type="danger"
            @click="confirm(row)"
          >确认退款</el-button>
          <span v-else-if="!canConfirm && (row.status === 'pending' || row.status === 'refunding')" class="hint">仅超管可确认</span>
        </template>
      </el-table-column>
    </el-table>
  </div>
</template>
<script setup>
import { ref, onMounted, computed } from 'vue'
import { ElMessage, ElMessageBox } from 'element-plus'
import { roleKind } from '../utils/auth.js'
import { operatorFields } from '../utils/operator.js'

const base = import.meta.env.DEV ? '/api' : 'https://cloud1-d3g0pb1qk028e3585-d862bc2-1312769671.ap-shanghai.app.tcloudbase.com'
async function post(path, body = {}) {
  const res = await fetch(base + path, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(Object.assign({}, operatorFields(), body))
  })
  const data = await res.json()
  return data.body ? (typeof data.body === 'string' ? JSON.parse(data.body) : data.body) : data
}

const list = ref([])
const loading = ref(false)
const status = ref('pending')
const canConfirm = computed(() => roleKind() === 'admin')

function refundInitiator(row) {
  const name = row.user_name || row.user_nick || '会员'
  const phone = row.initiatorPhone || row.user_phone || ''
  const who = phone ? (name + '（' + phone + '）') : name
  return who + ' · 小程序'
}

function refundStatusLabel(st) {
  if (st === 'pending') return '待确认'
  if (st === 'refunding') return '退款中'
  if (st === 'confirmed') return '已确认'
  return st || '-'
}

async function fetchList() {
  loading.value = true
  try {
    const r = await post('/adminRefundCard', { action: 'listRequests', status: status.value })
    if (!r.ok) { ElMessage.error(r.msg || '加载失败'); return }
    list.value = r.list || []
    if (r.msg) ElMessage.warning(r.msg)
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    loading.value = false
  }
}

async function confirm(row) {
  if (!canConfirm.value) { ElMessage.warning('只有超级管理员可以确认退款'); return }
  await ElMessageBox.confirm(
    '确认后退款将原路退回微信，并作废「' + (row.card_name || '') + '」。未上课的报名会先取消再按剩余次数折算。确定继续？',
    '确认退款',
    { type: 'warning', confirmButtonText: '确认退款' }
  )
  const r = await post('/adminRefundCard', { action: 'confirmRequest', requestId: row.id })
  if (!r.ok) { ElMessage.error(r.msg || '确认失败'); return }
  ElMessage.success(r.already ? '已处理' : ('已退款 ¥' + (Number(r.refundAmount) || 0).toFixed(2)))
  fetchList()
}

onMounted(fetchList)
</script>
<style scoped>
.page-header { display: flex; justify-content: space-between; align-items: center; margin-bottom: 12px; }
h2 { margin: 0; font-size: 20px; color: #1a5c3a; }
.tip { color: #666; font-size: 13px; line-height: 1.6; margin: 0 0 12px; }
.hint { color: #999; font-size: 12px; }
</style>
