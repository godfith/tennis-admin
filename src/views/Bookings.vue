<template>
  <div class="schedule-page">
    <div class="toolbar">
      <div class="toolbar-left">
        <h2>预约日程</h2>
        <el-button-group>
          <el-button @click="shiftDate(-1)">前一天</el-button>
          <el-button type="primary" plain @click="goToday">今天</el-button>
          <el-button @click="shiftDate(1)">后一天</el-button>
        </el-button-group>
        <el-date-picker
          v-model="dateObj"
          type="date"
          value-format="YYYY-MM-DD"
          @change="onDatePick"
        />
        <span class="date-label">{{ currentDate }} {{ weekLabel }}</span>
        <span class="venue-tip">{{ venueName || '未选场馆' }}</span>
      </div>
      <el-button :loading="loading" @click="loadAll">刷新</el-button>
    </div>

    <div class="legend">
      <span class="lg free">可约</span>
      <span class="lg booked">已预约</span>
      <span class="lg locked">锁场</span>
      <span class="lg group">团课（仅团课卡）</span>
    </div>

    <div class="grid-wrap" v-loading="loading">
      <div class="grid" :style="{ gridTemplateColumns: gridCols }">
        <div class="cell head corner">时段</div>
        <div v-for="c in courts" :key="c._id" class="cell head">
          <div class="court-name">{{ c.name }}</div>
        </div>

        <template v-for="t in timeSlots" :key="t">
          <div class="cell time-col">{{ t }}</div>
          <div
            v-for="c in courts"
            :key="c._id + t"
            class="cell slot"
            :class="cellClass(c.name, t)"
            @click="onCellClick(c.name, t)"
          >
            <template v-if="getGroupClass(c.name, t)">
              <div class="booked-user">{{ getGroupClass(c.name, t).name || '团课' }}</div>
              <div class="booked-status">
                团课 {{ getGroupClass(c.name, t).enrolled || 0 }}/{{ getGroupClass(c.name, t).capacity || '-' }}
                · {{ getGroupClass(c.name, t).coachName || '' }}
              </div>
            </template>
            <template v-else-if="getBooking(c.name, t)">
              <div class="booked-user">
                {{ isLockBooking(getBooking(c.name, t)) ? '锁场' : (getBooking(c.name, t).userName || getBooking(c.name, t).displayUser || '已预约') }}
              </div>
              <div class="booked-status">{{ isLockBooking(getBooking(c.name, t)) ? (getBooking(c.name, t).remark || '不可约') : formatCardStatus(getBooking(c.name, t)) }}</div>
              <div v-if="!isLockBooking(getBooking(c.name, t)) && getBooking(c.name, t).phone" class="booked-phone">{{ getBooking(c.name, t).phone }}</div>
            </template>
            <template v-else>
              <div class="free-text">可约</div>
              <div class="slot-price" v-if="getPrice(c.name, t) > 0">¥{{ getPrice(c.name, t) }}</div>
              <div class="slot-price muted" v-else>未定价</div>
            </template>
          </div>
        </template>
      </div>
      <div v-if="!loading && courts.length === 0" class="empty">当前场馆暂无场地</div>
    </div>

    <!-- 普通代客订场 -->
    <el-dialog v-model="bookVisible" :title="bookMode === 'lock' ? '锁场' : '代客订场'" width="500px" destroy-on-close>
      <div class="mode-switch">
        <el-button-group>
          <el-button :type="bookMode === 'book' ? 'primary' : ''" @click="bookMode = 'book'">预约</el-button>
          <el-button :type="bookMode === 'lock' ? 'warning' : ''" @click="bookMode = 'lock'">锁场</el-button>
        </el-button-group>
      </div>
      <el-form label-width="96px" v-if="bookMode === 'lock'">
        <el-form-item label="场馆"><el-input :model-value="venueName" disabled /></el-form-item>
        <el-form-item label="场地"><el-input v-model="bookForm.court" disabled /></el-form-item>
        <el-form-item label="日期"><el-input v-model="bookForm.date" disabled /></el-form-item>
        <el-form-item label="时段"><el-input v-model="bookForm.time" disabled /></el-form-item>
        <el-form-item label="原因"><el-input v-model="bookForm.remark" placeholder="维护 / 活动占用 / 内部预留" /></el-form-item>
      </el-form>
      <el-form label-width="96px" v-else>
        <el-form-item label="场馆"><el-input :model-value="venueName" disabled /></el-form-item>
        <el-form-item label="场地"><el-input v-model="bookForm.court" disabled /></el-form-item>
        <el-form-item label="日期"><el-input v-model="bookForm.date" disabled /></el-form-item>
        <el-form-item label="时段"><el-input v-model="bookForm.time" disabled /></el-form-item>
        <el-form-item label="客户" required>
          <div style="display:flex;gap:8px;width:100%">
            <el-select
              v-model="bookForm.memberKey"
              filterable remote clearable reserve-keyword
              placeholder="输入昵称/手机号/会员号搜索"
              :remote-method="searchMembers"
              :loading="memberLoading"
              style="flex:1"
              @change="onMemberChange"
            >
              <el-option v-for="m in memberOptions" :key="m._id" :label="memberLabel(m)" :value="m._id" />
            </el-select>
            <el-button @click="openReg('book')">注册新用户</el-button>
          </div>
        </el-form-item>
        <el-form-item label="收款金额">
          <el-input-number v-model="bookForm.payAmount" :min="0" :precision="2" :step="10" />
          <span class="price-hint">实收现金，记入本场金额和流水</span>
        </el-form-item>
        <el-form-item label="同时发卡">
          <el-select v-model="bookForm.issueTpl" clearable filterable placeholder="不发卡，只订场" style="width:100%" :loading="tplLoading" @change="onIssueTplChange">
            <el-option v-for="t in templates" :key="t._id" :label="tplLabel(t)" :value="t._id" />
          </el-select>
        </el-form-item>
        <el-form-item label="使用会员卡">
          <el-select
            v-model="bookForm.cardId"
            placeholder="不使用卡（现金/其他）"
            clearable style="width: 100%"
            :loading="cardLoading"
            :disabled="!bookForm.memberKey"
            @change="onCardChange"
          >
            <el-option label="不使用卡" value="" />
            <el-option
              v-for="c in usableCardsNormal"
              :key="c._id"
              :label="cardOptionLabel(c)"
              :value="c._id"
            />
          </el-select>
          <div class="card-tip">团课请点日程上的「团课」格子报名</div>
        </el-form-item>
        <el-form-item v-if="needCoachOnBook" label="选择教练" required>
          <el-select v-model="bookForm.coachId" placeholder="请选择教练" style="width: 100%" :loading="coachLoading">
            <el-option
              v-for="c in availableCoaches"
              :key="c._id"
              :label="c.busy ? `${c.name}（${c.busyReason}）` : c.name"
              :value="c._id"
              :disabled="c.busy"
            />
          </el-select>
        </el-form-item>
        <el-form-item label="备注">
          <el-input v-model="bookForm.remark" type="textarea" :rows="2" />
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="bookVisible = false">取消</el-button>
        <el-button v-if="bookMode === 'lock'" type="warning" :loading="saving" @click="submitLock">确认锁场</el-button>
        <el-button v-else type="primary" :loading="saving" @click="submitBook">确认订场</el-button>
      </template>
    </el-dialog>

    <!-- 团课报名 -->
    <el-dialog v-model="groupVisible" title="团课报名" width="500px" destroy-on-close>
      <el-form label-width="96px" v-if="currentGroup">
        <el-form-item label="团课">
          <el-input :model-value="currentGroup.name" disabled />
        </el-form-item>
        <el-form-item label="场地/时段">
          <el-input :model-value="`${currentGroup.court} · ${currentGroup.time}`" disabled />
        </el-form-item>
        <el-form-item label="教练">
          <el-input :model-value="currentGroup.coachName" disabled />
        </el-form-item>
        <el-form-item label="名额">
          <el-input :model-value="`${currentGroup.enrolled || 0} / ${currentGroup.capacity}`" disabled />
        </el-form-item>
        <el-form-item label="客户" required>
          <div style="display:flex;gap:8px;width:100%">
            <el-select
              v-model="groupForm.memberKey"
              filterable remote clearable reserve-keyword
              placeholder="搜索会员"
              :remote-method="searchMembers"
              :loading="memberLoading"
              style="flex:1"
              @change="onGroupMemberChange"
            >
              <el-option v-for="m in memberOptions" :key="m._id" :label="memberLabel(m)" :value="m._id" />
            </el-select>
            <el-button @click="openReg('group')">注册新用户</el-button>
          </div>
        </el-form-item>
        <el-form-item label="团课卡" required>
          <el-select
            v-model="groupForm.cardId"
            placeholder="请选择团课卡"
            style="width: 100%"
            :loading="cardLoading"
            :disabled="!groupForm.memberKey"
          >
            <el-option
              v-for="c in groupCards"
              :key="c._id"
              :label="cardOptionLabel(c)"
              :value="c._id"
            />
          </el-select>
          <div v-if="groupForm.memberKey && !cardLoading && groupCards.length === 0" class="card-tip error">
            该会员没有可用团课卡，无法报名
          </div>
        </el-form-item>
        <el-form-item label="备注">
          <el-input v-model="groupForm.remark" type="textarea" :rows="2" />
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="groupVisible = false">取消</el-button>
        <el-button type="primary" :loading="saving" @click="submitGroupEnroll">确认报名</el-button>
      </template>
    </el-dialog>

    <el-dialog v-model="regVisible" title="注册新用户" width="420px" destroy-on-close>
      <el-form label-width="80px">
        <el-form-item label="手机号" required><el-input v-model="regForm.phone" maxlength="11" /></el-form-item>
        <el-form-item label="昵称"><el-input v-model="regForm.nickName" placeholder="可不填，默认用手机号" /></el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="regVisible = false">取消</el-button>
        <el-button type="primary" :loading="regSaving" @click="submitReg">保存并选用</el-button>
      </template>
    </el-dialog>

    <!-- 普通预约详情 -->
    <el-dialog v-model="detailVisible" title="预约详情" width="480px">
      <el-form v-if="current" label-width="88px">
        <el-form-item label="订单号">{{ current.orderNo || '-' }}</el-form-item>
        <el-form-item label="场地">
          <div class="row-edit">
            <el-select v-if="editField==='court'" v-model="editForm.court" style="flex:1">
              <el-option v-for="c in courts" :key="c._id" :label="c.name" :value="c.name" />
            </el-select>
            <span v-else>{{ editForm.court }}</span>
            <el-button v-if="!isBookingDone(current)" link type="primary" @click="editField = editField==='court' ? '' : 'court'">{{ editField==='court' ? '完成' : '更改场地' }}</el-button>
          </div>
        </el-form-item>
        <el-form-item label="日期">
          <div class="row-edit">
            <el-date-picker v-if="editField==='datetime'" v-model="editForm.date" type="date" value-format="YYYY-MM-DD" />
            <span v-else>{{ shortDate(editForm.date) }}</span>
            <el-button v-if="!isBookingDone(current)" link type="primary" @click="editField = editField==='datetime' ? '' : 'datetime'">{{ editField==='datetime' ? '完成' : '更改日期/时段' }}</el-button>
          </div>
        </el-form-item>
        <el-form-item label="时段">
          <el-select v-if="editField==='datetime'" v-model="editForm.time" style="width:100%">
            <el-option v-for="t in timeSlots" :key="t" :label="t" :value="t" />
          </el-select>
          <span v-else>{{ editForm.time }}</span>
        </el-form-item>
        <el-form-item label="客户">
          <div v-if="!isLockBooking(current)">
            <el-button type="primary" link @click="goUser(current)">{{ current.userName || '-' }}</el-button>
          </div>
          <span v-else>锁场</span>
        </el-form-item>
        <el-form-item v-if="current && !isLockBooking(current)" label="手机号">
          <span class="phone-link" @click="goUser(current)">{{ current.phone || detailPhone || '暂无号码' }}</span>
        </el-form-item>
        <el-form-item label="使用卡">
          <div class="row-edit">
            <el-select v-if="editField==='card' && !isBookingDone(current)" v-model="editForm.cardId" clearable placeholder="不使用卡" style="flex:1" :loading="cardLoading" @change="onEditCardChange">
              <el-option label="不使用卡" value="" />
              <el-option v-for="c in memberCards" :key="c._id" :label="cardOptionLabel(c)" :value="c._id" />
            </el-select>
            <span v-else>{{ editForm.cardName || '未使用卡' }}</span>
            <el-button v-if="!isBookingDone(current)" link type="primary" @click="toggleEditCard">{{ editField==='card' ? '完成' : '更改卡券' }}</el-button>
          </div>
        </el-form-item>
        <el-form-item v-if="editNeedCoach && !isBookingDone(current)" label="教练">
          <el-select v-model="editForm.coachId" placeholder="请选择教练" style="width:100%" :loading="coachLoading">
            <el-option v-for="c in coachList" :key="c._id" :label="c.name" :value="c._id" />
          </el-select>
        </el-form-item>
        <el-form-item v-else-if="current && (current.coachName || current.coachId)" label="教练">
          <span>{{ current.coachName || current.coachId }}</span>
        </el-form-item>
        <el-form-item label="本次实收">
          <div class="row-edit">
            <el-input-number v-if="editField==='amount'" v-model="editForm.amount" :min="0" :precision="2" :step="10" />
            <span v-else>¥{{ Number(editForm.amount || 0).toFixed(2) }}</span>
            <el-button v-if="!isBookingDone(current)" link type="primary" @click="editField = editField==='amount' ? '' : 'amount'">{{ editField==='amount' ? '完成' : '修改金额' }}</el-button>
          </div>
        </el-form-item>
        <el-form-item label="备注">
          <div class="row-edit">
            <el-input v-if="editField==='remark'" v-model="editForm.remark" type="textarea" :rows="2" />
            <span v-else>{{ editForm.remark || '-' }}</span>
            <el-button v-if="!isBookingDone(current)" link type="primary" @click="editField = editField==='remark' ? '' : 'remark'">{{ editField==='remark' ? '完成' : '修改备注' }}</el-button>
          </div>
        </el-form-item>
        <el-form-item v-if="current && !isLockBooking(current) && !isBookingDone(current)" label="同时发卡">
          <el-select v-model="editForm.issueTpl" clearable filterable placeholder="不另发卡" style="width:100%" :loading="tplLoading" @change="onEditIssueTplChange">
            <el-option v-for="t in templates" :key="t._id" :label="tplLabel(t)" :value="t._id" />
          </el-select>
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button v-if="current && isLockBooking(current)" type="primary" @click="lockToBook">转为预约</el-button>
        <el-button v-if="canCancelBook && current && isLockBooking(current)" type="warning" @click="cancelBook">解锁</el-button>
        <el-button v-if="canRefundCashOnly" type="danger" plain :loading="saving" @click="refundCashKeepCard">只退款</el-button>
        <el-button v-if="canRefundCardOnly" type="warning" plain :loading="saving" @click="refundCardKeepCash">只退卡</el-button>
        <el-button v-if="canCancelBook && current && !isLockBooking(current)" type="warning" @click="cancelBook">取消预约</el-button>
        <el-button v-if="current && !isLockBooking(current) && !isBookingDone(current)" type="primary" :loading="saving" @click="saveDetail">保存修改</el-button>
        <span v-if="current && isBookingDone(current)" class="hint">已开始/已结束，不能改预约</span>
        <el-button @click="detailVisible = false">关闭</el-button>
      </template>
    </el-dialog>

    <el-dialog v-model="convertVisible" :title="convertMode === 'cash' ? '只退款 · 改发卡' : '只退卡 · 改收款'" width="440px">
      <el-form label-width="96px" v-if="current">
        <el-form-item label="客户">{{ current.userName || '-' }}</el-form-item>
        <template v-if="convertMode === 'cash'">
          <el-form-item label="原收款">¥{{ Number(current.amount || 0).toFixed(2) }}（将退回）</el-form-item>
          <el-form-item label="发放卡券" required>
            <el-select v-model="convertForm.issueTpl" filterable placeholder="选择要发的卡" style="width:100%" :loading="tplLoading" @change="onConvertTplChange">
              <el-option v-for="t in templates" :key="t._id" :label="tplLabel(t)" :value="t._id" />
            </el-select>
          </el-form-item>
          <el-form-item label="发卡金额" required>
            <el-input-number v-model="convertForm.issuePrice" :min="0" :precision="2" :step="10" />
          </el-form-item>
          <el-form-item v-if="convertNeedCoach" label="教练" required>
            <el-select v-model="convertForm.coachId" placeholder="教练卡请选教练" style="width:100%" :loading="coachLoading">
              <el-option v-for="c in coachList" :key="c._id" :label="c.name" :value="c._id" />
            </el-select>
          </el-form-item>
          <div class="card-tip">发卡后这张卡次数 −1 挂到本场，原现金记退款。</div>
        </template>
        <template v-else>
          <el-form-item label="原用卡">{{ current.cardName || current.card_name || '-' }}</el-form-item>
          <el-form-item label="收款金额" required>
            <el-input-number v-model="convertForm.cashAmount" :min="0" :precision="2" :step="10" style="width:180px" />
            <span class="price-hint">元</span>
          </el-form-item>
          <div class="card-tip">填好金额再点确定：卡次数退回，本场改记这笔现金。</div>
        </template>
      </el-form>
      <template #footer>
        <el-button @click="convertVisible = false">取消</el-button>
        <el-button type="primary" :loading="saving" @click="submitConvert">确认</el-button>
      </template>
    </el-dialog>
  </div>
</template>

<script setup>
import { ref, computed, onMounted, onUnmounted } from 'vue'
import { useRouter } from 'vue-router'
import { ElMessage, ElMessageBox } from 'element-plus'
import { can } from '../utils/auth'
const router = useRouter()
const canBook = can('book')
const canCancelBook = can('cancelBook')
const canEnrollGroup = can('enrollGroup')

const FALLBACK_SLOTS = [
  '08:00-09:00', '09:00-10:00', '10:00-11:00', '11:00-12:00',
  '14:00-15:00', '15:00-16:00', '16:00-17:00', '17:00-18:00',
  '18:00-19:00', '19:00-20:00', '20:00-21:00'
]
const timeSlots = ref(FALLBACK_SLOTS.slice())

const loading = ref(false)
const saving = ref(false)
const memberLoading = ref(false)
const cardLoading = ref(false)
const coachLoading = ref(false)
const courts = ref([])
const priceMap = ref({})
const bookings = ref([])
const groupClasses = ref([])
const memberOptions = ref([])
const memberCards = ref([])
const coachList = ref([])
const currentDate = ref(formatDate(new Date()))
const dateObj = ref(currentDate.value)
const venueName = ref(localStorage.getItem('venue_name') || '')

const bookMode = ref('book')
const bookVisible = ref(false)
const groupVisible = ref(false)
const detailVisible = ref(false)
const editField = ref('')
const editForm = ref({ court: '', date: '', time: '', cardId: '', cardName: '', amount: 0, remark: '', coachId: '', issueTpl: '' })
const editNeedCoach = ref(false)
const current = ref(null)
const detailPhone = ref('')
const currentGroup = ref(null)

const bookForm = ref({
  court: '', date: '', time: '', memberKey: '', userName: '', userOpenid: '', cardId: '', coachId: '', remark: '', payAmount: 0, issueTpl: ''
})
const templates = ref([])
const tplLoading = ref(false)
const regVisible = ref(false)
const regSaving = ref(false)
const regTarget = ref('book')
const regForm = ref({ phone: '', nickName: '' })
const groupForm = ref({
  memberKey: '', userName: '', userOpenid: '', cardId: '', remark: ''
})

const base = import.meta.env.DEV
  ? '/api'
  : 'https://cloud1-d3g0pb1qk028e3585-d862bc2-1312769671.ap-shanghai.app.tcloudbase.com'

const gridCols = computed(
  () => `100px repeat(${Math.max(courts.value.length, 1)}, minmax(120px, 1fr))`
)
const weekLabel = computed(() => {
  const w = ['日', '一', '二', '三', '四', '五', '六']
  const d = new Date(currentDate.value.replace(/-/g, '/'))
  return isNaN(d.getTime()) ? '' : `周${w[d.getDay()]}`
})

const selectedCard = computed(() => memberCards.value.find((c) => c._id === bookForm.value.cardId))
const isCoachCard = computed(() => selectedCard.value?.type === 'coach')
const selectedIssueTpl = computed(() => templates.value.find((t) => String(t._id) === String(bookForm.value.issueTpl)))
const needCoachOnBook = computed(() => isCoachCard.value || selectedIssueTpl.value?.type === 'coach')
function bookingAmount(b) {
  const n = Number(b && b.amount)
  return Number.isFinite(n) ? n : 0
}
function bookingHasCard(b) {
  if (!b) return false
  return !!(b.cardId || b.card_id || b.cardName || b.card_name)
}
const canRefundCashOnly = computed(() => {
  const b = current.value
  if (!b || isLockBooking(b) || isBookingDone(b)) return false
  return bookingAmount(b) > 0
})
const canRefundCardOnly = computed(() => {
  const b = current.value
  if (!b || isLockBooking(b) || isBookingDone(b)) return false
  return bookingHasCard(b)
})
const convertVisible = ref(false)
const convertMode = ref('cash')
const convertNeedCoach = ref(false)
const convertForm = ref({ issueTpl: '', issuePrice: 0, coachId: '', cashAmount: 0 })
function tplLabel(t) {
  const tag = t.type === 'coach' ? '教练卡' : t.type === 'times' ? '次卡' : t.type === 'time' ? '时间卡' : t.type === 'group' ? '团课卡' : ''
  return tag ? `${t.name}（${tag}）` : (t.name || '')
}

// 普通订场不用团课卡
const usableCardsNormal = computed(() =>
  memberCards.value.filter(
    (c) => c.type !== 'group' && isCardUsable(c, bookForm.value.date, bookForm.value.time)
  )
)
// 团课报名只用团课卡
const groupCards = computed(() =>
  memberCards.value.filter((c) => c.type === 'group' && c.status === 'active' && (c.remainingTimes || 0) > 0)
)

const availableCoaches = computed(() => {
  const date = bookForm.value.date
  const time = bookForm.value.time
  return coachList.value.map((c) => {
    const related = bookings.value.filter(
      (b) => b.status === 'booked' && b.coachId === c._id && b.date === date && b.time === time
    )
    const hasGroup = groupClasses.value.some(
      (g) => g.coachId === c._id && g.date === date && g.time === time && g.status === 'open'
    )
    if (related.length || hasGroup) {
      return { ...c, busy: true, busyReason: '该时段已占用' }
    }
    return { ...c, busy: false, busyReason: '' }
  })
})

function venueId() {
  return localStorage.getItem('venue_id') || ''
}
function formatDate(d) {
  const y = d.getFullYear()
  const m = String(d.getMonth() + 1).padStart(2, '0')
  const day = String(d.getDate()).padStart(2, '0')
  return `${y}-${m}-${day}`
}
function memberLabel(m) {
  const name = m.nickName || m.nickname || m.name || ''
  if (m.phone) return `${name}（${m.phone}）`
  if (m.userId) return `${name || m.userId}`
  return name || m._id
}
function cardOptionLabel(c) {
  const typeMap = { times: '次卡', coach: '教练卡', group: '团课', time: '时间卡' }
  const type = typeMap[c.type] || c.type
  if (c.type === 'times' || c.type === 'coach' || c.type === 'group') {
    return `${c.cardName}（${type} 剩${c.remainingTimes}次）`
  }
  return `${c.cardName}（${type}）`
}
function formatCardStatus(b) {
  if (!b || !b.cardName) return '已预约'
  let text = '卡:' + b.cardName
  const type = b.cardType || b.card_type || ''
  const isTimes = type === 'times' || type === 'coach' || type === 'group'
  const left = b.cardRemaining != null ? b.cardRemaining : b.remainingTimes
  const total = b.cardTotal != null ? b.cardTotal : b.totalTimes
  if (isTimes && left != null && left !== '') {
    text += total != null && total !== '' ? ` 剩${left}/${total}次` : ` 剩${left}次`
  }
  if (b.coachName) text += ` ·${b.coachName}`
  return text
}
function isCardUsable(card, dateStr, timeStr) {
  if (!card || card.status !== 'active') return false
  if (card.validFrom && dateStr < card.validFrom) return false
  if (card.validTo && dateStr > card.validTo) return false
  if (card.type === 'times' || card.type === 'coach' || card.type === 'group') {
    if ((card.remainingTimes || 0) <= 0) return false
  }
  const rule = card.timeRule || card.time_rule
  if (rule && typeof rule === 'string') {
    try { card.timeRule = JSON.parse(rule) } catch (e) {}
  }
  const ruleObj = card.timeRule || (rule && typeof rule === 'object' ? rule : null)
  if (ruleObj && Array.isArray(ruleObj.venueIds) && ruleObj.venueIds.length) {
    const vid = localStorage.getItem('venue_id') || ''
    if (vid && !ruleObj.venueIds.includes(vid)) return false
  }
  if (ruleObj && (ruleObj.mode === 'dates' || (ruleObj.dateRanges && ruleObj.dateRanges.length))) {
    const hit = (ruleObj.dateRanges || []).some((rg) => rg.start && rg.end && dateStr >= rg.start && dateStr <= rg.end)
    if (!hit) return false
  }
  if (ruleObj && ruleObj.mode !== 'unlimited' && ruleObj.mode !== 'all' && ruleObj.mode !== 'dates') {
    const d = new Date(dateStr.replace(/-/g, '/'))
    let weekday = d.getDay()
    if (weekday === 0) weekday = 7
    const slotStart = (timeStr || '').split('-')[0]
    if (ruleObj.mode === 'rules' && Array.isArray(ruleObj.rules)) {
      for (const r of ruleObj.rules) {
        if (!(r.weekdays || []).includes(weekday)) continue
        const slots = r.timeSlots || []
        if (!slots.length) {
          if (r.unlimited) return true
          continue
        }
        for (const s of slots) {
          if (slotStart >= s.start && slotStart < s.end) return true
        }
      }
      return false
    }
  }
  return true
}

async function post(path, body = {}) {
  const res = await fetch(base + path, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(body)
  })
  const text = await res.text()
  let data
  try { data = text ? JSON.parse(text) : {} } catch (e) {
    throw new Error('接口异常 ' + res.status)
  }
  const result = data.body
    ? typeof data.body === 'string' ? JSON.parse(data.body) : data.body
    : data
  if (!res.ok && result && result.ok == null) {
    throw new Error(result.msg || ('HTTP ' + res.status))
  }
  return result
}

function shortDate(v) {
  const s = String(v || '')
  const m = s.match(/^(\d{4}-\d{2}-\d{2})/)
  return m ? m[1] : s.slice(0, 10)
}
function getBooking(courtName, time) {
  return bookings.value.find(
    (b) => b.court === courtName && b.time === time && (b.status === 'booked' || b.status === 'locked') && !b.groupClassId
  )
}
function getGroupClass(courtName, time) {
  return groupClasses.value.find(
    (g) => g.court === courtName && g.time === time && g.status === 'open'
  )
}
function dateWeekday(dateStr) {
  if (!dateStr) return 1
  const d = new Date(String(dateStr).replace(/-/g, '/'))
  let w = d.getDay()
  if (w === 0) w = 7
  return w
}
function getPrice(courtName, time) {
  const key = `${courtName}_${time}`
  const v = priceMap.value[key]
  return v != null ? Number(v) : 0
}
function cellClass(courtName, time) {
  if (getGroupClass(courtName, time)) return 'group'
  const b = getBooking(courtName, time)
  if (b && isLockBooking(b)) return 'locked'
  if (b) return 'booked'
  return 'free'
}

function onCellClick(courtName, time) {
  const gc = getGroupClass(courtName, time)
  if (gc) {
    if (!canEnrollGroup) {
      ElMessage.warning('当前账号不能报名团课')
      return
    }
    currentGroup.value = gc
    groupForm.value = { memberKey: '', userName: '', userOpenid: '', cardId: '', remark: '' }
    memberOptions.value = []
    memberCards.value = []
    groupVisible.value = true
    return
  }
  const b = getBooking(courtName, time)
  if (b) {
    current.value = b
    detailPhone.value = b.phone || ''
    fillBookingPhone(b)
    editField.value = ''
    editForm.value = {
      court: b.court || '',
      date: shortDate(b.date),
      time: b.time || '',
      cardId: b.cardId || b.card_id || '',
      cardName: b.cardName || '',
      amount: Number(b.amount || 0),
      remark: b.remark || '',
      coachId: b.coachId || b.coach_id || '',
      issueTpl: ''
    }
    editNeedCoach.value = (b.cardType || b.card_type) === 'coach'
    if (editNeedCoach.value) loadCoaches()
    loadTemplates()
    detailVisible.value = true
    return
  }
  if (!canBook) {
    ElMessage.warning('当前账号只能查看预约')
    return
  }
  bookForm.value = {
    court: courtName,
    date: currentDate.value,
    time,
    memberKey: '',
    userName: '',
    userOpenid: '',
    cardId: '',
    coachId: '',
    remark: '',
    payAmount: getPrice(courtName, time) || 0,
    issueTpl: ''
  }
  bookMode.value = 'book'
  memberOptions.value = []
  memberCards.value = []
  bookVisible.value = true
  loadCoaches()
  loadTemplates()
}

async function loadCoaches() {
  coachLoading.value = true
  try {
    const result = await post('/adminGetCoaches', { venueId: venueId() })
    coachList.value = (result.list || []).filter(
      (c) => c.status === 'active' || c.status === '在职' || !c.status
    )
  } catch (e) {
    coachList.value = []
  } finally {
    coachLoading.value = false
  }
}

async function loadTemplates() {
  tplLoading.value = true
  try {
    const result = await post('/adminGetCardTemplates', { venueId: venueId() })
    templates.value = (result.list || []).filter((t) => t.status !== 'disabled')
  } catch (e) { templates.value = [] }
  finally { tplLoading.value = false }
}
function openReg(target) {
  regTarget.value = target || 'book'
  regForm.value = { phone: '', nickName: '' }
  regVisible.value = true
}
async function submitReg() {
  const phone = String(regForm.value.phone || '').replace(/\D/g, '')
  if (!/^1\d{10}$/.test(phone)) { ElMessage.warning('请填写11位手机号'); return }
  regSaving.value = true
  try {
    const result = await post('/adminRegisterUser', {
      phone,
      nickName: (regForm.value.nickName || '').trim(),
      venueId: venueId(),
      venueName: venueName.value
    })
    if (!result.ok || !result.user) { ElMessage.error(result.msg || '注册失败'); return }
    const u = result.user
    if (!memberOptions.value.find((x) => x._id === u._id)) memberOptions.value.unshift(u)
    if (regTarget.value === 'group') {
      groupForm.value.memberKey = u._id
      await onGroupMemberChange(u._id)
    } else {
      bookForm.value.memberKey = u._id
      await onMemberChange(u._id)
    }
    ElMessage.success(result.existed ? '该手机已是会员，已选用' : '已注册并选用')
    regVisible.value = false
  } catch (e) { ElMessage.error(e.message || '注册失败') }
  finally { regSaving.value = false }
}
async function searchMembers(query) {
  const q = (query || '').trim()
  if (!q) {
    memberOptions.value = []
    return
  }
  memberLoading.value = true
  try {
    let result
    try {
      result = await post('/adminGetUsers', { keyword: q })
    } catch (e) {
      result = await post('/adminSearchUsers', { keyword: q })
    }
    memberOptions.value = result.list || []
  } catch (e) {
    memberOptions.value = []
  } finally {
    memberLoading.value = false
  }
}

async function onMemberChange(id) {
  bookForm.value.cardId = ''
  bookForm.value.coachId = ''
  memberCards.value = []
  const m = memberOptions.value.find((x) => x._id === id)
  if (m) {
    bookForm.value.userName = m.nickName || m.nickname || m.name || m.userId || ''
    bookForm.value.userOpenid = m._openid || ''
    cardLoading.value = true
    try {
      const result = await post('/adminGetMemberCards', { userId: m._id, openid: m._openid || '' })
      memberCards.value = (result.list || []).filter((c) => c.status === 'active')
    } catch (e) {
      memberCards.value = []
    } finally {
      cardLoading.value = false
    }
  } else {
    bookForm.value.userName = ''
    bookForm.value.userOpenid = ''
  }
}

async function onGroupMemberChange(id) {
  groupForm.value.cardId = ''
  memberCards.value = []
  const m = memberOptions.value.find((x) => x._id === id)
  if (m) {
    groupForm.value.userName = m.nickName || m.nickname || m.name || m.userId || ''
    groupForm.value.userOpenid = m._openid || ''
    cardLoading.value = true
    try {
      const result = await post('/adminGetMemberCards', { userId: m._id, openid: m._openid || '' })
      memberCards.value = (result.list || []).filter((c) => c.status === 'active')
    } catch (e) {
      memberCards.value = []
    } finally {
      cardLoading.value = false
    }
  } else {
    groupForm.value.userName = ''
    groupForm.value.userOpenid = ''
  }
}

function isBookingDone(b) {
  if (!b) return false
  if (b.status === 'cancelled' || b.status === 'done' || b.status === 'completed') return true
  const day = shortDate(b.date)
  const t = String(b.time || '').split('-')[0] || '00:00'
  if (!day) return false
  const ts = new Date(day.replace(/-/g, '/') + ' ' + t).getTime()
  return !Number.isNaN(ts) && ts <= Date.now()
}
function onEditCardChange(id) {
  const card = memberCards.value.find((c) => String(c._id) === String(id))
  editForm.value.cardName = card ? (card.cardName || card.name || '') : ''
  editNeedCoach.value = !!(card && card.type === 'coach')
  if (editNeedCoach.value) loadCoaches()
  else editForm.value.coachId = ''
}
function onCardChange() {
  bookForm.value.coachId = ''
  if (needCoachOnBook.value) loadCoaches()
}
function onIssueTplChange() {
  if (needCoachOnBook.value) loadCoaches()
  loadTemplates()
}
function onEditIssueTplChange(id) {
  const tpl = templates.value.find((t) => String(t._id) === String(id))
  if (tpl && tpl.type === 'coach') {
    editNeedCoach.value = true
    loadCoaches()
  }
}

function isLockBooking(b) {
  if (!b) return false
  if (b.status === 'locked') return true
  if (b.source === 'lock' || b.source === 'court_lock') return true
  const name = String(b.userName || b.displayUser || '')
  const remark = String(b.remark || '')
  return name === '锁场' || remark.startsWith('[锁场]')
}
async function submitLock() {
  if (!venueId()) { ElMessage.warning('请先选择场馆'); return }
  saving.value = true
  const payload = {
    court: bookForm.value.court,
    date: bookForm.value.date,
    time: bookForm.value.time,
    venueId: venueId(),
    venueName: venueName.value,
    userName: '锁场',
    remark: '[锁场] ' + (bookForm.value.remark || '锁场'),
    operatorName: localStorage.getItem('admin_name') || '管理员',
    source: 'lock'
  }
  try {
    let result
    try {
      result = await post('/adminSaveBooking', { action: 'lock', data: payload })
    } catch (e) {
      result = { ok: false }
    }
    if (!result || result.ok === false) {
      result = await post('/adminSaveBooking', { action: 'add', data: payload })
    }
    if (!result.ok) {
      ElMessage.error(result.msg || '锁场失败')
      return
    }
    ElMessage.success('已锁场')
    bookVisible.value = false
    loadAll()
  } catch (e) {
    ElMessage.error('锁场失败：请把 adminSaveBooking.js 用上传 zip 覆盖部署')
  } finally {
    saving.value = false
  }
}
function lockToBook() {
  const b = current.value
  if (!b) return
  detailVisible.value = false
  bookForm.value = {
    court: b.court,
    date: shortDate(b.date) || currentDate.value,
    time: b.time,
    memberKey: '',
    userName: '',
    userOpenid: '',
    cardId: '',
    coachId: '',
    remark: '',
    payAmount: 0,
    issueTpl: '',
    convertLockId: b._id || b.id
  }
  bookMode.value = 'book'
  bookVisible.value = true
  loadCoaches()
  loadTemplates()
}
async function toggleEditCard() {
  if (editField.value === 'card') { editField.value = ''; return }
  editField.value = 'card'
  const uid = current.value && (current.value.memberId || current.value.userId || current.value.user_id)
  const openid = current.value && (current.value.openid || current.value._openid)
  if (!uid && !openid) return
  cardLoading.value = true
  try {
    const cards = await post('/adminGetMemberCards', { userId: uid, openid: openid || '' })
    memberCards.value = (cards.list || []).filter((c) => c.status === 'active' && c.type !== 'group')
  } finally { cardLoading.value = false }
}
async function saveDetail() {
  if (!current.value || !(current.value._id || current.value.id)) return
  if (isBookingDone(current.value)) {
    ElMessage.warning('已开始或已结束的预约不能改')
    return
  }
  const issueTpl = templates.value.find((t) => String(t._id) === String(editForm.value.issueTpl))
  if ((editNeedCoach.value || (issueTpl && issueTpl.type === 'coach')) && !editForm.value.coachId) {
    ElMessage.warning('教练卡请选择教练')
    return
  }
  const coach = coachList.value.find((c) => String(c._id) === String(editForm.value.coachId))
  saving.value = true
  try {
    const result = await post('/adminSaveBooking', {
      action: 'update',
      id: current.value._id || current.value.id,
      data: {
        court: editForm.value.court,
        date: editForm.value.date,
        time: editForm.value.time,
        remark: editForm.value.remark,
        amount: editForm.value.amount,
        cardId: editForm.value.cardId,
        coachId: editForm.value.coachId || '',
        coachName: coach ? coach.name : '',
        issueTemplateId: editForm.value.issueTpl || '',
        issuePrice: Number(editForm.value.amount) || 0,
        operatorName: localStorage.getItem('admin_name') || '管理员'
      }
    })
    if (!result.ok) { ElMessage.error(result.msg || '保存失败'); return }
    ElMessage.success('已保存')
    detailVisible.value = false
    loadAll()
  } catch (e) {
    ElMessage.error(e.message || '保存失败，请覆盖部署 adminSaveBooking')
  } finally { saving.value = false }
}
function openConvert(mode) {
  if (!current.value) return
  convertMode.value = mode
  convertNeedCoach.value = false
  convertForm.value = {
    issueTpl: '',
    issuePrice: 0,
    coachId: current.value.coachId || '',
    cashAmount: Number(current.value.amount || 0) || getPrice(current.value.court, current.value.time) || 0
  }
  loadTemplates()
  convertVisible.value = true
}
function refundCashKeepCard() { openConvert('cash') }
function refundCardKeepCash() { openConvert('card') }
function onConvertTplChange(id) {
  const tpl = templates.value.find((t) => String(t._id) === String(id))
  convertNeedCoach.value = !!(tpl && tpl.type === 'coach')
  if (convertNeedCoach.value) loadCoaches()
  if (tpl && tpl.price != null) convertForm.value.issuePrice = Number(tpl.price) || convertForm.value.issuePrice
}
async function submitConvert() {
  if (!current.value) return
  const op = localStorage.getItem('admin_name') || '管理员'
  if (convertMode.value === 'cash') {
    if (!convertForm.value.issueTpl) { ElMessage.warning('请选择要发的卡'); return }
    const tpl = templates.value.find((t) => String(t._id) === String(convertForm.value.issueTpl))
    if (tpl && tpl.type === 'coach' && !convertForm.value.coachId) { ElMessage.warning('教练卡请选择教练'); return }
    const coach = coachList.value.find((c) => String(c._id) === String(convertForm.value.coachId))
    saving.value = true
    try {
      const result = await post('/adminSaveBooking', {
        action: 'refund_cash_keep_card',
        id: current.value._id || current.value.id,
        data: {
          issueTemplateId: convertForm.value.issueTpl,
          issuePrice: convertForm.value.issuePrice,
          coachId: convertForm.value.coachId || '',
          coachName: coach ? coach.name : '',
          operatorName: op
        }
      })
      if (!result.ok) { ElMessage.error(result.msg || '操作失败'); return }
      ElMessage.success('已退原款并发卡扣次')
      convertVisible.value = false
      detailVisible.value = false
      loadAll()
    } catch (e) { ElMessage.error(e.message || '失败') }
    finally { saving.value = false }
    return
  }
  if (convertForm.value.cashAmount == null || Number(convertForm.value.cashAmount) < 0) {
    ElMessage.warning('请填写收款金额')
    return
  }
  saving.value = true
  try {
    const result = await post('/adminSaveBooking', {
      action: 'refund_card_keep_cash',
      id: current.value._id || current.value.id,
      data: {
        amount: convertForm.value.cashAmount,
        operatorName: op
      }
    })
    if (!result.ok) { ElMessage.error(result.msg || '操作失败'); return }
    ElMessage.success('已退卡并记现金')
    convertVisible.value = false
    detailVisible.value = false
    loadAll()
  } catch (e) { ElMessage.error(e.message || '失败') }
  finally { saving.value = false }
}
async function fillBookingPhone(b) {
  if (!b) return
  const uid = b.memberId || b.userId || b.user_id
  if (!uid) {
    detailPhone.value = b.phone || ''
    return
  }
  try {
    const result = await post('/adminGetUsers', { action: 'detail', userId: uid })
    const phone = result && result.user && result.user.phone
    if (phone) {
      detailPhone.value = phone
      current.value = { ...b, phone }
      return
    }
  } catch (e) {}
  detailPhone.value = b.phone || ''
}
function goUser(b) {
  const q = b.memberId || b.userId || b.phone || b.userName || ''
  if (!q) { ElMessage.warning('没有客户信息'); return }
  router.push({ path: '/users', query: { q: String(q), open: '1', from: 'bookings' } })
}
async function submitBook() {
  if (!bookForm.value.memberKey || !bookForm.value.userName) {
    ElMessage.warning('请选择会员')
    return
  }
  if (!venueId()) {
    ElMessage.warning('请先选择场馆')
    return
  }
  // 团课格子不可普通约
  if (getGroupClass(bookForm.value.court, bookForm.value.time)) {
    ElMessage.warning('该时段为团课，请从团课格子报名')
    return
  }

  let selCard = null
  if (bookForm.value.cardId) {
    selCard = memberCards.value.find((c) => c._id === bookForm.value.cardId)
    if (!selCard || selCard.type === 'group') {
      ElMessage.warning('普通订场请勿使用团课卡')
      return
    }
  }

  let coachName = ''
  const issueTpl = templates.value.find((t) => String(t._id) === String(bookForm.value.issueTpl))
  if ((selCard && selCard.type === 'coach') || (issueTpl && issueTpl.type === 'coach')) {
    if (!bookForm.value.coachId) {
      ElMessage.warning('教练卡必须选择教练')
      return
    }
    const coach = coachList.value.find((c) => c._id === bookForm.value.coachId)
    coachName = coach ? coach.name : ''
  }

  saving.value = true
  try {
    if (bookForm.value.convertLockId) {
      const unlocked = await post('/adminSaveBooking', { action: 'cancel', id: bookForm.value.convertLockId })
      if (!unlocked.ok) { ElMessage.error(unlocked.msg || '解锁失败'); return }
    }
    if (bookForm.value.issueTpl) {
      const tpl = templates.value.find((t) => t._id === bookForm.value.issueTpl)
      try {
        await ElMessageBox.confirm(
          `确认给 ${bookForm.value.userName} 发放「${tpl ? tpl.name : '会员卡'}」，实收 ¥${Number(bookForm.value.payAmount || 0).toFixed(2)}？`,
          '发卡确认',
          { type: 'warning', confirmButtonText: '确认发卡' }
        )
      } catch (e) { return }
    }
    const result = await post('/adminSaveBooking', {
      action: 'add',
      data: {
        orderNo: 'GT' + Date.now(),
        court: bookForm.value.court,
        date: bookForm.value.date,
        time: bookForm.value.time,
        userName: bookForm.value.userName,
        remark: bookForm.value.remark || '',
        status: 'booked',
        venueId: venueId(),
        venueName: venueName.value,
        memberId: bookForm.value.memberKey || '',
        memberOpenid: bookForm.value.userOpenid || '',
        cardId: selCard ? selCard._id : '',
        cardName: selCard ? selCard.cardName : '',
        cardType: selCard ? selCard.type : '',
        coachId: bookForm.value.coachId || '',
        coachName,
        amount: Number(bookForm.value.payAmount) || 0,
        issueTemplateId: bookForm.value.issueTpl || '',
        issuePrice: Number(bookForm.value.payAmount) || 0,
        operatorName: localStorage.getItem('admin_name') || '管理员'
      }
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '订场失败')
      return
    }
    ElMessage.success('订场成功')
    bookVisible.value = false
    loadAll()
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    saving.value = false
  }
}

async function submitGroupEnroll() {
  if (!currentGroup.value) return
  if (!groupForm.value.memberKey || !groupForm.value.userName) {
    ElMessage.warning('请选择会员')
    return
  }
  if (!groupForm.value.cardId) {
    ElMessage.warning('请选择团课卡')
    return
  }
  const card = memberCards.value.find((c) => c._id === groupForm.value.cardId)
  if (!card || card.type !== 'group') {
    ElMessage.warning('必须使用团课卡报名')
    return
  }
  if ((currentGroup.value.enrolled || 0) >= (currentGroup.value.capacity || 0)) {
    ElMessage.warning('团课名额已满')
    return
  }

  saving.value = true
  try {
    const result = await post('/adminEnrollGroupClass', {
      groupClassId: currentGroup.value._id,
      userId: groupForm.value.memberKey,
      userName: groupForm.value.userName,
      userOpenid: groupForm.value.userOpenid || '',
      cardId: card._id,
      remark: groupForm.value.remark || ''
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '报名失败')
      return
    }
    ElMessage.success('报名成功（已扣团课卡）')
    groupVisible.value = false
    loadAll()
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    saving.value = false
  }
}

async function cancelBook() {
  if (!current.value?._id) return
  try {
    await ElMessageBox.confirm(
      isLockBooking(current.value)
        ? '确定解锁该时段？'
        : ('确定取消该预约？' + (current.value.cardId ? '（将退还次数）' : '')),
      '提示',
      { type: 'warning' }
    )
    const result = await post('/adminSaveBooking', { action: 'cancel', id: current.value._id })
    if (!result.ok) {
      ElMessage.error(result.msg || '取消失败')
      return
    }
    ElMessage.success(isLockBooking(current.value) ? '已解锁' : '已取消')
    detailVisible.value = false
    loadAll()
  } catch (e) {
    if (e !== 'cancel') ElMessage.error(e.message || '失败')
  }
}

function shiftDate(delta) {
  const d = new Date(currentDate.value.replace(/-/g, '/'))
  d.setDate(d.getDate() + delta)
  currentDate.value = formatDate(d)
  dateObj.value = currentDate.value
  loadAll()
}
function goToday() {
  currentDate.value = formatDate(new Date())
  dateObj.value = currentDate.value
  loadAll()
}
function onDatePick(val) {
  if (val) {
    currentDate.value = val
    loadAll()
  }
}

async function loadAll() {
  venueName.value = localStorage.getItem('venue_name') || ''
  if (!venueId()) {
    courts.value = []
    bookings.value = []
    groupClasses.value = []
    ElMessage.warning('请先在顶部选择场馆')
    return
  }
  loading.value = true
  try {
    const wd = dateWeekday(currentDate.value)
    const [cRes, bRes, gRes, pRes, hRes] = await Promise.all([
      post('/adminGetCourts', { venueId: venueId() }),
      post('/adminGetBookings', { venueId: venueId(), date: currentDate.value }),
      post('/adminGetGroupClasses', { venueId: venueId(), date: currentDate.value }),
      post('/adminGetCourtPrices', { venueId: venueId(), weekday: wd }),
      post('/adminGetVenueHours', { venueId: venueId(), weekday: wd }).catch(() => ({ slots: [] }))
    ])
    const map = {}
    ;(pRes.list || []).forEach((row) => {
      map[`${row.court}_${row.timeSlot}`] = Number(row.price) || 0
    })
    priceMap.value = map
    let list = cRes.list || []
    const openList = list.filter(
      (c) => c.status === 'open' || c.status === '开门' || c.status === 1 || c.status === true
    )
    courts.value = openList.length ? openList : list
    bookings.value = (bRes.list || []).filter((b) => b.status === 'booked' || b.status === 'locked' || String(b.userName || '') === '锁场')
    groupClasses.value = (gRes.list || []).filter((g) => g.status === 'open')
    const savedSlots = (hRes && (hRes.byWeekday?.[wd] || hRes.slots)) || []
    const extra = []
    bookings.value.forEach((b) => { if (b.time && !savedSlots.includes(b.time) && !extra.includes(b.time)) extra.push(b.time) })
    groupClasses.value.forEach((g) => { if (g.time && !savedSlots.includes(g.time) && !extra.includes(g.time)) extra.push(g.time) })
    const next = (savedSlots.length ? savedSlots.slice() : FALLBACK_SLOTS.slice()).concat(extra).sort()
    timeSlots.value = next
  } catch (e) {
    ElMessage.error(e.message || '加载失败')
  } finally {
    loading.value = false
  }
}

onMounted(() => {
  loadAll()
  window.addEventListener('venue-changed', loadAll)
})
onUnmounted(() => {
  window.removeEventListener('venue-changed', loadAll)
})
</script>

<style scoped>
.schedule-page { min-height: 100%; }
.toolbar {
  display: flex; justify-content: space-between; align-items: center;
  flex-wrap: wrap; gap: 12px; margin-bottom: 8px;
}
.toolbar-left { display: flex; align-items: center; flex-wrap: wrap; gap: 10px; }
h2 { margin: 0; font-size: 20px; }
.date-label { color: #1a5c3a; font-weight: 600; font-size: 15px; }
.venue-tip { color: #888; font-size: 14px; }
.legend { display: flex; gap: 16px; margin-bottom: 12px; font-size: 13px; }
.lg { display: inline-flex; align-items: center; gap: 6px; }
.lg::before {
  content: ''; width: 12px; height: 12px; border-radius: 3px;
}
.lg.free::before { background: #f0f9f4; border: 1px solid #67c23a; }
.lg.booked::before { background: #fff3e0; border: 1px solid #e6a23c; }
.lg.locked::before { background: #eceff1; border: 1px solid #78909c; }
.lg.group::before { background: #fce4ec; border: 1px solid #ec407a; }
.grid-wrap {
  overflow: auto; background: #fff; border-radius: 12px; border: 1px solid #e8e8e8;
}
.grid { display: grid; min-width: 640px; }
.cell {
  border-right: 1px solid #f0f0f0; border-bottom: 1px solid #f0f0f0;
  padding: 10px 8px; min-height: 68px;
  display: flex; flex-direction: column; align-items: center; justify-content: center;
  font-size: 15px;
}
.head { background: #f7faf8; font-weight: 600; position: sticky; top: 0; z-index: 2; }
.corner { position: sticky; left: 0; z-index: 3; background: #f7faf8; }
.time-col { position: sticky; left: 0; background: #fafafa; z-index: 1; color: #555; font-size: 14px; }
.court-name { color: #1a5c3a; font-size: 15px; font-weight: 600; }
.slot { cursor: pointer; transition: background 0.15s; }
.slot.free { background: #f0f9f4; color: #67c23a; }
.slot.free:hover { background: #d8f3e4; }
.slot.booked { background: #fff3e0; color: #e6a23c; }
.slot.booked:hover { background: #ffe0b2; }
.slot.locked { background: #eceff1; color: #546e7a; }
.slot.locked:hover { background: #cfd8dc; }
.mode-switch { margin-bottom: 12px; }
.row-edit { display: flex; align-items: center; gap: 8px; width: 100%; }
.booked-phone { font-size: 11px; color: #1a5c3a; margin-top: 2px; }
.hint { color: #e6a23c; font-size: 13px; margin-right: 8px; }
.slot.group { background: #fce4ec; color: #c2185b; }
.slot.group:hover { background: #f8bbd0; }
.booked-user {
  font-weight: 600; font-size: 14px; max-width: 100%;
  overflow: hidden; text-overflow: ellipsis; white-space: nowrap;
}
.booked-status { font-size: 12px; margin-top: 4px; }
.free-text { font-size: 15px; }
.empty { text-align: center; color: #999; padding: 40px; font-size: 15px; }
.card-tip { font-size: 12px; color: #999; margin-top: 4px; }
.card-tip.error { color: #f56c6c; }
.slot-price {
  font-size: 12px;
  color: #1a5c3a;
  margin-top: 4px;
  font-weight: 600;
}
.slot-price.muted {
  color: #bbb;
  font-weight: 400;
}
.price-tag {
  color: #e6a23c;
  font-size: 18px;
  font-weight: 700;
}
.price-hint {
  margin-left: 8px;
  color: #999;
  font-size: 12px;
}
</style>
