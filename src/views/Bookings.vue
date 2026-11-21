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
      <el-button type="success" plain :loading="exporting" @click="openExportDialog">导出</el-button>
      <el-button :loading="loading" @click="loadAll">刷新</el-button>
    </div>

    <div class="legend">
      <span class="legend-title">颜色说明</span>
      <span class="lg free">绿色 = 未预约，可以订</span>
      <span class="lg booked">橙色 = 已预约，还没到点</span>
      <span class="lg past">灰色 = 已过期</span>
      <span class="lg backfill">紫色 = 补录，客人迟到后补记</span>
      <span class="lg locked">浅灰 = 锁场，不可约</span>
      <span class="lg group">粉色 = 团课</span>
      <span class="lg phone">蓝色数字 = 手机号</span>
    </div>

    <div class="grid-wrap" v-loading="loading">
      <div class="grid" :style="{ gridTemplateColumns: gridCols }">
        <div class="cell head corner">时段</div>
        <div v-for="c in courts" :key="c._id" class="cell head">
          <div class="court-name">{{ c.name }}</div>
          <div v-if="c.type === '共用' || c.type === '匹克球'" class="court-type">{{ c.type }}</div>
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
              <div class="booked-status">团课 {{ getGroupClass(c.name, t).enrolled || 0 }}/{{ getGroupClass(c.name, t).capacity || '-' }} · {{ getGroupClass(c.name, t).coachName || '' }}</div>
            </template>
            <template v-else-if="getBookings(c.name, t).length">
              <div v-if="getBookings(c.name, t).length > 1" class="conflict-tag">冲突 ×{{ getBookings(c.name, t).length }}</div>
              <template v-for="(bItem, bIdx) in getBookings(c.name, t)" :key="(bItem.id || bItem._id || bIdx) + '-' + t">
                <div class="booked-user" :class="{ 'conflict-extra': bIdx > 0 }">
                  <span v-if="isBackfill(bItem)" class="bf-tag">补录</span>
                  {{ isLockBooking(bItem) ? ('锁场' + (bItem.operatorName ? ' · ' + bItem.operatorName : '')) : (bItem.userName || bItem.displayUser || '已预约') }}
                </div>
                <div class="booked-status">{{ isLockBooking(bItem) ? (bItem.remark || '不可约') : formatCardStatus(bItem) }}</div>
                <div v-if="!isLockBooking(bItem)" class="booked-amt">{{ bookingMoneyText(bItem) }}</div>
                <div v-if="!isLockBooking(bItem) && bItem.remark" class="booked-remark">{{ bItem.remark }}</div>
                <div v-if="!isLockBooking(bItem) && bItem.phone" class="booked-phone">{{ bItem.phone }}</div>
              </template>
            </template>
            <template v-else>
              <div class="free-text">{{ slotPast(t) ? '可补录' : '可约' }}</div>
              <div class="slot-price" v-if="getPrice(c.name, t) > 0">¥{{ getPrice(c.name, t) }}</div>
              <div class="slot-price muted" v-else>未定价</div>
            </template>
          </div>
        </template>
      </div>
      <div v-if="!loading && courts.length === 0" class="empty">当前场馆暂无场地</div>
    </div>

    <!-- 普通代客订场 -->
    <el-dialog v-model="bookVisible" :title="bookMode === 'lock' ? '锁场' : (bookForm.backfill ? '补录订场' : '代客订场')" width="500px" destroy-on-close class="book-dialog">
      <div class="mode-switch">
        <el-button-group>
          <el-button :type="bookMode === 'book' ? 'primary' : ''" @click="bookMode = 'book'">预约</el-button>
          <el-button :type="bookMode === 'lock' ? 'warning' : ''" @click="bookMode = 'lock'">锁场</el-button>
        </el-button-group>
      </div>
      <div v-if="bookForm.backfill && bookMode !== 'lock'" class="backfill-tip">这是补录。时段已过，保存后格子会标成紫色「补录」。</div>
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
        <el-form-item v-if="bookCourtShared" label="项目">
          <el-radio-group v-model="bookForm.sport" @change="onBookSportChange">
            <el-radio-button value="tennis">网球</el-radio-button>
            <el-radio-button value="pickleball">匹克球</el-radio-button>
          </el-radio-group>
          <div class="card-tip">这是网球和匹克球共用场地，两种球同一时段只能约一种。</div>
        </el-form-item>
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
        <div v-if="!bookForm.cardId && !bookForm.issueTpl" class="amt-box">
          <div class="amt-title">本场收款 <span>现金订场，默认场地价 75 / 90</span></div>
          <el-form-item v-if="memberBalance > 0" label="用余额">
            <el-checkbox v-model="bookForm.useBalance">用余额抵扣本场</el-checkbox>
            <span class="price-hint">余额 ¥{{ memberBalance.toFixed(2) }}，只能订场，不能买卡，不进营业额</span>
          </el-form-item>
          <el-form-item v-if="!bookForm.useBalance" label="本场收款">
            <el-input-number v-model="bookForm.payAmount" :min="0" :precision="2" :step="10" />
            <span class="price-hint">改价提交时会再确认一次</span>
          </el-form-item>
          <div v-else class="amt-sum">本场用余额抵扣，不另收现金</div>
        </div>
        <div v-else class="amt-sum">已选会员卡，本场不收现金</div>
        <div class="amt-box">
          <div class="amt-title">② 同时卖卡并用来订这场 <span>选了卡会自动扣 1 次，本场不用再填钱</span></div>
          <el-form-item label="选择卡">
            <el-select v-model="bookForm.issueTpl" clearable filterable placeholder="不卖卡，只订场" style="width:100%" :loading="tplLoading" @change="onIssueTplChange">
              <el-option v-for="t in issuableTemplates" :key="t._id" :label="tplLabel(t)" :value="t._id" />
            </el-select>
          </el-form-item>
          <template v-if="bookForm.issueTpl">
            <el-form-item label="卖卡收款">
              <div class="pay-row"><span>美团</span><el-input-number v-model="bookForm.payMeituan" :min="0" :precision="2" :step="10" size="small" @change="sumBookIssue" /></div>
              <div class="pay-row"><span>抖音</span><el-input-number v-model="bookForm.payDouyin" :min="0" :precision="2" :step="10" size="small" @change="sumBookIssue" /></div>
              <div class="pay-row"><span>线下</span><el-input-number v-model="bookForm.payOffline" :min="0" :precision="2" :step="10" size="small" @change="sumBookIssue" /></div>
            </el-form-item>
            <div class="amt-sum">卖卡合计 ¥{{ Number(bookForm.issuePrice||0).toFixed(2) }}，订这场自动扣 1 次，本场不再另收</div>
              <div class="card-tip">过期格子也一样扣次。钱只填卖卡收款，不要填到本场收款。</div>
          </template>
        </div>
        <el-form-item v-if="!bookForm.issueTpl" label="使用会员卡">
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
        <div v-if="bookMode !== 'lock'" class="pay-total">
          <div>这次一共收</div>
          <b>¥{{ bookCollectTotal.toFixed(2) }}</b>
          <span v-if="bookForm.issueTpl">卖卡 ¥{{ Number(bookForm.issuePrice||0).toFixed(2) }}（本场用卡不另收）</span>
          <span v-else-if="bookForm.cardId">本场用卡，不收现金</span>
          <span v-else>本场 ¥{{ Number(bookForm.payAmount||0).toFixed(2) }}</span>
        </div>
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

    <el-dialog v-model="notifyVisible" title="预约成功通知" width="480px">
      <div style="margin-bottom:12px;color:#666;font-size:13px">固定话术已按实际预约生成，自定义话术可修改后保存</div>
      <el-input v-model="notifyText" type="textarea" :rows="6" />
      <div style="margin-top:12px;display:flex;gap:8px;align-items:center">
        <span style="font-size:13px;color:#999">自定义话术（{{ notifyType === 'coach' ? '教练课' : '普通订场' }}）</span>
        <el-input v-model="notifyCustom" placeholder="如：如取消或改期需提前2小时告知" style="flex:1" />
        <el-button @click="saveNotifyCustom">保存话术</el-button>
      </div>
      <template #footer>
        <el-button @click="notifyVisible = false">关闭</el-button>
        <el-button type="primary" @click="copyNotify">一键复制</el-button>
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
          <span class="phone-text">{{ current.phone || detailPhone || '暂无号码' }}</span>
          <el-button v-if="current.phone || detailPhone" link type="primary" @click="copyPhone(current.phone || detailPhone)">复制</el-button>
        </el-form-item>
        <el-form-item label="使用卡">
          <div class="row-edit">
            <el-select v-if="editField==='card'" v-model="editForm.cardId" clearable placeholder="不使用卡" style="flex:1" :loading="cardLoading" @change="onEditCardChange">
              <el-option label="不使用卡" value="" />
              <el-option v-for="c in memberCards" :key="c._id" :label="cardOptionLabel(c)" :value="c._id" />
            </el-select>
            <span v-else>{{ editForm.cardName || '未使用卡' }}</span>
            <el-button link type="primary" @click="toggleEditCard">{{ editField==='card' ? '完成' : '更改卡券' }}</el-button>
          </div>
        </el-form-item>
        <el-form-item v-if="current && isLockBooking(current)" label="锁场人">
          <span>{{ current.operatorName || '未记录' }}</span>
        </el-form-item>
        <el-form-item v-else-if="current && current.operatorName" label="操作人">
          <span>{{ current.operatorName }}</span>
        </el-form-item>
        <el-form-item v-if="current && isBackfill(current)" label="类型">
          <el-tag type="warning">补录</el-tag>
          <span class="price-hint" style="margin-left:8px">客人迟到后补记</span>
        </el-form-item>
        <el-form-item v-if="current && !isLockBooking(current)" label="收款">
          <div class="row-edit">
            <el-input-number v-model="editForm.amount" :min="0" :precision="2" :step="1" />
            <span class="price-hint">原显示 {{ bookingMoneyText(current) }} · 改这里会写改金额流水</span>
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
        <el-form-item label="备注">
          <div class="row-edit">
            <el-input v-if="editField==='remark'" v-model="editForm.remark" type="textarea" :rows="2" />
            <span v-else>{{ editForm.remark || '-' }}</span>
            <el-button v-if="!isBookingDone(current)" link type="primary" @click="editField = editField==='remark' ? '' : 'remark'">{{ editField==='remark' ? '完成' : '修改备注' }}</el-button>
          </div>
        </el-form-item>
        <el-form-item v-if="current && !isLockBooking(current) && !isBookingDone(current)" label="同时发卡">
          <el-select v-model="editForm.issueTpl" clearable filterable placeholder="不另发卡" style="width:100%" :loading="tplLoading" @change="onEditIssueTplChange">
            <el-option v-for="t in issuableTemplates" :key="t._id" :label="tplLabel(t)" :value="t._id" />
          </el-select>
        </el-form-item>
        <el-form-item v-if="editForm.issueTpl && !isBookingDone(current)" label="发卡来源">
          <div class="pay-row"><span>美团</span><el-input-number v-model="editForm.payMeituan" :min="0" :precision="2" :step="10" size="small" @change="sumEditIssue" /></div>
          <div class="pay-row"><span>抖音核销</span><el-input-number v-model="editForm.payDouyin" :min="0" :precision="2" :step="10" size="small" @change="sumEditIssue" /></div>
          <div class="pay-row"><span>线下金额</span><el-input-number v-model="editForm.payOffline" :min="0" :precision="2" :step="10" size="small" @change="sumEditIssue" /></div>
          <div class="pay-total edit-total">
            <div>这次一共收</div>
            <b>¥{{ Number(editForm.issuePrice||0).toFixed(2) }}</b>
            <span>美团 ¥{{ Number(editForm.payMeituan||0).toFixed(2) }} + 抖音 ¥{{ Number(editForm.payDouyin||0).toFixed(2) }} + 线下 ¥{{ Number(editForm.payOffline||0).toFixed(2) }}</span>
          </div>
        </el-form-item>
      </el-form>
      <p v-if="pendingRefund" class="hint pending-refund-tip">已提交退款申请（{{ pendingRefund.typeLabel || '退款' }}），等待管理员确认。点错了可以撤回。</p>
      <template #footer>
        <el-button v-if="current && isLockBooking(current)" type="primary" @click="lockToBook">转为预约</el-button>
        <el-button v-if="canCancelBook && current && isLockBooking(current)" type="warning" @click="cancelBook">解锁</el-button>
        <el-button v-if="canRefundCashOnly && !pendingRefund" type="danger" plain :loading="saving" @click="refundCashKeepCard">只退款</el-button>
        <el-button v-if="canRefundCardOnly && !pendingRefund" type="warning" plain :loading="saving" @click="refundCardKeepCash">只退卡</el-button>
        <el-button v-if="canCancelBook && current && !isLockBooking(current) && pendingRefund" type="info" :loading="saving" @click="withdrawRefund">撤回退款申请</el-button>
        <el-button v-if="canCancelBook && current && !isLockBooking(current) && !pendingRefund" type="warning" @click="cancelBook">取消预约</el-button>
        <el-button v-if="current && !isLockBooking(current) && !isBookingDone(current)" type="primary" :loading="saving" @click="saveDetail">保存修改</el-button>
        <el-button v-if="current && !isLockBooking(current) && isBookingDone(current)" type="primary" :loading="saving" @click="saveDetail">保存金额</el-button>
        <span v-if="current && isBookingDone(current)" class="hint">已开始/已结束：场地时段不能改，可改收款金额</span>
        <el-button @click="detailVisible = false">关闭</el-button>
      </template>
    </el-dialog>

    <el-dialog v-model="cancelChoiceVisible" title="取消预约" width="440px">
      <p>请选择处理方式：</p>
      <p>提交退款申请后，要等管理员在「退款申请」确认才会退款并取消预约。如果点错了，可在预约详情里撤回申请。</p>
      <p>只取消预约会立即取消，不退款。前台办理的退款也都会进入审批。</p>
      <template #footer>
        <el-button @click="cancelChoiceVisible = false">返回</el-button>
        <el-button type="warning" :loading="saving" @click="doCancelBook(true)">只取消预约（不退款）</el-button>
        <el-button type="danger" :loading="saving" @click="doCancelBook(false)">提交退款申请</el-button>
      </template>
    </el-dialog>

    <el-dialog v-model="convertVisible" :title="convertMode === 'cash' ? '只退款 · 改发卡' : '只退卡 · 改收款'" width="440px">
      <el-form label-width="96px" v-if="current">
        <el-form-item label="客户">{{ current.userName || '-' }}</el-form-item>
        <el-form-item label="发起人">{{ currentOperatorLabel() }}</el-form-item>
        <template v-if="convertMode === 'cash'">
          <el-form-item label="原收款">¥{{ Number(current.amount || 0).toFixed(2) }}（将退回）</el-form-item>
          <el-form-item label="发放卡券" required>
            <el-select v-model="convertForm.issueTpl" filterable placeholder="选择要发的卡" style="width:100%" :loading="tplLoading" @change="onConvertTplChange">
              <el-option v-for="t in issuableTemplates" :key="t._id" :label="tplLabel(t)" :value="t._id" />
            </el-select>
          </el-form-item>
          <el-form-item label="发卡来源">
            <div class="pay-row"><span>美团</span><el-input-number v-model="convertForm.payMeituan" :min="0" :precision="2" :step="10" size="small" @change="sumConvertIssue" /></div>
            <div class="pay-row"><span>抖音核销</span><el-input-number v-model="convertForm.payDouyin" :min="0" :precision="2" :step="10" size="small" @change="sumConvertIssue" /></div>
            <div class="pay-row"><span>线下金额</span><el-input-number v-model="convertForm.payOffline" :min="0" :precision="2" :step="10" size="small" @change="sumConvertIssue" /></div>
          </el-form-item>
          <el-form-item label="发卡金额" required>
            <el-input-number v-model="convertForm.issuePrice" :min="0" :precision="2" :step="10" />
            <span class="price-hint">自动加总，可改</span>
          </el-form-item>
          <el-form-item v-if="convertNeedCoach" label="教练" required>
            <el-select v-model="convertForm.coachId" placeholder="教练卡请选教练" style="width:100%" :loading="coachLoading">
              <el-option v-for="c in coachList" :key="c._id" :label="c.name" :value="c._id" />
            </el-select>
          </el-form-item>
          <div class="card-tip">提交后进入「退款申请」审批，管理员确认后才会退款，并把新卡扣 1 次挂到本场。</div>
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
      <el-dialog v-model="exportVisible" title="导出预约" width="520px">
      <el-form label-width="88px">
        <el-form-item label="场馆">
          <span>{{ venueName || '未选场馆' }}</span>
        </el-form-item>
        <el-form-item label="日期">
          <el-date-picker
            v-model="exportRange"
            type="daterange"
            value-format="YYYY-MM-DD"
            start-placeholder="开始"
            end-placeholder="结束"
            style="width: 100%"
          />
        </el-form-item>
        <el-form-item label="状态">
          <el-select v-model="exportStatuses" multiple collapse-tags placeholder="已预约 / 锁场" style="width: 100%">
            <el-option label="已预约" value="booked" />
            <el-option label="锁场" value="locked" />
            <el-option label="已取消" value="cancelled" />
            <el-option label="待支付" value="pending_pay" />
          </el-select>
        </el-form-item>
        <el-form-item label="关键词">
          <el-input v-model="exportKeyword" clearable placeholder="姓名 / 手机 / 场地 / 卡券 / 备注" />
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="exportVisible = false">取消</el-button>
        <el-button type="primary" :loading="exporting" @click="doExportBookings">导出</el-button>
      </template>
    </el-dialog>
</div>
</template>

<script setup>
import { ref, computed, onMounted, onUnmounted, nextTick } from 'vue'
import { useRouter, useRoute } from 'vue-router'
import { ElMessage, ElMessageBox } from 'element-plus'
import { can, roleKind, allowedVenueIds } from '../utils/auth'
import { cardAllowsCourt, courtSportKind } from '../utils/courtTypeRule.js'
import { todayYmd, downloadExcelHtml } from '../utils/exportTable.js'
const router = useRouter()
const route = useRoute()
const canBook = can('book')
const canCancelBook = can('cancelBook')
const canEnrollGroup = can('enrollGroup')

const FALLBACK_SLOTS = [
  '08:00-09:00', '09:00-10:00', '10:00-11:00', '11:00-12:00',
  '14:00-15:00', '15:00-16:00', '16:00-17:00', '17:00-18:00',
  '18:00-19:00', '19:00-20:00', '20:00-21:00', '21:00-22:00'
]
const timeSlots = ref(FALLBACK_SLOTS.slice())

const loading = ref(false)
const exporting = ref(false)
const exportVisible = ref(false)
const exportRange = ref([])
const exportStatuses = ref(['booked', 'locked'])
const exportKeyword = ref('')
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
const memberWallet = ref(0)
const memberBalance = ref(0)
const coachList = ref([])
const currentDate = ref(formatDate(new Date()))
const dateObj = ref(currentDate.value)
const venueName = ref(localStorage.getItem('venue_name') || '')

const bookMode = ref('book')
const bookVisible = ref(false)
const groupVisible = ref(false)
const detailVisible = ref(false)
const cancelChoiceVisible = ref(false)
const pendingRefund = ref(null)
const editField = ref('')
const editForm = ref({ court: '', date: '', time: '', cardId: '', cardName: '', amount: 0, remark: '', coachId: '', issueTpl: '', payMeituan: 0, payDouyin: 0, payOffline: 0, issuePrice: 0 })
const editNeedCoach = ref(false)
const current = ref(null)
const detailPhone = ref('')
const currentGroup = ref(null)

const bookForm = ref({
  court: '', date: '', time: '', memberKey: '', userName: '', userOpenid: '', cardId: '', coachId: '', remark: '', payAmount: 0, issueTpl: '', payMeituan: 0, payDouyin: 0, payOffline: 0, issuePrice: 0, backfill: false, useBalance: false, sport: 'tennis'
})
const templates = ref([])
const tplLoading = ref(false)
const regVisible = ref(false)
const regSaving = ref(false)
const regTarget = ref('book')
const regForm = ref({ phone: '', nickName: '' })
const notifyVisible = ref(false)
const notifyText = ref('')
const notifyCustom = ref('')
const notifyType = ref('normal')
async function showNotify(info) {
  notifyType.value = info.type || 'normal'
  let custom = notifyType.value === 'coach' ? '请准时到场，如需取消请提前告知教练' : '如取消或改期需提前2小时告知'
  try {
    const r = await post('/adminNotices', { action: 'getScripts' })
    if (r.ok && r.scripts && r.scripts[notifyType.value]) custom = r.scripts[notifyType.value]
  } catch (e) {}
  notifyCustom.value = custom
  const d = info.date || ''
  const parts = d.split('-')
  const weeks = ['日', '一', '二', '三', '四', '五', '六']
  let weekStr = ''
  if (parts.length === 3) {
    const dt = new Date(d.replace(/-/g, '/'))
    if (!isNaN(dt.getTime())) weekStr = '周' + weeks[dt.getDay()]
  }
  const dateStr = parts.length === 3 ? (Number(parts[1]) + '月' + Number(parts[2]) + '日' + weekStr) : d
  const court = info.court || ''
  const fixed = '已预约 ' + dateStr + ' ' + (info.time || '') + ' 时 ' + court
  notifyText.value = fixed + (notifyCustom.value ? '，' + notifyCustom.value : '')
  notifyVisible.value = true
}
async function saveNotifyCustom() {
  try {
    const r = await post('/adminNotices', { action: 'saveScript', type: notifyType.value, content: notifyCustom.value || '' })
    if (!r.ok) { ElMessage.error(r.msg || '保存失败'); return }
    const idx = notifyText.value.indexOf('，')
    const fixed = idx >= 0 ? notifyText.value.slice(0, idx) : notifyText.value
    notifyText.value = fixed + (notifyCustom.value ? '，' + notifyCustom.value : '')
    ElMessage.success('话术已保存')
  } catch (e) { ElMessage.error('保存失败') }
}
function copyNotify() {
  const text = notifyText.value || ''
  if (!text) { ElMessage.warning('没有可复制的内容'); return }
  const done = () => {
    ElMessage.success('已复制')
  }
  if (navigator.clipboard && navigator.clipboard.writeText) {
    navigator.clipboard.writeText(text).then(done).catch(() => {
      fallbackCopy(text)
    })
  } else {
    fallbackCopy(text)
  }
}
function fallbackCopy(text) {
  const ta = document.createElement('textarea')
  ta.value = text
  ta.style.position = 'fixed'
  ta.style.left = '-9999px'
  document.body.appendChild(ta)
  ta.select()
  try {
    document.execCommand('copy')
    ElMessage.success('已复制')
  } catch (e) {
    ElMessage.warning('复制失败，请手动选中复制')
  }
  document.body.removeChild(ta)
}
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
const bookCollectTotal = computed(() => {
  if (bookForm.value.issueTpl) return Number(bookForm.value.issuePrice) || 0
  if (bookForm.value.cardId) return 0
  return Number(bookForm.value.payAmount) || 0
})
const needCoachOnBook = computed(() => isCoachCard.value || selectedIssueTpl.value?.type === 'coach')
function bookingAmount(b) {
  const n = Number(b && b.amount)
  return Number.isFinite(n) ? n : 0
}
function bookingHasCard(b) {
  if (!b) return false
  return !!(b.cardId || b.card_id || b.cardName || b.card_name)
}
function currentOperatorLabel() {
  const name = localStorage.getItem('admin_name') || '管理员'
  const phone = localStorage.getItem('admin_phone') || ''
  if (phone && name && phone !== name) return name + '（' + phone + '）'
  return name
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
const convertForm = ref({ issueTpl: '', issuePrice: 0, coachId: '', cashAmount: 0, payMeituan: 0, payDouyin: 0, payOffline: 0 })
function tplLabel(t) {
  const tag = t.type === 'coach' ? '教练卡' : t.type === 'times' ? '次卡' : t.type === 'time' ? '时间卡' : t.type === 'group' ? '团课卡' : ''
  const times = Number(t.totalTimes || t.total_times || 0)
  const timesStr = (t.type === 'times' || t.type === 'coach' || t.type === 'group') && times > 0 ? ` ${times}次` : ''
  return tag ? `${t.name}（${tag}${timesStr}）` : (t.name || '')
}

// 普通订场不用团课卡
const usableCardsNormal = computed(() =>
  memberCards.value.filter(
    (c) => c.type !== 'group' && !isStoredCard(c) && isCardUsable(c, bookForm.value.date, bookForm.value.time)
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
const currentVenueId = ref(venueId())
function bookingCourtObj(name) {
  const n = String(name || bookForm.value.court || '')
  return (courts.value || []).find((c) => String(c.name) === n) || { name: n, type: '' }
}
function defaultSportForCourt(court) {
  const kind = courtSportKind(court)
  if (kind === 'pickleball') return 'pickleball'
  return 'tennis'
}
const bookCourtShared = computed(() => courtSportKind(bookingCourtObj(bookForm.value.court)) === 'both')
function onBookSportChange() {
  if (bookForm.value.cardId) {
    const card = memberCards.value.find((c) => c._id === bookForm.value.cardId)
    if (card && !isCardUsable(card, bookForm.value.date, bookForm.value.time)) bookForm.value.cardId = ''
  }
  if (bookForm.value.issueTpl) {
    const tpl = templates.value.find((x) => String(x._id) === String(bookForm.value.issueTpl))
    if (tpl && !templateAllowsBookSport(tpl)) bookForm.value.issueTpl = ''
  }
}
function templateAllowsBookSport(tpl) {
  const court = bookingCourtObj(bookForm.value.court)
  return cardAllowsCourt(
    { cardName: tpl.name, name: tpl.name, type: tpl.type, timeRule: tpl.timeRule || tpl.time_rule },
    court,
    { sport: bookForm.value.sport || '', remark: bookForm.value.remark || '' }
  )
}
function templateAllowedAtVenue(tpl, vid) {
  let rule = tpl && (tpl.timeRule || tpl.time_rule)
  if (typeof rule === 'string') {
    try { rule = JSON.parse(rule) } catch (e) { rule = {} }
  }
  const ids = (rule && Array.isArray(rule.venueIds) ? rule.venueIds : []).map((x) => String(x)).filter(Boolean)
  if (!ids.length) return true
  if (!vid) return false
  return ids.indexOf(String(vid)) >= 0
}
const issuableTemplates = computed(() => templates.value.filter((t) => templateAllowedAtVenue(t, currentVenueId.value)))
function syncIssueTplForVenue() {
  currentVenueId.value = venueId()
  const keep = (id) => !id || issuableTemplates.value.some((t) => String(t._id) === String(id))
  if (!keep(bookForm.value.issueTpl)) bookForm.value.issueTpl = ''
  if (!keep(editForm.value.issueTpl)) editForm.value.issueTpl = ''
  if (!keep(convertForm.value.issueTpl)) convertForm.value.issueTpl = ''
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
function bookingMoneyText(b) {
  if (!b) return ''
  const cash = Number(b.amount) || 0
  const src = String(b.source || '')
  if (b.cardId || b.cardName) {
    const total = Number(b.cardPrice) || 0
    const times = Number(b.cardTotal) || 0
    const unit = times > 0 ? Math.round((total / times) * 100) / 100 : total
    if (total > 0) return '用卡 ¥' + unit.toFixed(2) + ' / ¥' + total.toFixed(2)
    return '用卡，本场不收现金'
  }
  if (src === 'user') {
    if (cash > 0) return '小程序支付 ¥' + cash.toFixed(2)
    return '小程序原价支付'
  }
  if (cash > 0) return '本场现金 ¥' + cash.toFixed(2)
  return '本场 ¥0.00'
}
function formatCardStatus(b) {
  if (!b || !b.cardName) return String(b && b.remark || '').indexOf('匹克') >= 0 ? '匹克球' : '已预约'
  let text = '卡:' + b.cardName
  const type = b.cardType || b.card_type || ''
  const isTimes = type === 'times' || type === 'coach' || type === 'group'
  const left = b.cardRemaining != null ? b.cardRemaining : b.remainingTimes
  const total = b.cardTotal != null ? b.cardTotal : b.totalTimes
  if (isTimes && left != null && left !== '') {
    text += total != null && total !== '' ? ` 卡现剩${left}/${total}次` : ` 卡现剩${left}次`
  }
  if (String(b.remark || '').indexOf('匹克') >= 0) text = '匹克球 ' + text
  if (b.coachName) text += ` ·${b.coachName}`
  return text
}
function isStoredCard(c) {
  if (!c) return false
  const typ = String(c.type || '')
  const name = String(c.cardName || c.card_name || '')
  return typ === 'stored' || typ === '储值' || typ === 'wallet' || name.indexOf('储值') >= 0
}
function storedCardSum(list) {
  return (list || []).reduce((n, c) => {
    if (!isStoredCard(c) || (c.status && c.status !== 'active')) return n
    const have = Number(c.price) || Number(c.remainingTimes) || Number(c.remaining_times) || 0
    return n + (have > 0 ? have : 0)
  }, 0)
}
function refreshMemberSpendable() {
  memberBalance.value = Math.round((Number(memberWallet.value) + storedCardSum(memberCards.value)) * 100) / 100
}
function isCardUsable(card, dateStr, timeStr) {
  if (!card || card.status !== 'active') return false
  if (isStoredCard(card)) return false
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
  const courtName = bookForm.value.court
  if (courtName) {
    const court = (courts.value || []).find((c) => String(c.name) === String(courtName)) || { name: courtName, type: '' }
    if (!cardAllowsCourt(card, court, { sport: bookForm.value.sport || '', remark: bookForm.value.remark || '' })) return false
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
function isOutdoorSharedCourt(courtName) {
  return String(courtName || '').trim() === '外场'
}
function normCourt(name) {
  return String(name || '').trim().replace(/^发球机/u, '').replace(/场$/u, '')
}
function getBookings(courtName, time) {
  const n = normCourt(courtName)
  return bookings.value.filter(
    (b) => normCourt(b.court) === n && b.time === time && (b.status === 'booked' || b.status === 'locked') && !b.groupClassId
  )
}
function getBooking(courtName, time) {
  return getBookings(courtName, time)[0]
}
function getGroupClass(courtName, time) {
  const n = normCourt(courtName)
  return groupClasses.value.find(
    (g) => normCourt(g.court) === n && g.time === time && g.status === 'open'
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
  const t = String(time || '')
  const raw = String(courtName || '').trim()
  const n = normCourt(raw)
  const candidates = [`${raw}_${t}`, `${n}_${t}`, `${n}场_${t}`]
  for (const k of candidates) {
    const v = priceMap.value[k]
    if (v != null) return Number(v)
  }
  for (const k of Object.keys(priceMap.value || {})) {
    if (!k.endsWith('_' + t)) continue
    const courtKey = k.slice(0, k.length - t.length - 1)
    if (normCourt(courtKey) === n) return Number(priceMap.value[k]) || 0
  }
  return 0
}
function kindLabel(k) {
  return { cash: '现金', times: '次卡', coach: '教练', time: '时间卡', group: '团课', pickle: '匹克' }[k] || '预约'
}
function bookKind(b) {
  if (!b) return 'cash'
  if (isLockBooking(b)) return 'locked'
  if (String(b.remark || '').indexOf('匹克') >= 0) return 'pickle'
  const type = b.cardType || b.card_type || ''
  if (type === 'coach') return 'coach'
  if (type === 'time') return 'time'
  if (type === 'group') return 'group'
  if (type === 'times' || b.cardName || b.card_name) return 'times'
  return 'cash'
}
function cardLine(b) {
  if (!b) return ''
  if (!b.cardName && !b.card_name) return String(b.remark || '').indexOf('匹克') >= 0 ? '匹克球' : '现金'
  const name = b.cardName || b.card_name
  const type = b.cardType || b.card_type || ''
  const isTimes = type === 'times' || type === 'coach' || type === 'group'
  const left = b.cardRemaining != null ? b.cardRemaining : b.remainingTimes
  const total = b.cardTotal != null ? b.cardTotal : b.totalTimes
  let text = name
  if (isTimes && left != null && left !== '') text += total != null && total !== '' ? ` 现剩${left}/${total}` : ` 现剩${left}`
  return text
}
function isBackfill(b) {
  if (!b) return false
  return b.source === 'backfill' || String(b.remark || '').indexOf('[补录]') === 0
}
function shanghaiNow() {
  const d = new Date(Date.now() + 8 * 3600 * 1000)
  return { ymd: d.toISOString().slice(0, 10), hm: d.toISOString().slice(11, 16) }
}
function slotPast(time, dateYmd) {
  const day = String(dateYmd || currentDate.value || '').slice(0, 10)
  if (!day) return false
  const raw = String(time || '')
  const end = (raw.split('-')[1] || raw.split('-')[0] || '').trim()
  const now = shanghaiNow()
  if (day < now.ymd) return true
  if (day > now.ymd) return false
  return !!end && now.hm >= end
}
function cellClass(courtName, time) {
  if (getGroupClass(courtName, time)) return slotPast(time) ? 'group past' : 'group'
  const list = getBookings(courtName, time)
  const b = list[0]
  if (!b) return 'free'
  if (list.length > 1) return slotPast(time) ? 'conflict past' : 'conflict'
  if (isLockBooking(b)) return 'locked'
  if (isBackfill(b)) return 'backfill'
  return slotPast(time) ? 'past' : 'booked'
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
    loadPendingRefund(b._id || b.id)
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
    issueTpl: '',
    backfill: slotPast(time),
    sport: defaultSportForCourt(bookingCourtObj(courtName))
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
    syncIssueTplForVenue()
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
    memberWallet.value = Number(m.balance) || 0
    bookForm.value.useBalance = false
    refreshMemberSpendable()
    post('/adminGetUsers', { action: 'detail', userId: m._id }).then((d) => {
      memberWallet.value = Number(d.user && d.user.balance) || memberWallet.value
      refreshMemberSpendable()
    }).catch(() => {})
    cardLoading.value = true
    try {
      const result = await post('/adminGetMemberCards', { userId: m._id, openid: m._openid || '' })
      memberCards.value = (result.list || []).filter((c) => c.status === 'active')
    } catch (e) {
      memberCards.value = []
    } finally {
      cardLoading.value = false
      refreshMemberSpendable()
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
  if (bookForm.value.cardId) bookForm.value.payAmount = 0
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
    const result = await post('/adminSaveBooking', { action: 'lock', data: payload })
    if (!result || !result.ok) {
      ElMessage.error(result && result.msg ? result.msg : '锁场失败，请确认云函数已部署最新版')
      return
    }
    ElMessage.success('已锁场')
    bookVisible.value = false
    loadAll()
  } catch (e) {
    ElMessage.error('锁场失败：' + (e.message || '请把 adminSaveBooking.js 用上传 zip 覆盖部署'))
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
    convertLockId: b._id || b.id,
    sport: defaultSportForCourt(bookingCourtObj(b.court))
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
  if (isBookingDone(current.value) && (editForm.value.court !== current.value.court || editForm.value.time !== current.value.time || shortDate(editForm.value.date) !== shortDate(current.value.date))) {
    ElMessage.warning('已开始的预约不能改场地和时段，可以改用卡和金额')
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
        issuePrice: editForm.value.issueTpl ? (Number(editForm.value.issuePrice) || 0) : (Number(editForm.value.amount) || 0),
        payMeituan: Number(editForm.value.payMeituan) || 0,
        payDouyin: Number(editForm.value.payDouyin) || 0,
        payOffline: Number(editForm.value.payOffline) || 0,
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
  const op = currentOperatorLabel()
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
          payMeituan: Number(convertForm.value.payMeituan) || 0,
          payDouyin: Number(convertForm.value.payDouyin) || 0,
          payOffline: Number(convertForm.value.payOffline) || 0,
          coachId: convertForm.value.coachId || '',
          coachName: coach ? coach.name : '',
          operatorName: op
        }
      })
      if (!result.ok) { ElMessage.error(result.msg || '操作失败'); return }
      ElMessage.success(result.pending ? (result.msg || '已提交退款申请，等待管理员确认') : '已退原款并发卡扣次')
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
function copyPhone(phone) {
  const text = String(phone || '').trim()
  if (!text) return
  navigator.clipboard.writeText(text).then(() => ElMessage.success('已复制 ' + text)).catch(() => ElMessage.warning('复制失败，请手动选中'))
}
function goUser(b) {
  // 优先用手机号精确搜用户，避免旧 memberId/userId 对到错人
  const phone = String((b && b.phone) || detailPhone.value || '').trim()
  const q = phone || (b && (b.memberId || b.userId || b.userName)) || ''
  if (!q) { ElMessage.warning('没有客户信息'); return }
  router.push({ path: '/users', query: { q: String(q), open: '1', from: 'bookings' } })
}

function sumBookIssue() {
  const m = Number(bookForm.value.payMeituan) || 0
  const d = Number(bookForm.value.payDouyin) || 0
  const o = Number(bookForm.value.payOffline) || 0
  bookForm.value.issuePrice = +(m + d + o).toFixed(2)
}
function sumEditIssue() {
  const m = Number(editForm.value.payMeituan) || 0
  const d = Number(editForm.value.payDouyin) || 0
  const o = Number(editForm.value.payOffline) || 0
  editForm.value.issuePrice = +(m + d + o).toFixed(2)
}
function sumConvertIssue() {
  const m = Number(convertForm.value.payMeituan) || 0
  const d = Number(convertForm.value.payDouyin) || 0
  const o = Number(convertForm.value.payOffline) || 0
  convertForm.value.issuePrice = +(m + d + o).toFixed(2)
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
      if (!unlocked.ok && unlocked.msg !== '已取消') {
        ElMessage.error(unlocked.msg || '解锁失败')
        return
      }
    }
    const usingCard = !!(bookForm.value.cardId || bookForm.value.issueTpl)
    const slotPrice = getPrice(bookForm.value.court, bookForm.value.time) || 0
    const extraCash = Number(bookForm.value.payAmount) || 0
    if (!usingCard && slotPrice > 0 && Math.abs(extraCash - slotPrice) > 0.01) {
      try {
        await ElMessageBox.confirm(
          `场地标价是 ¥${slotPrice.toFixed(2)}，你改成了 ¥${extraCash.toFixed(2)}。确认按改后的价格收款？`,
          '改价确认',
          { type: 'warning', confirmButtonText: '确认改价' }
        )
      } catch (e) {
        if (e === 'cancel' || e === 'close') return
        return
      }
    }
    if (usingCard && extraCash > 0 && !bookForm.value.issueTpl) {
      try {
        await ElMessageBox.confirm(
          `这场已选会员卡，本场又收了现金 ¥${extraCash.toFixed(2)}。确认现金另计、卡另扣 1 次？`,
          '用卡又收款',
          { type: 'warning', confirmButtonText: '确认另收现金' }
        )
      } catch (e) {
        if (e === 'cancel' || e === 'close') return
        return
      }
    }
    if (bookForm.value.issueTpl) {
      const tpl = templates.value.find((t) => String(t._id) === String(bookForm.value.issueTpl))
      const issueAmt = Number(bookForm.value.issuePrice) || 0
      try {
        await ElMessageBox.confirm(
          `确认给 ${bookForm.value.userName} 发放「${tpl ? tpl.name : '会员卡'}」，实收 ¥${issueAmt.toFixed(2)}，并用这张卡订本场（扣 1 次）？`,
          '发卡确认',
          { type: 'warning', confirmButtonText: '确认发卡并扣次' }
        )
      } catch (e) {
        if (e === 'cancel' || e === 'close') return
        return
      }
    }
    const isBackfill = !!bookForm.value.backfill || slotPast(bookForm.value.time, bookForm.value.date)
    bookForm.value.backfill = isBackfill
    const result = await post('/adminSaveBooking', {
      action: 'add',
      data: {
        orderNo: 'GT' + Date.now(),
        court: bookForm.value.court,
        date: bookForm.value.date,
        time: bookForm.value.time,
        userName: bookForm.value.userName,
        sport: bookForm.value.sport || defaultSportForCourt(bookingCourtObj(bookForm.value.court)),
        remark: remarkWithSport(bookForm.value.remark, bookForm.value.sport, isBackfill),
        backfill: isBackfill,
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
        amount: usingCard || bookForm.value.useBalance ? 0 : (Number(bookForm.value.payAmount) || 0),
        useBalance: !!(bookForm.value.useBalance && !usingCard),
        issueTemplateId: bookForm.value.issueTpl || '',
        issuePrice: bookForm.value.issueTpl ? (Number(bookForm.value.issuePrice) || 0) : (Number(bookForm.value.payAmount) || 0),
        useIssuedCard: !!(bookForm.value.issueTpl && !selCard),
        phone: (memberOptions.value.find((x) => x._id === bookForm.value.memberKey) || {}).phone || '',
        payMeituan: Number(bookForm.value.payMeituan) || 0,
        payDouyin: Number(bookForm.value.payDouyin) || 0,
        payOffline: Number(bookForm.value.payOffline) || 0,
        operatorName: localStorage.getItem('admin_name') || '管理员'
      }
    })
    if (!result.ok) {
      ElMessage.error((result.msg || '订场失败') + (result.fnVer ? ' [' + result.fnVer + ']' : ''))
      return
    }
    ElMessage.success('订场成功')
    bookVisible.value = false
    showNotify({
      date: bookForm.value.date,
      time: bookForm.value.time,
      court: bookForm.value.court,
      type: (selCard && selCard.type === 'coach') || (issueTpl && issueTpl.type === 'coach') ? 'coach' : 'normal'
    })
    setTimeout(() => loadAll(), 300)
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

function bookingNeedsMoneyRefund(b) {
  if (!b) return false
  if (Number(b.amount || 0) > 0) return true
  if (b.payMethod === '小程序支付' || b.pay_method === '小程序支付') return true
  if (b.payOrderId || b.pay_order_id) return true
  return false
}

async function loadPendingRefund(bookingId) {
  pendingRefund.value = null
  if (!bookingId) return
  try {
    const r = await post('/adminSaveBooking', { action: 'getPendingRefund', id: bookingId })
    pendingRefund.value = (r && r.ok && r.request) ? r.request : null
  } catch (e) {
    pendingRefund.value = null
  }
}

async function withdrawRefund() {
  if (!current.value?._id || !pendingRefund.value) return
  try {
    await ElMessageBox.confirm('确定撤回这笔退款申请？撤回后预约仍保留，可以重新选择退款或只取消。', '撤回退款申请', { type: 'warning', confirmButtonText: '撤回申请' })
    saving.value = true
    const result = await post('/adminSaveBooking', {
      action: 'withdraw_refund_request',
      id: current.value._id,
      requestId: pendingRefund.value.id,
      data: { operatorName: currentOperatorLabel() }
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '撤回失败')
      return
    }
    ElMessage.success(result.msg || '已撤回退款申请')
    pendingRefund.value = null
    loadAll()
  } catch (e) {
    if (e !== 'cancel') ElMessage.error(e.message || '撤回失败')
  } finally {
    saving.value = false
  }
}

async function cancelBook() {
  if (!current.value?._id) return
  if (isLockBooking(current.value)) {
    try {
      await ElMessageBox.confirm('确定解锁该时段？', '取消预约', { type: 'warning', confirmButtonText: '确认取消' })
      await doCancelBook(false)
    } catch (e) {
      if (e !== 'cancel') ElMessage.error(e.message || '失败')
    }
    return
  }
  if (bookingNeedsMoneyRefund(current.value)) {
    cancelChoiceVisible.value = true
    return
  }
  try {
    await ElMessageBox.confirm(
      '确定取消该预约？' + (current.value.cardId ? '用卡将退回 1 次。' : ''),
      '取消预约',
      { type: 'warning', confirmButtonText: '确认取消' }
    )
    await doCancelBook(false)
  } catch (e) {
    if (e !== 'cancel') ElMessage.error(e.message || '失败')
  }
}

async function doCancelBook(cancelOnly) {
  if (!current.value?._id) return
  saving.value = true
  try {
    const result = await post('/adminSaveBooking', {
      action: 'cancel',
      id: current.value._id,
      cancelOnly: !!cancelOnly,
      data: {
        operatorName: currentOperatorLabel(),
        cancelOnly: !!cancelOnly
      }
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '取消失败')
      return
    }
    cancelChoiceVisible.value = false
    if (isLockBooking(current.value)) {
      ElMessage.success('已解锁')
      detailVisible.value = false
      loadAll()
      return
    }
    if (result.pending) {
      ElMessage.success(result.msg || '已提交退款申请，等待管理员确认')
      await loadPendingRefund(current.value._id)
      loadAll()
      return
    }
    ElMessage.success(cancelOnly ? '已取消预约，未退款' : '已取消')
    detailVisible.value = false
    loadAll()
  } catch (e) {
    ElMessage.error(e.message || '失败')
  } finally {
    saving.value = false
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


function remarkWithSport(remark, sport, isBackfill) {
  let text = String(remark || '')
  if ((sport === 'pickleball' || sport === '匹克球') && text.indexOf('匹克') < 0 && text.indexOf('丁克') < 0) {
    text = text ? ('匹克球 ' + text) : '匹克球'
  }
  if (isBackfill) text = '[补录]' + (text ? ' ' + text : '')
  return text
}
function openExportDialog() {
  exportRange.value = [currentDate.value, currentDate.value]
  exportStatuses.value = ['booked', 'locked']
  exportKeyword.value = ''
  exportVisible.value = true
}
function bookingPayMethod(b) {
  if (b.payMethod) return b.payMethod
  if (b.cardId || b.cardName) return '会员卡'
  if (String(b.source || '') === 'user') return Number(b.amount) > 0 ? '小程序支付' : '小程序'
  if (Number(b.amount) > 0) return '现金'
  return '未收款'
}
function bookingStatusLabel(b) {
  return b.statusLabel || ({ booked: '已预约', locked: '锁场', cancelled: '已取消', pending_pay: '待支付', done: '已完成', completed: '已完成' }[b.status] || b.status || '')
}
async function doExportBookings() {
  const range = exportRange.value || []
  const dateFrom = range[0] || currentDate.value
  const dateTo = range[1] || currentDate.value
  if (!dateFrom || !dateTo) {
    ElMessage.warning('请选择日期')
    return
  }
  if (!venueId()) {
    ElMessage.warning('请先选择场馆')
    return
  }
  exporting.value = true
  try {
    const result = await post('/adminGetBookings', {
      action: 'export',
      venueId: venueId(),
      dateFrom,
      dateTo,
      statusList: (exportStatuses.value && exportStatuses.value.length) ? exportStatuses.value : ['booked', 'locked'],
      keyword: (exportKeyword.value || '').trim(),
      export: true,
      pageSize: 20000
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '导出失败')
      return
    }
    const rows = (result.list || []).filter((b) => !isOutdoorSharedCourt(b.court))
    if (!rows.length) {
      ElMessage.warning('当前筛选没有可导出的预约')
      return
    }
    const header = ['场馆', '日期', '时段', '场地', '项目', '客户', '手机号', '状态', '金额', '支付方式', '卡券', '教练', '操作人', '来源', '补录', '备注']
    const tableRows = rows.map((b) => [
      b.venueName || venueName.value || '',
      b.date || '',
      b.time || '',
      b.court || '',
      b.sport || (String(b.remark || '').indexOf('匹克') >= 0 ? '匹克球' : '网球'),
      b.userName || '',
      b.phone || '',
      bookingStatusLabel(b),
      Number(b.amount) ? Number(b.amount).toFixed(2) : '0.00',
      bookingPayMethod(b),
      b.cardName || '',
      b.coachName || '',
      b.operatorName || '',
      b.source === 'user' ? '小程序' : (b.source || '后台'),
      (b.backfill || String(b.remark || '').indexOf('补录') >= 0) ? '是' : '',
      b.remark || ''
    ])
    const fname = '预约导出-' + (dateFrom === dateTo ? dateFrom : dateFrom + '_' + dateTo) + '.xls'
    downloadExcelHtml(fname, '预约', header, tableRows)
    const more = result.truncated ? '（已达上限，仅导出前 ' + rows.length + ' 条）' : ''
    ElMessage.success('已导出 ' + rows.length + ' 条' + more)
    exportVisible.value = false
  } catch (e) {
    ElMessage.error(e.message || '导出失败')
  } finally {
    exporting.value = false
  }
}
async function loadAll() {
  venueName.value = localStorage.getItem('venue_name') || ''
  if (!venueId()) {
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
    let list = (cRes.list || []).filter((c) => !isOutdoorSharedCourt(c.name))
    const openList = list.filter(
      (c) => c.status === 'open' || c.status === '开门' || c.status === 1 || c.status === true
    )
    courts.value = openList.length ? openList : list
    bookings.value = (bRes.list || []).filter((b) => !isOutdoorSharedCourt(b.court) && (b.status === 'booked' || b.status === 'locked' || String(b.userName || '') === '锁场'))
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

function canUseVenue(vid) {
  if (!vid) return true
  if (roleKind() === 'admin') return true
  const allow = allowedVenueIds()
  if (!allow.length) return true
  return allow.map(String).includes(String(vid))
}
function resolveSlotTime(court, time) {
  const exact = String(time || '').trim()
  if (!exact) return ''
  if (getGroupClass(court, exact) || getBooking(court, exact) || timeSlots.value.includes(exact)) return exact
  const m = exact.match(/^(\d{1,2}):(\d{2})\s*-\s*(\d{1,2}):(\d{2})/)
  if (m) {
    const start = String(m[1]).padStart(2, '0') + ':' + m[2]
    const hit = timeSlots.value.find((slot) => slot === start + '-' + String(Number(m[1]) + 1).padStart(2, '0') + ':' + m[2] || String(slot).startsWith(start + '-'))
    if (hit) return hit
  }
  return exact
}
async function applyIncomingSlot() {
  const q = route.query || {}
  const date = shortDate(q.date || '')
  const court = String(q.court || '')
  const time = String(q.time || '')
  const vid = String(q.venueId || q.venue_id || '')
  const vname = String(q.venueName || q.venue_name || '')
  const bookingId = String(q.bookingId || q.booking_id || '')
  if (!date && !court && !time && !vid) {
    await loadAll()
    return
  }
  if (vid && String(vid) !== String(venueId())) {
    if (!canUseVenue(vid)) {
      ElMessage.warning('当前账号不能查看该场馆的预约管理')
      await loadAll()
      return
    }
    window.dispatchEvent(new CustomEvent('set-admin-venue', { detail: { venueId: vid, venueName: vname } }))
    currentVenueId.value = vid
    if (vname) venueName.value = vname
  }
  if (date) {
    currentDate.value = date
    dateObj.value = date
  }
  await loadAll()
  await nextTick()
  if (!court || !time) return
  const slot = resolveSlotTime(court, time)
  if (getGroupClass(court, slot) || getBooking(court, slot)) {
    onCellClick(court, slot)
    return
  }
  const byId = bookingId ? (bookings.value || []).find((b) => String(b._id || b.id) === bookingId) : null
  if (byId && byId.time) {
    onCellClick(byId.court || court, byId.time)
    return
  }
  ElMessage.info('已跳到当天日程，但这条预约现在不在格子里（可能已取消）')
}
onMounted(() => {
  applyIncomingSlot()
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
.legend { display: flex; flex-wrap: wrap; align-items: center; gap: 14px 18px; margin-bottom: 12px; padding: 8px 12px; background: #fff; border: 1px solid #eee; border-radius: 8px; font-size: 13px; color: #333; }
.legend-title { font-weight: 700; color: #1a5c3a; margin-right: 4px; }
.lg { display: inline-flex; align-items: center; gap: 6px; }
.lg::before {
  content: ''; width: 12px; height: 12px; border-radius: 3px;
}
.lg.free::before { background: #e8f5e9; border: 1px solid #43a047; }
.lg.booked::before { background: #fff3e0; border: 1px solid #ef6c00; }
.lg.past::before { background: #eceff1; border: 1px solid #90a4ae; }
.lg.locked::before { background: #f5f5f5; border: 1px solid #9e9e9e; }
.lg.group::before { background: #fce4ec; border: 1px solid #ec407a; }
.lg.phone::before { background: #1565c0; border: 1px solid #1565c0; }
.grid-wrap {
  overflow: auto; background: #fff; border-radius: 12px; border: 1px solid #e8e8e8;
}
.grid { display: grid; min-width: 640px; }
.cell {
  border-right: 1px solid #eee; border-bottom: 1px solid #eee;
  padding: 10px 8px; min-height: 72px;
  display: flex; flex-direction: column; align-items: center; justify-content: center;
  font-size: 15px;
}
.head { background: #f7faf8; font-weight: 600; position: sticky; top: 0; z-index: 2; align-items: center; }
.corner { position: sticky; left: 0; z-index: 3; background: #f7faf8; }
.time-col { position: sticky; left: 0; background: #fafafa; z-index: 1; color: #555; font-size: 14px; align-items: center; }
.court-name { color: #1a5c3a; font-size: 15px; font-weight: 600; }
.slot { cursor: pointer; transition: background 0.15s; }
.slot.free { background: #e8f5e9; color: #2e7d32; }
.slot.free:hover { background: #c8e6c9; }
.slot.booked { background: #ffe0b2; color: #e65100; }
.slot.booked:hover { background: #ffcc80; }
.slot.past { background: #eceff1; color: #78909c; }
.slot.past:hover { background: #cfd8dc; }
.slot.locked { background: #f5f5f5; color: #9e9e9e; }
.slot.locked:hover { background: #eeeeee; }
.slot.group { background: #fce4ec; color: #c2185b; }
.slot.group.past { background: #f3e5e8; color: #ad8490; }
.slot.group:hover { background: #f8bbd0; }
.booked-user { font-weight: 700; font-size: 15px; max-width: 100%; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; }
.booked-status { font-size: 12px; margin-top: 3px; opacity: 0.9; }
.booked-phone { font-size: 15px; font-weight: 700; margin-top: 4px; color: #1565c0; letter-spacing: 0.3px; }
.mode-switch { margin-bottom: 12px; }
.row-edit { display: flex; align-items: center; gap: 8px; width: 100%; }
.phone-text { user-select: text; margin-right: 8px; }
.hint { color: #e6a23c; font-size: 13px; margin-right: 8px; }
.pending-refund-tip { margin: 8px 0 0; line-height: 1.5; }
.slot.group { background: #fce4ec; color: #c2185b; }
.slot.group:hover { background: #f8bbd0; }
.booked-user {
  font-weight: 600; font-size: 14px; max-width: 100%;
  overflow: hidden; text-overflow: ellipsis; white-space: nowrap;
}
.booked-status { font-size: 12px; margin-top: 4px; }
.free-text { font-size: 15px; font-weight: 600; }
.empty { text-align: center; color: #999; padding: 40px; font-size: 15px; }
.card-tip { font-size: 12px; color: #999; margin-top: 4px; }
.card-tip.error { color: #f56c6c; }
.slot-price {
  font-size: 13px;
  color: #2e7d32;
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
.pay-row { display: flex; align-items: center; gap: 8px; margin-bottom: 6px; }
.pay-row span { width: 64px; color: #666; font-size: 13px; }
.amt-box { background: #f7faf8; border: 1px solid #e3eee6; border-radius: 8px; padding: 8px 10px 2px; margin-bottom: 10px; }
.amt-title { font-weight: 700; color: #1a5c3a; margin-bottom: 6px; }
.amt-title span { font-weight: 400; color: #888; font-size: 12px; margin-left: 6px; }
.amt-sum { background: #fff; border-radius: 6px; padding: 8px 10px; margin: 0 0 8px; font-size: 13px; color: #333; font-weight: 600; }
.pay-total { display: flex; align-items: baseline; gap: 8px; margin-right: auto; background: #1a5c3a; color: #fff; border-radius: 8px; padding: 8px 12px; }
.pay-total b { font-size: 22px; }
.pay-total span { font-size: 12px; opacity: .85; }
.book-dialog .el-dialog__footer { display: flex; align-items: center; gap: 8px; }
.edit-total { margin-top: 8px; }
.booked-amt { font-size: 12px; color: #1a5c3a; font-weight: 700; margin-top: 2px; }
.booked-remark { font-size: 11px; color: #8a5a00; margin-top: 1px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; }
.lg.backfill::before { background: #f3e5f5; border: 1px solid #8e24aa; }
.slot.backfill { background: #f3e5f5; color: #6a1b9a; border: 1px dashed #8e24aa; }
.slot.backfill:hover { background: #e1bee7; }
.slot.conflict { background: #ffcdd2; color: #b71c1c; border: 1px solid #e53935; }
.slot.conflict:hover { background: #ef9a9a; }
.slot.conflict.past { background: #ffcdd2; color: #c62828; opacity: 0.9; }
.conflict-tag { font-size: 11px; font-weight: 800; color: #b71c1c; margin-bottom: 2px; }
.conflict-extra { margin-top: 6px; padding-top: 4px; border-top: 1px dashed rgba(183,28,28,0.35); }

.bf-tag { display: inline-block; background: #8e24aa; color: #fff; font-size: 11px; border-radius: 4px; padding: 0 5px; margin-right: 4px; vertical-align: 1px; }
.backfill-tip { background: #f3e5f5; color: #6a1b9a; border-radius: 6px; padding: 8px 10px; margin: 8px 0; font-size: 13px; }

.court-type { color: #1a5c3a; font-size: 12px; font-weight: 400; margin-top: 2px; }
</style>
