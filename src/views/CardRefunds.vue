<template>
  <div class="page">
    <div class="page-header">
      <div>
        <h2>退款申请</h2>
        <p class="sub">超管确认后才会真正退款。点会员名直接查看该用户详情。</p>
      </div>
    </div>

    <div class="filters card">
      <el-radio-group v-model="status" @change="fetchList">
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
        style="width: 220px"
        @change="fetchList"
      >
        <el-option v-for="v in venueList" :key="v.venueId || v._id" :label="v.name" :value="v.venueId || v._id" />
      </el-select>
      <el-input
        v-model="keyword"
        clearable
        placeholder="手机号 / 姓名 / 申请号 / 卡或场地"
        style="width: 260px"
        @keyup.enter="fetchList"
        @clear="fetchList"
      />
      <el-date-picker
        v-model="dateRange"
        type="daterange"
        value-format="YYYY-MM-DD"
        range-separator="至"
        start-placeholder="申请开始"
        end-placeholder="申请结束"
        style="width: 260px"
        @change="fetchList"
      />
      <el-button type="primary" :loading="loading" @click="fetchList">查询</el-button>
      <el-button @click="resetQuery">重置</el-button>
    </div>

    <div class="card table-card">
      <el-table :data="list" stripe v-loading="loading" class="clean-table">
        <el-table-column prop="id" label="申请号" width="80" />
        <el-table-column label="场馆" width="140" show-overflow-tooltip>
          <template #default="{ row }">{{ shortVenue(row.venueName || row.venue_name) }}</template>
        </el-table-column>
        <el-table-column label="类型" width="140">
          <template #default="{ row }">
            <el-tag size="small" :type="typeTag(row)" effect="plain">{{ row.requestTypeLabel || refundTypeLabel(row) }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column label="卡 / 预约" min-width="220">
          <template #default="{ row }">
            <div class="main-text">{{ row.card_name || row.summary || '-' }}</div>
            <div v-if="row.summary && row.card_name && row.summary !== row.card_name" class="sub-text">{{ row.summary }}</div>
          </template>
        </el-table-column>
        <el-table-column label="会员" width="140">
          <template #default="{ row }">
            <el-link type="primary" class="name-link" @click="goUser(row)">{{ row.user_name || row.user_nick || '会员' }}</el-link>
            <div class="sub-text">{{ row.user_phone || '' }}</div>
          </template>
        </el-table-column>
        <el-table-column label="发起人" min-width="180" show-overflow-tooltip>
          <template #default="{ row }">{{ row.initiatorText || refundInitiator(row) }}</template>
        </el-table-column>
        <el-table-column label="确认人" width="120" show-overflow-tooltip>
          <template #default="{ row }">{{ row.status === 'pending' ? '待确认' : (row.operator_name || '-') }}</template>
        </el-table-column>
        <el-table-column label="次数" width="90" align="center">
          <template #default="{ row }">{{ (row.remaining_times == null && row.total_times == null) ? '-' : ((row.remaining_times ?? '-') + ' / ' + (row.total_times ?? '-')) }}</template>
        </el-table-column>
        <el-table-column label="实付 / 退款" width="140">
          <template #default="{ row }">
            <div class="money">{{ money(row.refund_amount) }}</div>
            <div class="sub-text">实付 {{ money(row.paid_amount) }}</div>
          </template>
        </el-table-column>
        <el-table-column label="状态" width="100">
          <template #default="{ row }">
            <el-tag size="small" :type="statusTag(row.status)" effect="light">{{ refundStatusLabel(row.status) }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column label="申请时间" width="160">
          <template #default="{ row }">{{ fmtDateTime(row.requested_at) }}</template>
        </el-table-column>
        <el-table-column label="说明" min-width="200">
          <template #default="{ row }">
            <div class="main-text">{{ row.summary || prettyReason(row.reason) || '-' }}</div>
            <div v-if="row.status === 'rejected' && row.rejectReason" class="reject-text">拒绝：{{ row.rejectReason }}</div>
          </template>
        </el-table-column>
        <el-table-column label="操作" width="170" fixed="right">
          <template #default="{ row }">
            <div class="ops">
              <el-button
                v-if="canConfirm && (row.status === 'pending' || row.status === 'refunding')"
                size="small"
                type="danger"
                plain
                @click="confirm(row)"
              >确认退款</el-button>
              <el-button
                v-if="canConfirm && row.status === 'pending'"
                size="small"
                @click="reject(row)"
              >拒绝</el-button>
              <span v-else-if="!canConfirm && (row.status === 'pending' || row.status === 'refunding')" class="hint">仅超管可操作</span>
              <span v-else-if="row.status !== 'pending' && row.status !== 'refunding'" class="hint">-</span>
            </div>
          </template>
        </el-table-column>
      </el-table>
      <div v-if="!loading && !list.length" class="empty">暂无申请</div>
    </div>

    <el-drawer v-model="userVisible" size="760px" destroy-on-close>
      <template #header>
        <div>
          <div class="drawer-name">{{ userDetail.nickName || userDetail.nick_name || userDetail.user_name || '会员' }}</div>
          <div class="sub-text">{{ userDetail.phone || '无手机号' }}<span v-if="userDetail.userId"> · {{ userDetail.userId }}</span></div>
        </div>
      </template>
      <div v-loading="userLoading">
        <div class="metric-row">
          <div class="metric"><div class="lab">余额</div><div class="num">{{ money(userDetail.balance) }}</div></div>
          <div class="metric"><div class="lab">积分</div><div class="num">{{ userDetail.points || 0 }}</div></div>
          <div class="metric"><div class="lab">累计消费</div><div class="num">{{ money(userDetail.totalSpend) }}</div></div>
          <div class="metric"><div class="lab">有效持卡</div><div class="num">{{ userDetail.cardCount || userCards.length || 0 }}</div></div>
        </div>
        <el-tabs>
          <el-tab-pane :label="'持卡（' + userCards.length + '）'">
            <el-table :data="userCards" size="small" stripe max-height="360">
              <el-table-column prop="cardName" label="卡" min-width="160" show-overflow-tooltip />
              <el-table-column label="次数" width="90">
                <template #default="{ row }">{{ row.remainingTimes ?? '-' }} / {{ row.totalTimes ?? '-' }}</template>
              </el-table-column>
              <el-table-column prop="status" label="状态" width="80" />
              <el-table-column prop="validTo" label="有效期" width="110" />
              <el-table-column prop="venueName" label="场馆" min-width="120" show-overflow-tooltip />
            </el-table>
          </el-tab-pane>
          <el-tab-pane :label="'预约（' + userBookings.length + '）'">
            <el-table :data="userBookings" size="small" stripe max-height="360">
              <el-table-column prop="date" label="日期" width="110" />
              <el-table-column prop="time" label="时段" width="110" />
              <el-table-column prop="court" label="场地" min-width="120" show-overflow-tooltip />
              <el-table-column prop="status" label="状态" width="80" />
              <el-table-column label="金额" width="80">
                <template #default="{ row }">{{ money(row.amount) }}</template>
              </el-table-column>
            </el-table>
          </el-tab-pane>
        </el-tabs>
      </div>
    </el-drawer>
  </div>
</template>
<script setup>
import { ref, onMounted, computed } from 'vue'
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
const keyword = ref('')
const dateRange = ref([])
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

function statusTag(st) {
  if (st === 'pending') return 'warning'
  if (st === 'refunding') return 'primary'
  if (st === 'confirmed') return 'success'
  if (st === 'rejected' || st === 'withdrawn') return 'info'
  return ''
}

function typeTag(row) {
  const t = row.requestType || row.request_type || ''
  if (t === 'booking_cash_issue' || t === 'booking_wx_refund') return 'warning'
  if (t === 'admin_card_delete' || t === 'booking_cancel') return 'danger'
  return 'success'
}

function shortVenue(name) {
  return String(name || '-').replace('山羊Goat网球馆（', '').replace('）', '')
}

async function fetchList() {
  loading.value = true
  try {
    const range = dateRange.value || []
    const r = await post('/adminRefundCard', {
      action: 'listRequests',
      status: status.value,
      keyword: keyword.value.trim() || undefined,
      dateFrom: range[0] || undefined,
      dateTo: range[1] || undefined,
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

const userVisible = ref(false)
const userLoading = ref(false)
const userDetail = ref({})
const userCards = ref([])
const userBookings = ref([])

async function goUser(row) {
  const phone = String(row.user_phone || row.initiatorPhone || '').replace(/\D/g, '').slice(-11)
  let userId = Number(row.user_id || row.userId || 0)
  userVisible.value = true
  userLoading.value = true
  userDetail.value = { nickName: row.user_name || row.user_nick || '会员', phone }
  userCards.value = []
  userBookings.value = []
  try {
    if (!userId && phone) {
      const found = await post('/adminGetUsers', { keyword: phone, pageSize: 20 })
      const list = (found && (found.list || found.users)) || []
      const hit = list.find((u) => String(u.phone || '').replace(/\D/g, '').slice(-11) === phone) || list[0]
      userId = Number((hit && (hit._id || hit.id || hit.user_id)) || 0)
    }
    if (!userId) { ElMessage.warning('找不到该用户'); return }
    const r = await post('/adminGetUsers', { action: 'detail', userId })
    if (!r.ok) { ElMessage.error(r.msg || '加载详情失败'); return }
    userDetail.value = r.user || userDetail.value
    userCards.value = r.cards || []
    userBookings.value = r.bookings || []
  } catch (e) {
    ElMessage.error(e.message || '加载详情失败')
  } finally {
    userLoading.value = false
  }
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

function resetQuery() {
  keyword.value = ''
  dateRange.value = []
  venueIds.value = []
  status.value = 'pending'
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
.page-header { display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 12px; }
h2 { margin: 0; font-size: 20px; color: #1a5c3a; }
.sub { margin: 4px 0 0; color: #909399; font-size: 13px; }
.card { background: #fff; border-radius: 10px; padding: 12px 14px; margin-bottom: 12px; }
.filters { display: flex; flex-wrap: wrap; gap: 8px; align-items: center; }
.table-card { padding: 8px 8px 4px; }
.clean-table { width: 100%; }
.name-link { font-weight: 600; }
.main-text { color: #303133; line-height: 1.4; }
.sub-text { color: #909399; font-size: 12px; line-height: 1.4; margin-top: 2px; }
.money { color: #e6a23c; font-weight: 600; }
.reject-text { color: #f56c6c; font-size: 12px; margin-top: 2px; }
.ops { display: flex; gap: 6px; align-items: center; }
.hint { color: #999; font-size: 12px; }
.empty { text-align: center; color: #999; padding: 24px 0; }
.drawer-name { font-size: 18px; font-weight: 600; color: #1a5c3a; }
.metric-row { display: grid; grid-template-columns: repeat(4, 1fr); gap: 8px; margin-bottom: 12px; }
.metric { background: #f7f8f6; border-radius: 8px; padding: 10px 12px; }
.metric .lab { color: #909399; font-size: 12px; }
.metric .num { margin-top: 4px; font-size: 18px; font-weight: 600; color: #303133; }
</style>
