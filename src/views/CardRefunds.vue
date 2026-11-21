<template>
  <div class="page">
    <div class="page-header">
      <h2>退款申请</h2>
      <div>
        <el-radio-group v-model="status" size="small" @change="fetchList">
          <el-radio-button value="pending">待确认</el-radio-button>
          <el-radio-button value="refunding">退款中</el-radio-button>
          <el-radio-button value="confirmed">已确认</el-radio-button>
          <el-radio-button value="rejected">已拒绝</el-radio-button>
          <el-radio-button value="all">全部</el-radio-button>
        </el-radio-group>
        <el-select
          v-model="venueIds"
          multiple
          collapse-tags
          collapse-tags-tooltip
          clearable
          filterable
          placeholder="全部场馆"
          style="margin-left:8px; min-width:220px; vertical-align:middle"
          @change="fetchList"
        >
          <el-option v-for="v in venueList" :key="v.venueId || v._id" :label="v.name" :value="v.venueId || v._id" />
        </el-select>
        <el-button style="margin-left:8px" @click="fetchList">刷新</el-button>
      </div>
    </div>
    <p class="tip">所有退款都必须先出现在这里，由超级管理员确认后才会退。默认显示全部门店，也可按场馆筛选。包括：小程序购卡退款、前台「只退款·改发卡」、后台退卡，以及取消预约时要退的钱。购卡退款按剩余次数折算后原路退回微信；未上的课会先取消再折算。</p>
    <el-table :data="list" stripe border v-loading="loading">
      <el-table-column prop="id" label="申请号" width="90" />
      <el-table-column label="场馆" width="120" show-overflow-tooltip>
        <template #default="{ row }">{{ row.venueName || row.venue_name || '-' }}</template>
      </el-table-column>
      <el-table-column label="类型" width="140">
        <template #default="{ row }">{{ row.requestTypeLabel || refundTypeLabel(row) }}</template>
      </el-table-column>
      <el-table-column prop="card_name" label="卡 / 预约" min-width="160">
        <template #default="{ row }">{{ row.card_name || row.summary || '-' }}</template>
      </el-table-column>
      <el-table-column label="会员" width="120">
        <template #default="{ row }">
          <el-link type="primary" @click="goUser(row)">{{ row.user_name || row.user_nick || '会员' }}</el-link>
        </template>
      </el-table-column>
      <el-table-column label="发起人" min-width="200" show-overflow-tooltip>
        <template #default="{ row }">{{ row.initiatorText || refundInitiator(row) }}</template>
      </el-table-column>
      <el-table-column label="确认人" width="130" show-overflow-tooltip>
        <template #default="{ row }">{{ row.status === 'pending' ? '待确认' : (row.operator_name || '-') }}</template>
      </el-table-column>
      <el-table-column label="次数" width="110">
        <template #default="{ row }">{{ (row.remaining_times == null && row.total_times == null) ? '-' : ((row.remaining_times ?? '-') + ' / ' + (row.total_times ?? '-')) }}</template>
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
      <el-table-column label="申请时间" width="170">
        <template #default="{ row }">{{ fmtDateTime(row.requested_at) }}</template>
      </el-table-column>
      <el-table-column label="说明" min-width="200" show-overflow-tooltip>
        <template #default="{ row }">
          <div>{{ row.summary || prettyReason(row.reason) }}</div>
          <div v-if="row.status === 'rejected' && row.rejectReason" class="hint">拒绝原因：{{ row.rejectReason }}</div>
        </template>
      </el-table-column>
      <el-table-column label="操作" width="180" fixed="right">
        <template #default="{ row }">
          <el-button
            v-if="canConfirm && (row.status === 'pending' || row.status === 'refunding')"
            link
            type="danger"
            @click="confirm(row)"
          >确认退款</el-button>
          <el-button
            v-if="canConfirm && row.status === 'pending'"
            link
            type="warning"
            @click="reject(row)"
          >拒绝退款</el-button>
          <span v-else-if="!canConfirm && (row.status === 'pending' || row.status === 'refunding')" class="hint">仅超管可操作</span>
        </template>
      </el-table-column>
    </el-table>
  </div>
</template>
<script setup>
import { ref, onMounted, computed } from 'vue'
import { useRouter } from 'vue-router'
import { ElMessage, ElMessageBox } from 'element-plus'
import { roleKind } from '../utils/auth.js'
import { operatorFields } from '../utils/operator.js'

const base = import.meta.env.DEV ? '/api' : 'https://cloud1-d3g0pb1qk028e3585-d862bc2-1312769671.ap-shanghai.app.tcloudbase.com'

// CloudBase HTTP 网关强制要求 Accept + User-Agent，缺了就返回「Http头缺少Accept或User-Agent」
const API_HEADERS = {
  'Content-Type': 'application/json',
  Accept: 'application/json, */*;q=0.8',
  'User-Agent': 'Mozilla/5.0 (compatible; GoatTennisAdmin/1.0)'
}

async function post(path, body = {}) {
  const res = await fetch(base + path, {
    method: 'POST',
    headers: API_HEADERS,
    body: JSON.stringify(Object.assign({}, operatorFields(), body))
  })
  const data = await res.json()
  return data.body ? (typeof data.body === 'string' ? JSON.parse(data.body) : data.body) : data
}

const list = ref([])
const loading = ref(false)
const status = ref('pending')
const venueIds = ref([])
const venueList = ref([])
const canConfirm = computed(() => roleKind() === 'admin')

function refundTypeLabel(row) {
  const t = row.requestType || row.request_type || ''
  if (t === 'booking_cash_issue') return '只退款·改发卡'
  if (t === 'booking_cancel') return '取消预约退款'
  if (t === 'admin_card') return '退卡'
  if (t === 'admin_card_delete') return '删除并退卡'
  if (t === 'booking_wx_refund') return '补退微信'
  return '购卡退款'
}

function fmtDateTime(v) {
  if (!v) return '-'
  const s = String(v)
  const m = s.match(/^(\d{4}-\d{2}-\d{2})[T ](\d{2}:\d{2}:\d{2})/)
  if (m) return m[1] + ' ' + m[2]
  return s
}

function prettyReason(reason) {
  const s = String(reason || '')
  if (!s) return '-'
  const m = s.match(/(?:^|\|)sum=([^|]*)/)
  if (m && m[1]) return m[1]
  if (s.indexOf('BKREF|') === 0) return ''
  return s
}

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
  if (st === 'withdrawn') return '已撤回'
  if (st === 'rejected') return '已拒绝'
  return st || '-'
}

async function fetchList() {
  loading.value = true
  try {
    const r = await post('/adminRefundCard', {
      action: 'listRequests',
      status: status.value,
      venueIds: venueIds.value && venueIds.value.length ? venueIds.value : undefined
    })
    if (!r.ok) { ElMessage.error(r.msg || '加载失败'); return }
    list.value = r.list || []
    if (r.msg) ElMessage.warning(r.msg)
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    loading.value = false
  }
}

const router = useRouter()

function money(v) {
  return '¥' + Number(v || 0).toFixed(2)
}

function courtInfo(row) {
  const venue = row.venueName || row.venue_name || ''
  const detail = row.summary || row.card_name || prettyReason(row.reason) || ''
  if (venue && detail) return venue + ' · ' + detail
  return venue || detail || '-'
}

function customerText(row) {
  const name = row.user_name || row.user_nick || '会员'
  const phone = row.user_phone || row.initiatorPhone || ''
  return phone ? (name + '（' + phone + '）') : name
}

function goUser(row) {
  const q = String(row.user_phone || row.initiatorPhone || row.user_id || row.userId || '').trim()
  if (!q) { ElMessage.warning('该申请没有可用的用户标识'); return }
  router.push({ path: '/users', query: { q, open: '1', from: 'refunds' } })
}

async function confirm(row) {
  if (!canConfirm.value) { ElMessage.warning('只有超级管理员可以确认退款'); return }
  const html = [
    '<div style="line-height:1.7;font-size:14px">',
    '<div><b>类型：</b>' + (row.requestTypeLabel || refundTypeLabel(row)) + '</div>',
    '<div><b>退款金额：</b><span style="color:#e6a23c;font-weight:600">' + money(row.refund_amount) + '</span>',
    '（实付 ' + money(row.paid_amount) + '）</div>',
    '<div><b>场地 / 预约：</b>' + courtInfo(row) + '</div>',
    '<div><b>客户：</b>' + customerText(row) + '</div>',
    '<div><b>申请人：</b>' + (row.initiatorText || refundInitiator(row)) + '</div>',
    '<div style="margin-top:8px;color:#909399">确认后才会真正退款，请核对无误再继续。</div>',
    '</div>'
  ].join('')
  try {
    await ElMessageBox.confirm(html, '二次确认退款', {
      type: 'warning',
      confirmButtonText: '确认退款',
      cancelButtonText: '取消',
      dangerouslyUseHTMLString: true
    })
  } catch {
    return
  }
  const r = await post('/adminRefundCard', { action: 'confirmRequest', requestId: row.id })
  if (!r.ok) { ElMessage.error(r.msg || '确认失败'); return }
  ElMessage.success(r.already ? '已处理' : ('已退款 ' + money(r.refundAmount)))
  fetchList()
}

async function reject(row) {
  if (!canConfirm.value) { ElMessage.warning('只有超级管理员可以拒绝退款'); return }
  let reason = ''
  try {
    const ret = await ElMessageBox.prompt(
      '拒绝后该申请不会退款。客户：' + customerText(row) + '。金额：' + money(row.refund_amount) + '。场地：' + courtInfo(row),
      '拒绝退款',
      {
        confirmButtonText: '确认拒绝',
        cancelButtonText: '取消',
        inputPlaceholder: '拒绝原因（选填）',
        inputType: 'textarea'
      }
    )
    reason = (ret && ret.value) || ''
  } catch {
    return
  }
  const r = await post('/adminRefundCard', {
    action: 'rejectRequest',
    requestId: row.id,
    reason
  })
  if (!r.ok) { ElMessage.error(r.msg || '拒绝失败'); return }
  ElMessage.success(r.already ? '已拒绝' : '已拒绝退款')
  fetchList()
}

async function loadVenues() {
  try {
    const r = await post('/adminGetVenues', {})
    venueList.value = r.list || []
  } catch (e) {
    venueList.value = []
  }
}

onMounted(async () => {
  await loadVenues()
  fetchList()
})
</script>
<style scoped>
.page-header { display: flex; justify-content: space-between; align-items: center; margin-bottom: 12px; }
h2 { margin: 0; font-size: 20px; color: #1a5c3a; }
.tip { color: #666; font-size: 13px; line-height: 1.6; margin: 0 0 12px; }
.hint { color: #999; font-size: 12px; }
</style>
