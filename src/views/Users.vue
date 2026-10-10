<template>
  <div class="page">
    <div class="page-header">
      <div>
        <h2>用户管理</h2>
        <p class="sub">点昵称看详情。批量发卡：先选卡，再按姓名/手机/标签搜人多选发放。</p>
      </div>
      <div class="toolbar">
        <el-button v-if="backFrom" @click="goBack">返回{{ backLabel }}</el-button>
        <el-button type="primary" @click="regVisible = true">新增用户</el-button>
        <el-button :loading="loading" @click="loadData">刷新</el-button>
      </div>
    </div>

    <div class="filters card">
      <el-input
        v-model="keyword"
        placeholder="昵称 / 手机 / 会员号 / 备注"
        clearable
        style="width: 220px"
        @keyup.enter="loadData"
      />
      <el-select v-model="filterTagId" clearable placeholder="标签" style="width: 140px" @change="loadData">
        <el-option v-for="t in tagList" :key="t._id" :label="t.name" :value="t._id" />
      </el-select>
      <el-select v-model="filterCardType" clearable placeholder="卡券类型" style="width: 120px" @change="loadData">
        <el-option label="次卡" value="times" />
        <el-option label="教练卡" value="coach" />
        <el-option label="团课" value="group" />
        <el-option label="时间卡" value="time" />
      </el-select>
      <el-select v-model="filterCardName" filterable allow-create default-first-option clearable placeholder="卡券名称" style="width: 180px" @change="loadData">
        <el-option v-for="t in activeTemplates" :key="t._id" :label="t.name" :value="t.name" />
      </el-select>
      <el-select v-model="filterCardStatus" clearable placeholder="卡券状态" style="width: 130px" @change="loadData">
        <el-option label="使用中" value="active" />
        <el-option label="停用" value="disabled" />
        <el-option label="过期" value="expired" />
        <el-option label="已完成" value="done" />
      </el-select>
      <el-date-picker v-model="createdFrom" type="date" value-format="YYYY-MM-DD" placeholder="注册起" style="width: 140px" @change="loadData" />
      <el-date-picker v-model="createdTo" type="date" value-format="YYYY-MM-DD" placeholder="注册止" style="width: 140px" @change="loadData" />
      <el-select v-model="sort" style="width: 150px" @change="loadData">
        <el-option label="最新注册" value="id_desc" />
        <el-option label="最早注册" value="created_asc" />
        <el-option label="累计消费高" value="spend_desc" />
        <el-option label="累计消费低" value="spend_asc" />
        <el-option label="余额高" value="balance_desc" />
        <el-option label="持卡多" value="cards_desc" />
        <el-option label="最近到店" value="visit_desc" />
      </el-select>
      <el-button type="primary" :loading="loading" @click="loadData">搜索</el-button>
      <el-button @click="resetAndLoad">重置</el-button>
      <el-button v-if="canIssueCard" type="success" @click="openBatchIssue">批量发卡</el-button>
      <el-button v-if="canIssueCard" type="warning" @click="openBatchDisable">批量停用</el-button>
      <el-button link type="primary" @click="tagManageVisible = true">管理标签</el-button>
      <el-button :loading="exporting" @click="exportExcel">导出 Excel</el-button>
    </div>

    <el-table
      :data="list"
      stripe
      border
      v-loading="loading"
      @selection-change="onSelect"
      @row-click="onRowClick"
    >
      <el-table-column type="selection" width="42" />
      <el-table-column label="会员" min-width="160">
        <template #default="{ row }">
          <div class="name-cell">
            <span class="name-link">{{ displayName(row) }}</span>
            <span class="uid">{{ row.userId }}</span>
          </div>
        </template>
      </el-table-column>
      <el-table-column label="手机号" width="130">
        <template #default="{ row }">{{ row.phone || '-' }}</template>
      </el-table-column>
      <el-table-column label="标签" min-width="180">
        <template #default="{ row }">
          <el-tag
            v-for="t in row.tags || []"
            :key="t._id"
            size="small"
            class="tag"
            :style="{ background: t.color, borderColor: t.color, color: '#fff' }"
          >{{ t.name }}</el-tag>
          <span v-if="!(row.tags && row.tags.length)" class="muted">-</span>
        </template>
      </el-table-column>
      <el-table-column label="累计消费" min-width="200">
        <template #default="{ row }">
          <div class="spend">¥{{ money(row.totalSpend) }}</div>
          <div class="spend-break">
            <span v-for="s in row.spendByVenue || []" :key="s.venueId || s.venueName">
              {{ shortVenue(s.venueName) }} ¥{{ money(s.amount) }}
            </span>
            <span v-if="!(row.spendByVenue && row.spendByVenue.length)" class="muted">未分馆</span>
          </div>
        </template>
      </el-table-column>
      <el-table-column label="余额" width="90">
        <template #default="{ row }">¥{{ money(row.balance) }}</template>
      </el-table-column>
      <el-table-column label="积分" width="70">
        <template #default="{ row }">{{ row.points || 0 }}</template>
      </el-table-column>
      <el-table-column label="卡券" min-width="220">
        <template #default="{ row }">
          <div v-if="row.cards && row.cards.length" class="card-pills">
            <el-tag
              v-for="(c, i) in row.cards"
              :key="i"
              size="small"
              :type="statusTag(c.status)"
              class="tag"
            >{{ c.cardName }}{{ isTimesLike(c.type) ? ' ' + (c.remainingTimes || 0) + '次' : '' }}</el-tag>
          </div>
          <span v-else class="muted">无卡</span>
        </template>
      </el-table-column>
      <el-table-column label="最近到店" width="110">
        <template #default="{ row }">{{ ymd(row.lastVisit) || '-' }}</template>
      </el-table-column>
      <el-table-column label="场馆" min-width="140">
        <template #default="{ row }">{{ row.venueName || '-' }}</template>
      </el-table-column>
      <el-table-column label="注册" width="110">
        <template #default="{ row }">{{ formatTime(row.createdAt).slice(0, 10) }}</template>
      </el-table-column>
      <el-table-column label="操作" width="180" fixed="right">
        <template #default="{ row }">
          <el-button link type="primary" @click.stop="openDetail(row)">详情</el-button>
          <el-button v-if="canIssueCard" link type="success" @click.stop="openIssue(row)">发卡</el-button>
        </template>
      </el-table-column>
    </el-table>

    <!-- 详情 -->
    <el-drawer v-model="detailVisible" size="560px" destroy-on-close>
      <template #header>
        <div class="drawer-head">
          <div>
            <div class="drawer-name">{{ displayName(detailUser) }}</div>
            <div class="drawer-sub">{{ detailUser.phone || '无手机号' }} · {{ detailUser.userId }}</div>
          </div>
          <el-button v-if="backFrom" size="small" @click="goBack">返回{{ backLabel }}</el-button>
        </div>
      </template>
      <div v-loading="detailLoading" class="detail">
        <div class="stat-row">
          <div class="stat">
            <div class="num">¥{{ money(detailUser.balance) }}</div>
            <div class="lab">余额（现金）</div>
          </div>
          <div class="stat">
            <div class="num">{{ detailUser.points || 0 }}</div>
            <div class="lab">积分</div>
          </div>
          <div class="stat">
            <div class="num">¥{{ money(detailUser.totalSpend) }}</div>
            <div class="lab">累计消费</div>
          </div>
          <div class="stat">
            <div class="num">{{ detailUser.cardCount || 0 }}</div>
            <div class="lab">有效持卡</div>
          </div>
          <div class="stat">
            <div class="num">{{ ymd(detailUser.lastVisit) || '-' }}</div>
            <div class="lab">最近到店</div>
          </div>
        </div>
        <div class="venue-spend">
          <div v-for="s in (detailUser.spendByVenue || [])" :key="s.venueId || s.venueName" class="stat slim">
            <div class="num">¥{{ money(s.amount) }}</div>
            <div class="lab">{{ s.venueName || '未分馆' }}</div>
          </div>
          <div v-if="!(detailUser.spendByVenue && detailUser.spendByVenue.length)" class="muted">暂无分馆消费</div>
        </div>

        <div class="block">
          <div class="block-title">标签</div>
          <el-select
            v-model="detailTagIds"
            multiple
            filterable
            allow-create
            default-first-option
            placeholder="选择已有标签，或输入后回车新建"
            style="width: 100%"
            @change="saveDetailTags"
          >
            <el-option v-for="t in tagList" :key="t._id" :label="t.name" :value="t._id" />
          </el-select>
          <div class="new-tag-row">
            <el-input v-model="quickTagName" placeholder="新标签名" style="width: 160px" @keyup.enter="createAndAttachTag" />
            <el-color-picker v-model="quickTagColor" size="small" />
            <el-button type="primary" plain size="small" @click="createAndAttachTag">新增并打上</el-button>
          </div>
        </div>

        <div class="block">
          <div class="block-title">余额 / 积分</div>
          <div class="wallet-row">
            <el-input-number v-model="wallet.addBalance" :step="10" :precision="2" placeholder="改余额" />
            <span class="muted">正数充值，负数扣减</span>
          </div>
          <div class="wallet-row">
            <el-input-number v-model="wallet.addPoints" :step="10" :precision="0" />
            <span class="muted">积分增减</span>
          </div>
          <el-input v-model="wallet.remark" placeholder="备注，如：前台充值 / 纠错" style="margin:8px 0" />
          <el-button type="primary" size="small" :loading="walletSaving" @click="saveWallet">保存余额积分</el-button>
        </div>

        <div class="block">
          <div class="block-title">备注</div>
          <el-input v-model="detailRemark" type="textarea" :rows="2" placeholder="前台备注" @blur="saveRemark" />
        </div>

        <div class="block">
          <div class="block-title">持卡</div>
          <el-table :data="detailCards" size="small" border>
            <el-table-column label="卡" min-width="120">
              <template #default="{ row }">
                {{ row.cardName }}
                <el-tag v-if="row.rulesEdited" size="small" type="warning" style="margin-left:4px">已改规则</el-tag>
              </template>
            </el-table-column>
            <el-table-column label="余次" width="90">
              <template #default="{ row }">
                <span v-if="isTimesLike(row.type)">{{ row.remainingTimes }}/{{ row.totalTimes }}</span>
                <span v-else>-</span>
              </template>
            </el-table-column>
            <el-table-column label="已用" width="70">
              <template #default="{ row }">
                <span v-if="isTimesLike(row.type)">{{ Math.max(0, Number(row.totalTimes || 0) - Number(row.remainingTimes || 0)) }}</span>
                <span v-else>-</span>
              </template>
            </el-table-column>
            <el-table-column label="状态" width="80">
              <template #default="{ row }">
                <el-tag size="small" :type="statusTag(row.status)">{{ statusLabel(row.status) }}</el-tag>
              </template>
            </el-table-column>
            <el-table-column label="" width="260">
              <template #default="{ row }">
                <el-button link type="primary" @click="openCardDetail(row)">详情</el-button>
                <el-button v-if="row.status === 'active'" link type="warning" @click="openPause(row)">停卡</el-button>
                <el-button v-if="row.status === 'disabled'" link type="success" @click="toggleListCard(row, 'enable')">复卡</el-button>
                <el-button v-if="canExtendCards && row.status !== 'refunded' && row.status !== 'deleted'" link type="primary" @click="openExtend(row)">延期</el-button>
                <el-button v-if="canRefundCard && row.status !== 'deleted'" link type="danger" @click="onDeleteCard(row)">删除</el-button>
              </template>
            </el-table-column>
          </el-table>
          <el-button v-if="canIssueCard" type="success" plain size="small" style="margin-top:8px" @click="openIssue(detailUser)">发卡</el-button>
        </div>

        <div class="block">
          <div class="block-title">预约（含已完成 / 未完成 / 已取消）</div>
          <el-table :data="detailBookings" size="small" border>
            <el-table-column label="日期" width="110">
              <template #default="{ row }">{{ ymd(row.date) }}</template>
            </el-table-column>
            <el-table-column prop="time" label="时段" width="110" />
            <el-table-column prop="court" label="场地" min-width="100" />
            <el-table-column label="状态" width="80">
              <template #default="{ row }">
                <el-tag size="small" :type="bookingTag(row)">{{ bookingLabel(row) }}</el-tag>
              </template>
            </el-table-column>
            <el-table-column prop="cardName" label="用卡" min-width="120" show-overflow-tooltip />
            <el-table-column label="金额" width="80">
              <template #default="{ row }">{{ row.amount ? '¥' + money(row.amount) : '-' }}</template>
            </el-table-column>
            <el-table-column label="" width="70">
              <template #default="{ row }">
                <el-button v-if="canEditBooking(row)" link type="primary" @click="openBookingEdit(row)">修改</el-button>
              </template>
            </el-table-column>
          </el-table>
        </div>

        <div class="block">
          <div class="block-title">卡使用情况</div>
          <el-table :data="cardUses" size="small" border>
            <el-table-column label="日期" width="110">
              <template #default="{ row }">{{ ymd(row.date) }}</template>
            </el-table-column>
            <el-table-column label="类型" width="90">
              <template #default="{ row }">{{ ledgerLabel(row.type) }}</template>
            </el-table-column>
            <el-table-column label="金额" width="90">
              <template #default="{ row }">¥{{ money(row.amount) }}</template>
            </el-table-column>
            <el-table-column prop="remark" label="用了哪张卡 / 场地" min-width="160" />
          </el-table>
          <div v-if="!cardUses.length" class="muted">还没有用卡记录</div>
        </div>

        <div class="block">
          <div class="block-title">消费流水</div>
          <el-table :data="detailLedger" size="small" border>
            <el-table-column label="日期" width="110">
              <template #default="{ row }">{{ ymd(row.date) }}</template>
            </el-table-column>
            <el-table-column label="类型" width="90">
              <template #default="{ row }">{{ ledgerLabel(row.type) }}</template>
            </el-table-column>
            <el-table-column label="金额" width="90">
              <template #default="{ row }">¥{{ money(row.amount) }}</template>
            </el-table-column>
            <el-table-column prop="remark" label="备注" min-width="120" />
          </el-table>
        </div>
      </div>
    </el-drawer>

    <el-dialog v-model="bookEditVisible" title="修改未开始的预约" width="460px">
      <el-form label-width="80px">
        <el-form-item label="场地"><el-input v-model="bookEdit.court" /></el-form-item>
        <el-form-item label="日期"><el-date-picker v-model="bookEdit.date" type="date" value-format="YYYY-MM-DD" /></el-form-item>
        <el-form-item label="时段"><el-input v-model="bookEdit.time" placeholder="17:00-18:00" /></el-form-item>
        <el-form-item label="金额"><el-input-number v-model="bookEdit.amount" :min="0" :precision="2" /></el-form-item>
        <el-form-item label="备注"><el-input v-model="bookEdit.remark" /></el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="bookEditVisible = false">取消</el-button>
        <el-button type="primary" :loading="bookEditSaving" @click="saveBookingEdit">保存</el-button>
      </template>
    </el-dialog>
    <el-dialog v-model="tagManageVisible" title="标签管理" width="420px">
      <el-form inline>
        <el-form-item>
          <el-input v-model="newTagName" placeholder="新标签名" style="width: 160px" />
        </el-form-item>
        <el-form-item>
          <el-color-picker v-model="newTagColor" />
        </el-form-item>
        <el-form-item>
          <el-button type="primary" @click="addTag">添加</el-button>
        </el-form-item>
      </el-form>
      <el-table :data="tagList" size="small" border>
        <el-table-column prop="name" label="名称" />
        <el-table-column label="颜色" width="80">
          <template #default="{ row }">
            <span class="color-dot" :style="{ background: row.color }" />
          </template>
        </el-table-column>
        <el-table-column label="" width="70">
          <template #default="{ row }">
            <el-button link type="danger" @click="removeTag(row)">删</el-button>
          </template>
        </el-table-column>
      </el-table>
    </el-dialog>

    <el-dialog v-model="cardsVisible" :title="`持卡列表 - ${displayName(currentUser)}`" width="920px">
      <el-table :data="memberCards" border v-loading="cardsLoading" size="small">
        <el-table-column label="卡名称" min-width="140">
          <template #default="{ row }">
            {{ row.cardName }}
            <el-tag v-if="row.rulesEdited" size="small" type="warning" style="margin-left:4px">已改规则</el-tag>
          </template>
        </el-table-column>
        <el-table-column label="类型" width="90">
          <template #default="{ row }">
            <el-tag size="small" :type="typeTag(row.type)">{{ typeLabel(row.type) }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column label="场馆" min-width="140">
          <template #default="{ row }">{{ row.venueName || '-' }}</template>
        </el-table-column>
        <el-table-column label="金额" width="90">
          <template #default="{ row }">{{ row.price != null && row.price !== '' ? row.price + '元' : '-' }}</template>
        </el-table-column>
        <el-table-column label="剩余/总次" width="100">
          <template #default="{ row }">
            <span v-if="isTimesLike(row.type)">{{ row.remainingTimes }} / {{ row.totalTimes }}</span>
            <span v-else>-</span>
          </template>
        </el-table-column>
        <el-table-column label="有效期" min-width="160">
          <template #default="{ row }">{{ row.validFrom || '-' }} ~ {{ row.validTo || '不限' }}</template>
        </el-table-column>
        <el-table-column label="状态" width="90">
          <template #default="{ row }">
            <el-tag :type="statusTag(row.status)" size="small">{{ statusLabel(row.status) }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column label="操作" width="200" fixed="right">
          <template #default="{ row }">
            <el-button link type="primary" @click="openCardDetail(row)">详情</el-button>
            <el-button v-if="canExtendCards && row.status !== 'refunded' && row.status !== 'deleted'" link type="primary" @click="openExtend(row)">延期</el-button>
            <el-button v-if="canRefundCard && row.status === 'active'" link type="danger" @click="onRefund(row)">退卡</el-button>
            <el-button v-if="canRefundCard && row.status !== 'deleted'" link type="danger" @click="onDeleteCard(row)">删除</el-button>
          </template>
        </el-table-column>
      </el-table>
    </el-dialog>

    <el-dialog v-model="disableVisible" title="批量停用卡券" width="920px" top="4vh">
      <div class="toolbar" style="margin-bottom:12px">
        <el-select v-model="disableForm.cardName" filterable allow-create default-first-option clearable placeholder="卡券名称" style="width: 220px">
          <el-option v-for="t in activeTemplates" :key="t._id" :label="t.name" :value="t.name" />
        </el-select>
        <el-select v-model="disableForm.status" clearable placeholder="卡券状态" style="width: 140px">
          <el-option label="使用中" value="active" />
          <el-option label="停用" value="disabled" />
          <el-option label="过期" value="expired" />
          <el-option label="已完成" value="done" />
        </el-select>
        <el-input v-model="disableForm.keyword" placeholder="昵称 / 手机" clearable style="width: 180px" @keyup.enter="loadDisableCards" />
        <el-button type="primary" :loading="disableLoading" @click="loadDisableCards">搜索卡券</el-button>
      </div>
      <el-table :data="disableList" border size="small" v-loading="disableLoading" @selection-change="onDisableSelect">
        <el-table-column type="selection" width="42" />
        <el-table-column label="卡名称" min-width="180" prop="cardName" />
        <el-table-column label="用户" width="120" prop="nickName" />
        <el-table-column label="手机" width="130" prop="phone" />
        <el-table-column label="有效期" min-width="170">
          <template #default="{ row }">{{ row.validFrom || '-' }} ~ {{ row.validTo || '不限' }}</template>
        </el-table-column>
        <el-table-column label="状态" width="90">
          <template #default="{ row }">
            <el-tag size="small" :type="statusTag(row.status)">{{ statusLabel(row.status) }}</el-tag>
          </template>
        </el-table-column>
      </el-table>
      <template #footer>
        <el-button @click="disableVisible = false">取消</el-button>
        <el-button type="warning" :loading="disableSaving" :disabled="!disableSelected.length" @click="submitBatchDisable">
          停用已选 {{ disableSelected.length }} 张
        </el-button>
      </template>
    </el-dialog>

    <el-dialog v-model="batchVisible" title="批量发卡" width="860px" top="4vh" destroy-on-close>
      <el-form label-width="96px" class="batch-card-form">
        <el-form-item label="发卡场馆" required>
          <el-select v-model="issueForm.venueId" placeholder="请选择场馆" style="width: 280px" @change="onVenuePick">
            <el-option v-for="v in venueList" :key="v._id || v.venueId" :label="v.name" :value="v.venueId || v._id" />
          </el-select>
        </el-form-item>
        <el-form-item label="选择卡券" required>
          <el-select v-model="issueForm.templateId" filterable placeholder="先选一张要发的卡" style="width: 360px" @change="onTemplateChange">
            <el-option v-for="t in activeTemplates" :key="t._id" :label="`${t.name}（${typeLabel(t.type)}）`" :value="t._id" />
          </el-select>
          <el-tag v-if="selectedTemplate" :type="typeTag(selectedTemplate.type)" size="small" style="margin-left:8px">{{ typeLabel(selectedTemplate.type) }}</el-tag>
        </el-form-item>
        <el-form-item label="发卡人" required>
          <el-input v-model="issueForm.issuerName" style="width: 220px" />
        </el-form-item>
        <el-form-item label="实收金额">
          <el-input-number v-model="issueForm.price" :min="0" :precision="2" :step="1" />
          <span class="hint">元 / 每人</span>
        </el-form-item>
        <el-form-item v-if="selectedTemplate && isTimesLike(selectedTemplate.type)" label="次数">
          <el-input-number v-model="issueForm.totalTimes" :min="1" />
        </el-form-item>
        <el-form-item label="有效期">
          <el-radio-group v-model="issueForm.activateMode" @change="applyIssueDates">
            <el-radio label="now">立即激活</el-radio>
            <el-radio label="first_use">首次使用激活</el-radio>
          </el-radio-group>
          <el-input-number v-model="issueForm.durationDays" :min="0" style="margin-left:8px" @change="applyIssueDates" />
          <span class="hint">天，0 = 不限</span>
          <div v-if="issueForm.activateMode === 'now'" style="margin-top:8px">
            <el-date-picker v-model="issueForm.validFrom" type="date" value-format="YYYY-MM-DD" />
            <span style="margin:0 8px">至</span>
            <el-date-picker v-model="issueForm.validTo" type="date" value-format="YYYY-MM-DD" placeholder="不限" />
          </div>
          <div v-else class="hint" style="margin-left:0">发卡时不写日期，第一次订场使用后按 {{ issueForm.durationDays || 0 }} 天开始计算</div>
        </el-form-item>
        <el-form-item label="可用门店">
          <el-select v-model="issueForm.allowedVenueIds" multiple clearable filterable placeholder="不选 = 所有门店" style="width: 360px">
            <el-option v-for="v in venueList" :key="v.venueId || v._id" :label="v.name" :value="v.venueId || v._id" />
          </el-select>
        </el-form-item>
        <el-form-item label="备注">
          <el-input v-model="issueForm.remark" style="width: 360px" />
        </el-form-item>
      </el-form>
      <div class="batch-user-head">选择发放对象 · 已选 {{ batchSelected.length }} 人（换号搜索不会清掉已选）</div>
      <div v-if="batchSelected.length" class="batch-picked">
        <el-tag v-for="u in batchSelected" :key="u._id" closable size="small" @close="removePick(u)">
          {{ displayName(u) }} {{ u.phone || '' }}
        </el-tag>
        <el-button link type="danger" @click="batchSelected = []">清空已选</el-button>
      </div>
      <div class="filters" style="padding:0;margin-bottom:8px;background:transparent;border:none">
        <el-input v-model="batchKeyword" placeholder="昵称 / 手机 / 会员号" clearable style="width: 220px" @keyup.enter="loadBatchUsers" />
        <el-select v-model="batchTagId" clearable placeholder="按标签筛选" style="width: 160px" @change="loadBatchUsers">
          <el-option v-for="t in tagList" :key="t._id" :label="t.name" :value="t._id" />
        </el-select>
        <el-button type="primary" :loading="batchLoading" @click="loadBatchUsers">搜索用户</el-button>
        <el-button @click="addAllSearch">当前结果全选</el-button>
      </div>
      <el-table
        :data="batchList"
        border
        size="small"
        max-height="360"
        v-loading="batchLoading"
      >
        <el-table-column width="70" label="加入">
          <template #default="{ row }">
            <el-checkbox :model-value="isPicked(row)" @change="(v) => togglePick(row, v)" />
          </template>
        </el-table-column>
        <el-table-column label="会员" min-width="140">
          <template #default="{ row }">{{ displayName(row) }}</template>
        </el-table-column>
        <el-table-column label="手机" width="120">
          <template #default="{ row }">{{ row.phone || '-' }}</template>
        </el-table-column>
        <el-table-column label="标签" min-width="180">
          <template #default="{ row }">
            <el-tag
              v-for="t in row.tags || []"
              :key="t._id"
              size="small"
              class="tag"
              :style="{ background: t.color, borderColor: t.color, color: '#fff' }"
            >{{ t.name }}</el-tag>
            <span v-if="!(row.tags && row.tags.length)" class="muted">-</span>
          </template>
        </el-table-column>
      </el-table>
      <template #footer>
        <el-button @click="batchVisible = false">取消</el-button>
        <el-button type="primary" :loading="issuing" :disabled="!batchSelected.length || !issueForm.templateId" @click="submitBatchIssue">
          发给已选 {{ batchSelected.length }} 人
        </el-button>
      </template>
    </el-dialog>

    <el-dialog v-model="issueVisible" title="给会员发卡" width="520px" destroy-on-close>
      <el-form label-width="100px">
        <el-form-item v-if="!batchMode" label="会员">
          <el-input :model-value="displayName(currentUser)" disabled />
        </el-form-item>
        <el-form-item v-else label="对象">
          <div class="batch-names">{{ selected.map(displayName).join('、') }}</div>
        </el-form-item>
        <el-form-item label="发卡场馆" required>
          <el-select v-model="issueForm.venueId" placeholder="请选择场馆" style="width: 100%" @change="onVenuePick">
            <el-option v-for="v in venueList" :key="v._id || v.venueId" :label="v.name" :value="v.venueId || v._id" />
          </el-select>
        </el-form-item>
        <el-form-item label="发卡人" required>
          <el-input v-model="issueForm.issuerName" placeholder="前台 / 管理员姓名" />
        </el-form-item>
        <el-form-item label="选择卡模板" required>
          <el-select v-model="issueForm.templateId" filterable placeholder="输入名称搜索卡模板" style="width: 100%" @change="onTemplateChange">
            <el-option v-for="t in activeTemplates" :key="t._id" :label="`${t.name}（${typeLabel(t.type)}）`" :value="t._id" />
          </el-select>
        </el-form-item>
        <el-form-item v-if="selectedTemplate" label="卡类型">
          <el-tag :type="typeTag(selectedTemplate.type)">{{ typeLabel(selectedTemplate.type) }}</el-tag>
        </el-form-item>
        <el-form-item label="实收金额" required>
          <el-input-number v-model="issueForm.price" :min="0" :precision="2" :step="1" />
          <span class="hint">元{{ batchMode ? '（每人按此金额记账）' : '（计入营业额）' }}</span>
        </el-form-item>
        <el-form-item v-if="selectedTemplate && isTimesLike(selectedTemplate.type)" label="次数">
          <el-input-number v-model="issueForm.totalTimes" :min="1" />
        </el-form-item>
        <el-form-item label="生效日期">
          <el-date-picker v-model="issueForm.validFrom" type="date" value-format="YYYY-MM-DD" />
        </el-form-item>
        <el-form-item label="到期日期">
          <el-date-picker v-model="issueForm.validTo" type="date" value-format="YYYY-MM-DD" placeholder="可留空" />
        </el-form-item>
        <el-form-item label="可用门店">
          <el-select v-model="issueForm.allowedVenueIds" multiple clearable filterable placeholder="不选 = 所有门店" style="width: 100%">
            <el-option v-for="v in venueList" :key="v.venueId || v._id" :label="v.name" :value="v.venueId || v._id" />
          </el-select>
          <div class="hint">默认不限制。选了之后这张卡只能在这些店用。</div>
        </el-form-item>
        <el-form-item label="备注">
          <el-input v-model="issueForm.remark" type="textarea" :rows="2" />
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="issueVisible = false">取消</el-button>
        <el-button type="primary" :loading="issuing" @click="submitIssue">确认发卡</el-button>
      </template>
    </el-dialog>

    <el-dialog v-model="pauseVisible" title="停卡" width="520px">
      <el-form label-width="100px">
        <el-form-item label="停卡日期" required>
          <el-date-picker v-model="pauseForm.pauseFrom" type="date" value-format="YYYY-MM-DD" />
        </el-form-item>
        <el-form-item label="复卡设置">
          <el-radio-group v-model="pauseForm.autoResume">
            <el-radio :label="false">不自动复卡</el-radio>
            <el-radio :label="true">自动复卡</el-radio>
          </el-radio-group>
          <el-date-picker v-if="pauseForm.autoResume" v-model="pauseForm.resumeDate" type="date" value-format="YYYY-MM-DD" style="margin-left:8px" />
        </el-form-item>
        <el-form-item label="顺延有效期">
          <el-radio-group v-model="pauseForm.extendValidity">
            <el-radio :label="false">不顺延有效期</el-radio>
            <el-radio :label="true">复卡后自动顺延有效期</el-radio>
          </el-radio-group>
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="pauseVisible = false">取消</el-button>
        <el-button type="primary" :loading="pauseSaving" @click="submitPause">确定</el-button>
      </template>
    </el-dialog>
    <el-dialog v-model="extendVisible" title="会员卡延期" width="420px" destroy-on-close>
      <el-form label-width="100px">
        <el-form-item label="卡名称">
          <el-input :model-value="extendCard.cardName" disabled />
        </el-form-item>
        <el-form-item label="当前到期">
          <el-input :model-value="extendCard.validTo || '不限 / 未设置'" disabled />
        </el-form-item>
        <el-form-item label="调整天数" required>
          <el-input-number v-model="extendDays" :min="extendMin" :max="extendMax" :step="1" />
          <div class="hint">正数延长，负数缩短{{ isStoreManager ? '（店长限 ±120 天）' : '' }}</div>
        </el-form-item>
        <el-form-item label="调整后">
          <span>{{ previewNewValidTo }}</span>
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="extendVisible = false">取消</el-button>
        <el-button type="primary" :loading="extending" @click="submitExtend">确认延期</el-button>
      </template>
    </el-dialog>
    <el-dialog v-model="cardDetailVisible" :title="(cardForm.cardName || '卡详情') + (cardForm.rulesEdited ? '（已改规则）' : '')" width="720px" top="5vh" destroy-on-close>
      <el-form label-width="110px" v-if="cardForm._id">
        <el-form-item label="标识">
          <el-tag v-if="cardForm.rulesEdited" type="warning" size="small">已改规则 · 仅此张卡</el-tag>
          <el-tag v-else type="info" size="small">沿用模板</el-tag>
          <span class="hint">改这里只动这一张持卡，不会改卡模板，也不能批量套到别人卡上</span>
        </el-form-item>
        <el-form-item label="卡名称">
          <el-input v-model="cardForm.cardName" />
        </el-form-item>
        <el-form-item label="类型">
          <el-tag :type="typeTag(cardForm.type)" size="small">{{ typeLabel(cardForm.type) }}</el-tag>
        </el-form-item>
        <el-form-item label="状态">
          <el-tag :type="statusTag(cardForm.status)" size="small">{{ statusLabel(cardForm.status) }}</el-tag>
        </el-form-item>
        <el-form-item v-if="isTimesLike(cardForm.type)" label="剩余/总次">
          <el-input-number v-model="cardForm.remainingTimes" :min="0" />
          <span style="margin:0 8px">/</span>
          <el-input-number v-model="cardForm.totalTimes" :min="0" />
        </el-form-item>
        <el-form-item label="生效日期">
          <el-date-picker v-model="cardForm.validFrom" type="date" value-format="YYYY-MM-DD" />
        </el-form-item>
        <el-form-item label="到期日期">
          <el-date-picker v-model="cardForm.validTo" type="date" value-format="YYYY-MM-DD" placeholder="可留空" />
        </el-form-item>
        <el-form-item label="每日最多约">
          <el-input-number v-model="cardForm.timeRule.maxHoursPerDay" :min="0" :max="24" :step="1" />
          <span class="hint">小时，0 = 不限制。只改这张卡</span>
        </el-form-item>
        <el-form-item label="可用门店">
          <el-select v-model="cardForm.timeRule.venueIds" multiple clearable filterable placeholder="不选 = 所有门店" style="width: 100%">
            <el-option v-for="v in venueList" :key="v.venueId || v._id" :label="v.name" :value="v.venueId || v._id" />
          </el-select>
        </el-form-item>
        <el-form-item v-if="cardForm.type !== 'group'" label="可用规则">
          <el-radio-group v-model="cardForm.timeRule.mode">
            <el-radio label="unlimited" value="unlimited">有效期内任意时间</el-radio>
            <el-radio label="rules" value="rules">自定义星期 + 时段</el-radio>
            <el-radio label="dates" value="dates">节假日 / 指定日期</el-radio>
          </el-radio-group>
        </el-form-item>
        <div v-if="cardForm.type !== 'group' && cardForm.timeRule && cardForm.timeRule.mode === 'dates'" class="rules-box">
          <div v-for="(rg, i) in (cardForm.timeRule.dateRanges || [])" :key="i" class="slot-row" style="margin-bottom:8px">
            <el-date-picker
              :model-value="rg.range && rg.range.length ? rg.range : (rg.start && rg.end ? [rg.start, rg.end] : [])"
              type="daterange"
              value-format="YYYY-MM-DD"
              start-placeholder="开始"
              end-placeholder="结束"
              @update:model-value="(val) => { rg.range = val || []; rg.start = val && val[0]; rg.end = val && val[1] }"
            />
            <el-button link type="danger" @click="cardForm.timeRule.dateRanges.splice(i, 1)">删</el-button>
          </div>
          <el-button size="small" @click="(cardForm.timeRule.dateRanges || (cardForm.timeRule.dateRanges = [])).push({ start: '', end: '', range: [] })">加一段日期</el-button>
        </div>
        <div v-if="cardForm.type !== 'group' && cardForm.timeRule && cardForm.timeRule.mode === 'rules'" class="rules-box">
          <div v-for="(rule, ri) in cardForm.timeRule.rules" :key="ri" class="rule-card">
            <div class="rule-head">
              <b>规则 {{ ri + 1 }}</b>
              <el-button v-if="cardForm.timeRule.rules.length > 1" link type="danger" @click="cardForm.timeRule.rules.splice(ri, 1)">删除这组</el-button>
            </div>
            <el-form-item label="可用星期">
              <el-checkbox-group v-model="rule.weekdays">
                <el-checkbox :label="1" :value="1">一</el-checkbox>
                <el-checkbox :label="2" :value="2">二</el-checkbox>
                <el-checkbox :label="3" :value="3">三</el-checkbox>
                <el-checkbox :label="4" :value="4">四</el-checkbox>
                <el-checkbox :label="5" :value="5">五</el-checkbox>
                <el-checkbox :label="6" :value="6">六</el-checkbox>
                <el-checkbox :label="7" :value="7">日</el-checkbox>
              </el-checkbox-group>
            </el-form-item>
            <el-form-item label="时段">
              <div class="slots">
                <div v-for="(slot, si) in rule.timeSlots" :key="si" class="slot-row">
                  <el-time-select v-model="slot.start" start="06:00" step="00:30" end="23:30" placeholder="开始" />
                  <span>至</span>
                  <el-time-select v-model="slot.end" start="06:00" step="00:30" end="23:30" placeholder="结束" />
                  <el-button link type="danger" @click="rule.timeSlots.splice(si, 1)">删</el-button>
                </div>
                <el-button size="small" @click="rule.timeSlots.push({ start: '10:00', end: '18:00' })">加时段</el-button>
              </div>
            </el-form-item>
          </div>
          <el-button size="small" type="primary" plain @click="cardForm.timeRule.rules.push(emptyCardRule())">再加一组规则</el-button>
        </div>
      </el-form>
      <template #footer>
        <el-button v-if="cardForm.status === 'active'" type="warning" :loading="cardSaving" @click="toggleCardStatus('disable')">停用此卡</el-button>
        <el-button v-if="cardForm.status === 'disabled'" type="success" :loading="cardSaving" @click="toggleCardStatus('enable')">恢复启用</el-button>
        <el-button @click="cardDetailVisible = false">取消</el-button>
        <el-button type="primary" :loading="cardSaving" @click="saveCardDetail">保存修改</el-button>
      </template>
    </el-dialog>
    <el-dialog v-model="regVisible" title="新增用户" width="420px" destroy-on-close>
      <el-form label-width="80px">
        <el-form-item label="手机号" required><el-input v-model="regForm.phone" maxlength="11" /></el-form-item>
        <el-form-item label="昵称"><el-input v-model="regForm.nickName" /></el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="regVisible = false">取消</el-button>
        <el-button type="primary" :loading="regSaving" @click="submitReg">保存</el-button>
      </template>
    </el-dialog>
  </div>
</template>

<script setup>
import { ref, computed, onMounted } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import { ElMessage, ElMessageBox } from 'element-plus'
import { can, roleKind } from '../utils/auth'
const route = useRoute()
const router = useRouter()
const backFrom = computed(() => String(route.query.from || ''))
const backLabel = computed(() => ({ finance: '财务报表', activity: '业务动态' }[backFrom.value] || '上一页'))
function goBack() {
  if (backFrom.value === 'finance') router.push('/finance')
  else if (backFrom.value === 'activity') router.push('/activity')
  else router.back()
}

const list = ref([])
const loading = ref(false)
const keyword = ref('')
const filterTagId = ref('')
const filterCardType = ref('')
const filterCardName = ref('')
const filterCardStatus = ref('')
const createdFrom = ref('')
const createdTo = ref('')
const sort = ref('id_desc')
const selected = ref([])
const tagList = ref([])
const venueCols = ref([])
const exporting = ref(false)
const regVisible = ref(false)
const regSaving = ref(false)
const regForm = ref({ phone: '', nickName: '' })
const currentUser = ref(null)
const venueList = ref([])
const disableVisible = ref(false)
const disableLoading = ref(false)
const disableSaving = ref(false)
const disableList = ref([])
const disableSelected = ref([])
const disableForm = ref({ cardName: '', status: 'active', keyword: '' })
const batchVisible = ref(false)
const batchKeyword = ref('')
const batchTagId = ref('')
const batchList = ref([])
const batchSelected = ref([])
const batchLoading = ref(false)

const detailVisible = ref(false)
const detailLoading = ref(false)
const detailUser = ref({})
const detailCards = ref([])
const detailBookings = ref([])
const bookEditVisible = ref(false)
const bookEditSaving = ref(false)
const bookEdit = ref({ id: '', court: '', date: '', time: '', amount: 0, remark: '' })
const cardUses = computed(() => (detailLedger.value || []).filter((r) => ['card_use', 'card_use_cancel', 'issue_card', 'refund_card'].includes(r.type)))
const detailLedger = ref([])
const detailTagIds = ref([])
const detailRemark = ref('')
const wallet = ref({ addBalance: 0, addPoints: 0, remark: '' })
const walletSaving = ref(false)

const tagManageVisible = ref(false)
const newTagName = ref('')
const newTagColor = ref('#409eff')
const quickTagName = ref('')
const quickTagColor = ref('#409eff')

const cardsVisible = ref(false)
const cardsLoading = ref(false)
const memberCards = ref([])
const issueVisible = ref(false)
const issuing = ref(false)
const templates = ref([])
const pauseVisible = ref(false)
const pauseSaving = ref(false)
const pauseCard = ref(null)
const pauseForm = ref({ pauseFrom: '', autoResume: true, resumeDate: '', extendValidity: true })
const extendVisible = ref(false)
function openPause(row) {
  pauseCard.value = row
  const today = new Date()
  const p = (n) => (n < 10 ? '0' + n : '' + n)
  const ymdNow = today.getFullYear() + '-' + p(today.getMonth() + 1) + '-' + p(today.getDate())
  pauseForm.value = { pauseFrom: ymdNow, autoResume: true, resumeDate: '', extendValidity: true }
  pauseVisible.value = true
}
async function submitPause() {
  if (!pauseCard.value) return
  pauseSaving.value = true
  try {
    const result = await post('/adminGetUsers', {
      action: 'pauseCard',
      cardId: pauseCard.value._id,
      operatorName: localStorage.getItem('admin_name') || '管理员',
      data: pauseForm.value
    })
    if (!result.ok) { ElMessage.error(result.msg || '停卡失败'); return }
    ElMessage.success('已停卡，停卡期间未开始的预约已取消')
    pauseVisible.value = false
    if (detailUser.value && detailUser.value._id) openDetail(detailUser.value)
  } catch (e) { ElMessage.error(e.message || '停卡失败') }
  finally { pauseSaving.value = false }
}
const extending = ref(false)
const extendCard = ref({})
const extendDays = ref(30)
const cardDetailVisible = ref(false)
const cardSaving = ref(false)
const cardForm = ref({ _id: '', cardName: '', type: '', status: '', remainingTimes: 0, totalTimes: 0, validFrom: '', validTo: '', timeRule: { mode: 'unlimited', rules: [] }, rulesEdited: false })
const isStoreManager = roleKind() === 'manager'
const canExtendCards = can('extendCard')
const canRefundCard = can('refundCard')
const canIssueCard = can('issueCard')
const extendMin = isStoreManager ? -120 : -36500
const extendMax = isStoreManager ? 120 : 36500
const issueForm = ref({
  templateId: '', price: 0, totalTimes: 10, validFrom: '', validTo: '',
  remark: '', venueId: '', venueName: '', issuerName: ''
})

const base = import.meta.env.DEV
  ? '/api'
  : 'https://cloud1-d3g0pb1qk028e3585-d862bc2-1312769671.ap-shanghai.app.tcloudbase.com'

const activeTemplates = computed(() => templates.value.filter((t) => t.status === 'active'))
const selectedTemplate = computed(() => templates.value.find((t) => t._id === issueForm.value.templateId))
const previewNewValidTo = computed(() => {
  if (!extendVisible.value) return '-'
  return addDaysYmd(extendCard.value.validTo, extendDays.value)
})

function displayName(u) {
  if (!u) return '-'
  return u.nickName || u.nickname || u.name || u.userId || u._id || '-'
}
function money(v) {
  const n = Number(v)
  if (!Number.isFinite(n)) return '0.00'
  return n.toFixed(2)
}
function ymd(v) {
  if (!v) return ''
  const s = String(v).trim()
  const iso = s.match(/(\d{4})-(\d{2})-(\d{2})/)
  if (iso) return iso[1] + '-' + iso[2] + '-' + iso[3]
  const d = new Date(s)
  if (!Number.isNaN(d.getTime()) && d.getFullYear() >= 2020) {
    return `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, '0')}-${String(d.getDate()).padStart(2, '0')}`
  }
  return s.length <= 16 ? s : ''
}
function shortVenue(name) {
  const s = String(name || '')
  if (s.includes('陈家祠')) return '陈家祠'
  if (s.includes('花地湾')) return '花地湾'
  return s || '未分馆'
}
function csvCell(v) {
  const s = String(v == null ? '' : v).replace(/"/g, '""')
  return /[",\n]/.test(s) ? `"${s}"` : s
}
function friendlyMsg(msg) {
  const s = String(msg || '')
  if (/Duplicate entry/i.test(s) && /phone/i.test(s)) return '这个手机号已经注册过，搜索即可'
  const dup = s.match(/Duplicate entry '([^']+)'/i)
  if (dup) return '写入冲突：' + dup[1]
  if (/uk_name/i.test(s)) return '这个名称已经有了，请直接选择'
  return s
}
function isTimesLike(t) {
  return t === 'times' || t === 'coach' || t === 'group'
}
function typeLabel(t) {
  return { times: '次卡', coach: '教练卡', group: '团课', time: '时间卡' }[t] || t
}
function typeTag(t) {
  return { times: 'success', coach: 'warning', group: 'danger', time: 'primary' }[t] || 'info'
}
function statusLabel(s) {
  return { active: '有效', expired: '已过期', used_up: '已用完', refunded: '已退卡', deleted: '已删除', disabled: '已停用' }[s] || s
}
function statusTag(s) {
  return { active: 'success', expired: 'info', used_up: 'warning', refunded: 'danger', disabled: 'info' }[s] || 'info'
}
function emptyCardRule() {
  return { weekdays: [1, 2, 3, 4, 5], unlimited: false, timeSlots: [{ start: '10:00', end: '18:00' }] }
}
function parseCardRule(raw) {
  const base = { mode: 'unlimited', rules: [emptyCardRule()], maxHoursPerDay: 0, dateRanges: [], holidayKey: '', venueIds: [] }
  if (!raw) return base
  let r = raw
  if (typeof r === 'string') {
    try { r = JSON.parse(r) } catch (e) { return base }
  }
  const extra = {
    maxHoursPerDay: Number(r.maxHoursPerDay) > 0 ? Number(r.maxHoursPerDay) : 0,
    dateRanges: Array.isArray(r.dateRanges) ? r.dateRanges.map((x) => ({
      start: x.start || '', end: x.end || '', range: [x.start || '', x.end || ''].filter(Boolean)
    })) : [],
    holidayKey: r.holidayKey || '',
    venueIds: Array.isArray(r.venueIds) ? r.venueIds.slice() : []
  }
  if (r.mode === 'dates') return { mode: 'dates', rules: r.rules && r.rules.length ? r.rules : [emptyCardRule()], ...extra }
  if (r.mode === 'unlimited' || r.mode === 'all') return { mode: 'unlimited', rules: r.rules && r.rules.length ? r.rules : [emptyCardRule()], ...extra }
  const rules = Array.isArray(r.rules) && r.rules.length ? r.rules.map((x) => ({
    weekdays: (x.weekdays || [1, 2, 3, 4, 5]).map(Number),
    unlimited: x.unlimited === true,
    timeSlots: (x.timeSlots && x.timeSlots.length) ? x.timeSlots.map((s) => ({ start: s.start, end: s.end })) : [{ start: '10:00', end: '18:00' }]
  })) : [emptyCardRule()]
  return { mode: 'rules', rules, ...extra }
}
function openCardDetail(card) {
  const rule = parseCardRule(card.timeRule || card.time_rule)
  if (!(Number(rule.maxHoursPerDay) > 0)) {
    const tpl = templates.value.find((t) => String(t._id) === String(card.templateId || card.template_id || ''))
    const fromTpl = parseCardRule(tpl && (tpl.timeRule || tpl.time_rule))
    if (Number(fromTpl.maxHoursPerDay) > 0) rule.maxHoursPerDay = Number(fromTpl.maxHoursPerDay)
  }
  cardForm.value = {
    _id: card._id,
    cardName: card.cardName || '',
    type: card.type,
    status: card.status,
    remainingTimes: Number(card.remainingTimes || 0),
    totalTimes: Number(card.totalTimes || 0),
    validFrom: card.validFrom || '',
    validTo: card.validTo || '',
    timeRule: rule,
    rulesEdited: !!card.rulesEdited
  }
  cardDetailVisible.value = true
}
async function toggleListCard(row, action) {
  const name = row.cardName || '这张卡'
  try {
    await ElMessageBox.confirm(
      action === 'disable' ? `停用「${name}」后，预约时不能再选这张卡。` : `恢复启用「${name}」？`,
      action === 'disable' ? '停用此卡' : '启用此卡',
      { type: 'warning', confirmButtonText: action === 'disable' ? '确认停用' : '确认启用' }
    )
  } catch (e) { return }
  try {
    const result = await post('/adminGetUsers', {
      action: action === 'disable' ? 'disableCard' : 'enableCard',
      cardId: row._id,
      operatorName: localStorage.getItem('admin_name') || '管理员'
    })
    if (!result.ok) { ElMessage.error(result.msg || '操作失败'); return }
    ElMessage.success(action === 'disable' ? '已停用' : '已启用')
    row.status = action === 'disable' ? 'disabled' : 'active'
    refreshCards()
  } catch (e) {
    ElMessage.error(e.message || '失败')
  }
}
async function toggleCardStatus(action) {
  cardSaving.value = true
  try {
    const result = await post('/adminGetUsers', {
      action: action === 'disable' ? 'disableCard' : 'enableCard',
      cardId: cardForm.value._id,
      operatorName: localStorage.getItem('admin_name') || '管理员'
    })
    if (!result.ok) { ElMessage.error(result.msg || '操作失败'); return }
    ElMessage.success(action === 'disable' ? '已停用，预约时不能再选这张卡' : '已恢复启用')
    cardForm.value.status = action === 'disable' ? 'disabled' : 'active'
    refreshCards()
  } catch (e) {
    ElMessage.error(e.message || '失败')
  } finally { cardSaving.value = false }
}
async function saveCardDetail() {
  if (!cardForm.value._id) return
  cardSaving.value = true
  try {
    const result = await post('/adminGetUsers', {
      action: 'saveMemberCard',
      cardId: cardForm.value._id,
      operatorName: localStorage.getItem('admin_name') || '管理员',
      data: {
        cardName: cardForm.value.cardName,
        validFrom: cardForm.value.validFrom,
        validTo: cardForm.value.validTo,
        remainingTimes: cardForm.value.remainingTimes,
        totalTimes: cardForm.value.totalTimes,
        timeRule: cardForm.value.timeRule
      }
    })
    if (!result.ok) { ElMessage.error(result.msg || '保存失败'); return }
    ElMessage.success('已改这一张卡，模板和其他人的卡不受影响')
    cardForm.value.rulesEdited = true
    cardDetailVisible.value = false
    refreshCards()
  } catch (e) {
    ElMessage.error(e.message || '保存失败')
  } finally { cardSaving.value = false }
}
function refreshCards() {
  if (detailVisible.value && detailUser.value && detailUser.value._id) openDetail(detailUser.value)
  if (cardsVisible.value && currentUser.value) openCards(currentUser.value)
}
function ledgerLabel(t) {
  return { court_pay: '订场支付', card_issue: '发卡', card_refund: '退卡', card_use: '用卡', enroll: '团课' }[t] || t
}
function formatTime(t) {
  if (!t) return '-'
  if (typeof t === 'number') return new Date(t).toLocaleString()
  return String(t).slice(0, 19).replace('T', ' ')
}

async function post(path, body = {}) {
  const res = await fetch(base + path, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(body)
  })
  const text = await res.text()
  if (!text) return { ok: false, msg: '接口无返回，请覆盖部署对应云函数' }
  let data
  try { data = JSON.parse(text) } catch (e) { return { ok: false, msg: '接口返回不是 JSON，请检查云函数是否部署' } }
  const result = data.body ? (typeof data.body === 'string' ? JSON.parse(data.body) : data.body) : data
  if (result && result.msg) result.msg = friendlyMsg(result.msg)
  return result
}

async function submitReg() {
  const phone = String(regForm.value.phone || '').replace(/\D/g, '')
  if (!/^1\d{10}$/.test(phone)) { ElMessage.warning('请填写11位手机号'); return }
  regSaving.value = true
  try {
    const result = await post('/adminRegisterUser', {
      phone,
      nickName: (regForm.value.nickName || '').trim() || phone,
      venueId: localStorage.getItem('venue_id') || '',
      venueName: localStorage.getItem('venue_name') || ''
    })
    if (!result.ok) { ElMessage.error(result.msg || '失败'); return }
    ElMessage.success(result.existed ? '该手机已存在' : '已新增')
    regVisible.value = false
    regForm.value = { phone: '', nickName: '' }
    keyword.value = phone
    loadData()
  } catch (e) { ElMessage.error(e.message || '失败') }
  finally { regSaving.value = false }
}

async function loadVenues() {
  try {
    venueList.value = (await post('/adminGetVenues', {})).list || []
  } catch (e) {
    venueList.value = []
  }
}

async function loadData() {
  loading.value = true
  try {
    const result = await post('/adminGetUsers', {
      action: 'list',
      keyword: keyword.value.trim(),
      tagId: filterTagId.value || '',
      cardType: filterCardType.value || '',
      cardName: filterCardName.value || '',
      cardStatus: filterCardStatus.value || '',
      createdFrom: createdFrom.value || '',
      createdTo: createdTo.value || '',
      sort: sort.value
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '加载失败')
      return
    }
    list.value = result.list || []
    if (result.tags) tagList.value = result.tags
    if (result.venues) venueCols.value = result.venues
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    loading.value = false
  }
}

function resetAndLoad() {
  keyword.value = ''
  filterTagId.value = ''
  filterCardType.value = ''
  filterCardName.value = ''
  filterCardStatus.value = ''
  createdFrom.value = ''
  createdTo.value = ''
  sort.value = 'id_desc'
  loadData()
}

async function exportExcel() {
  exporting.value = true
  try {
    const result = await post('/adminGetUsers', {
      action: 'list',
      keyword: keyword.value.trim(),
      tagId: filterTagId.value || '',
      cardType: filterCardType.value || '',
      cardName: filterCardName.value || '',
      cardStatus: filterCardStatus.value || '',
      createdFrom: createdFrom.value || '',
      createdTo: createdTo.value || '',
      sort: sort.value,
      export: true,
      pageSize: 500
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '导出失败')
      return
    }
    const rows = result.list || []
    const venues = result.venues && result.venues.length ? result.venues : venueCols.value
    const extraNames = []
    rows.forEach((u) => {
      ;(u.spendByVenue || []).forEach((s) => {
        const n = s.venueName || '未分馆'
        if (!venues.some((v) => v.name === n) && !extraNames.includes(n)) extraNames.push(n)
      })
    })
    const venueNames = venues.map((v) => v.name).concat(extraNames)
    const header = ['昵称', '手机号', '会员号', '标签', '累计消费', '余额', '积分']
      .concat(venueNames.map((n) => n + '消费'))
      .concat(['持卡数', '最近到店', '所属场馆', '注册时间', '备注'])
    const lines = [header.map(csvCell).join(',')]
    rows.forEach((u) => {
      const spendMap = {}
      ;(u.spendByVenue || []).forEach((s) => {
        spendMap[s.venueName || '未分馆'] = Number(s.amount) || 0
      })
      const line = [
        displayName(u),
        u.phone || '',
        u.userId || '',
        (u.tags || []).map((t) => t.name).join('、'),
        money(u.totalSpend),
        money(u.balance),
        u.points || 0
      ]
        .concat(venueNames.map((n) => money(spendMap[n] || 0)))
        .concat([
          u.cardCount ?? 0,
          ymd(u.lastVisit),
          u.venueName || '',
          formatTime(u.createdAt).slice(0, 10),
          u.remark || ''
        ])
      lines.push(line.map(csvCell).join(','))
    })
    const blob = new Blob(['\uFEFF' + lines.join('\r\n')], { type: 'application/vnd.ms-excel;charset=utf-8;' })
    const a = document.createElement('a')
    a.href = URL.createObjectURL(blob)
    a.download = '用户列表_' + new Date().toISOString().slice(0, 10) + '.xls'
    a.click()
    URL.revokeObjectURL(a.href)
    ElMessage.success('已导出 ' + rows.length + ' 人')
  } catch (e) {
    ElMessage.error(e.message || '导出失败')
  } finally {
    exporting.value = false
  }
}

function bookingLabel(row) {
  if (row.status === 'cancelled') return '已取消'
  if (row.status === 'done' || row.status === 'completed') return '已完成'
  if (!canEditBooking(row) && row.status === 'booked') return '已开始'
  return '未完成'
}
function bookingTag(row) {
  if (row.status === 'cancelled') return 'info'
  if (row.status === 'done' || row.status === 'completed') return 'success'
  return 'warning'
}
function canEditBooking(row) {
  if (!row || row.status !== 'booked') return false
  const start = String(row.date || '') + ' ' + String(row.time || '00:00').split('-')[0]
  return new Date(start.replace(/-/g, '/')).getTime() > Date.now()
}
function openBookingEdit(row) {
  bookEdit.value = {
    id: row._id || row.id,
    court: row.court || '',
    date: ymd(row.date),
    time: row.time || '',
    amount: Number(row.amount) || 0,
    remark: row.remark || ''
  }
  bookEditVisible.value = true
}
async function saveBookingEdit() {
  bookEditSaving.value = true
  try {
    const result = await post('/adminSaveBooking', {
      action: 'update',
      id: bookEdit.value.id,
      data: {
        court: bookEdit.value.court,
        date: bookEdit.value.date,
        time: bookEdit.value.time,
        amount: bookEdit.value.amount,
        remark: bookEdit.value.remark,
        operatorName: localStorage.getItem('admin_name') || '管理员'
      }
    })
    if (!result.ok) { ElMessage.error(result.msg || '保存失败'); return }
    ElMessage.success('已改未开始的预约')
    bookEditVisible.value = false
    if (detailUser.value && detailUser.value._id) openDetail(detailUser.value)
  } catch (e) {
    ElMessage.error(e.message || '保存失败')
  } finally { bookEditSaving.value = false }
}
function onSelect(rows) {
  selected.value = rows
}
function onRowClick(row, col) {
  if (col && col.type === 'selection') return
  openDetail(row)
}

async function openDetail(row) {
  currentUser.value = row
  detailVisible.value = true
  detailLoading.value = true
  try {
    const result = await post('/adminGetUsers', { action: 'detail', userId: row._id })
    if (!result.ok) {
      ElMessage.error(result.msg || '加载详情失败')
      return
    }
    detailUser.value = result.user || row
    detailCards.value = result.cards || []
    detailBookings.value = result.bookings || []
    detailLedger.value = result.ledger || []
    detailTagIds.value = (result.user.tags || []).map((t) => t._id)
    detailRemark.value = result.user.remark || ''
    if (result.tags) tagList.value = result.tags
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    detailLoading.value = false
  }
}

async function resolveTagIds(values) {
  const ids = []
  for (const raw of values || []) {
    const s = String(raw)
    const known = tagList.value.find((t) => t._id === s || t.name === s)
    if (known) {
      ids.push(known._id)
      continue
    }
    const created = await post('/adminGetUsers', {
      action: 'saveTag',
      name: s.trim(),
      color: quickTagColor.value || '#409eff'
    })
    if (created.list) tagList.value = created.list
    if (created.exists && created.id) {
      ids.push(created.id)
      continue
    }
    if (created.ok && created.list) {
      const hit = created.list.find((t) => t.name === s.trim())
      if (hit) ids.push(hit._id)
    }
  }
  return Array.from(new Set(ids))
}

async function saveDetailTags(ids) {
  if (!detailUser.value._id) return
  try {
    const tagIds = await resolveTagIds(ids)
    const result = await post('/adminGetUsers', {
      action: 'setUserTags',
      userId: detailUser.value._id,
      tagIds
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '保存标签失败')
      return
    }
    detailUser.value.tags = result.tags || []
    detailTagIds.value = (result.tags || []).map((t) => t._id)
    loadData()
  } catch (e) {
    ElMessage.error(e.message || '保存标签失败')
  }
}

async function createAndAttachTag() {
  const name = quickTagName.value.trim()
  if (!name) {
    ElMessage.warning('请输入标签名')
    return
  }
  const created = await post('/adminGetUsers', {
    action: 'saveTag',
    name,
    color: quickTagColor.value || '#409eff'
  })
  if (!created.ok) {
    ElMessage.warning(created.msg || '这个标签已经有了')
    if (created.list) tagList.value = created.list
    if (created.id && !detailTagIds.value.includes(created.id)) {
      detailTagIds.value = detailTagIds.value.concat([created.id])
      await saveDetailTags(detailTagIds.value)
    }
    quickTagName.value = ''
    return
  }
  tagList.value = created.list || []
  const hit = (created.list || []).find((t) => t.name === name)
  if (hit && !detailTagIds.value.includes(hit._id)) {
    detailTagIds.value = detailTagIds.value.concat([hit._id])
  }
  quickTagName.value = ''
  await saveDetailTags(detailTagIds.value)
  ElMessage.success('已新增并打上')
}

async function saveRemark() {
  if (!detailUser.value._id) return
  await post('/adminGetUsers', {
    action: 'saveRemark',
    userId: detailUser.value._id,
    remark: detailRemark.value
  }).catch(() => {})
}

async function saveWallet() {
  if (!detailUser.value._id) return
  if (!wallet.value.addBalance && !wallet.value.addPoints) {
    ElMessage.warning('请填写要增减的余额或积分')
    return
  }
  walletSaving.value = true
  try {
    const result = await post('/adminGetUsers', {
      action: 'adjustWallet',
      userId: detailUser.value._id,
      addBalance: wallet.value.addBalance || 0,
      addPoints: wallet.value.addPoints || 0,
      remark: wallet.value.remark || '',
      operatorName: localStorage.getItem('admin_name') || '管理员'
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '保存失败')
      return
    }
    detailUser.value.balance = result.balance
    detailUser.value.points = result.points
    wallet.value = { addBalance: 0, addPoints: 0, remark: '' }
    ElMessage.success('已更新 余额¥' + money(result.balance) + ' 积分' + result.points)
    loadData()
  } catch (e) {
    ElMessage.error(e.message || '保存失败')
  } finally {
    walletSaving.value = false
  }
}

async function addTag() {
  const name = newTagName.value.trim()
  if (!name) return
  const result = await post('/adminGetUsers', { action: 'saveTag', name, color: newTagColor.value })
  if (!result.ok) {
    ElMessage.warning(result.msg || '这个标签已经有了，不用重复添加')
    if (result.list) tagList.value = result.list
    return
  }
  tagList.value = result.list || []
  newTagName.value = ''
  ElMessage.success('已添加')
}

async function removeTag(row) {
  try {
    await ElMessageBox.confirm('删除标签「' + row.name + '」？已打在会员上的也会去掉。', '删除标签', { type: 'warning' })
    const result = await post('/adminGetUsers', { action: 'deleteTag', id: row._id })
    if (!result.ok) {
      ElMessage.error(result.msg || '删除失败')
      return
    }
    tagList.value = result.list || []
    loadData()
  } catch (e) {}
}

async function loadTemplates() {
  try {
    templates.value = (await post('/adminGetCardTemplates', {})).list || []
  } catch (e) {}
}

async function openCards(row) {
  currentUser.value = row
  cardsVisible.value = true
  cardsLoading.value = true
  memberCards.value = []
  try {
    memberCards.value = (await post('/adminGetMemberCards', { userId: row._id, openid: row._openid || '' })).list || []
  } catch (e) {
    ElMessage.error(e.message || '加载持卡失败')
  } finally {
    cardsLoading.value = false
  }
}

function addDaysYmd(ymd, days) {
  const base = ymd && /^\d{4}-\d{2}-\d{2}/.test(String(ymd))
    ? String(ymd).slice(0, 10)
    : new Date().toISOString().slice(0, 10)
  const d = new Date(base.replace(/-/g, '/') + ' 00:00:00')
  d.setDate(d.getDate() + Number(days || 0))
  return `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, '0')}-${String(d.getDate()).padStart(2, '0')}`
}

function openExtend(card) {
  if (!canExtendCards) {
    ElMessage.warning('当前账号无延期权限')
    return
  }
  extendCard.value = card
  extendDays.value = 30
  extendVisible.value = true
}

async function submitExtend() {
  const days = Number(extendDays.value)
  if (!days) {
    ElMessage.warning('请填写非 0 的天数')
    return
  }
  if (isStoreManager && (days < -120 || days > 120)) {
    ElMessage.warning('店长只能调整 ±120 天以内')
    return
  }
  const nextTo = addDaysYmd(extendCard.value.validTo, days)
  if (extendCard.value.validFrom && nextTo < extendCard.value.validFrom) {
    ElMessage.error('调整后到期日不能早于发卡日期 ' + extendCard.value.validFrom)
    return
  }
  extending.value = true
  try {
    const result = await post('/adminExtendCard', {
      cardId: extendCard.value._id,
      days,
      role: localStorage.getItem('admin_role') || 'admin',
      adminId: localStorage.getItem('admin_token') || '',
      operatorName: localStorage.getItem('admin_name') || '管理员'
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '延期失败')
      return
    }
    ElMessage.success('已调整到期日：' + (result.validTo || previewNewValidTo.value))
    extendVisible.value = false
    if (detailVisible.value && detailUser.value._id) openDetail(detailUser.value)
    if (currentUser.value) openCards(currentUser.value)
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    extending.value = false
  }
}

async function onDeleteCard(card) {
  try {
    const needRefund = card.status !== 'refunded' && card.status !== 'deleted'
    await ElMessageBox.confirm(
      needRefund
        ? '删除「' + card.cardName + '」后卡立即失效，并按剩余次数退款入账。'
        : '「' + card.cardName + '」已退卡，删除后不再显示。',
      '删除持卡',
      { type: 'warning', confirmButtonText: needRefund ? '删除并退款' : '确认删除' }
    )
    const result = await post('/adminRefundCard', {
      action: 'delete',
      cardId: card._id,
      operatorName: localStorage.getItem('admin_name') || '管理员'
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '删除失败')
      return
    }
    const amt = Number(result.refundAmount) || 0
    ElMessage.success(amt ? '已删除并退款 ¥' + amt : '已删除')
    detailCards.value = detailCards.value.filter((c) => c._id !== card._id)
    memberCards.value = memberCards.value.filter((c) => c._id !== card._id)
    if (detailUser.value && detailUser.value._id) openDetail(detailUser.value)
    loadData()
  } catch (e) {
    if (e !== 'cancel') ElMessage.error(e.message || '删除失败')
  }
}

async function onRefund(card) {
  try {
    await ElMessageBox.confirm(`确定退卡「${card.cardName}」？`, '退卡确认', { type: 'warning', confirmButtonText: '确认退卡' })
    const result = await post('/adminRefundCard', {
      cardId: card._id,
      operatorName: localStorage.getItem('admin_name') || '管理员'
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '退卡失败')
      return
    }
    ElMessage.success('已退卡')
    if (currentUser.value) openCards(currentUser.value)
    loadData()
  } catch (e) {
    if (e !== 'cancel') ElMessage.error(e.message || '退卡失败')
  }
}

function onVenuePick(id) {
  const v = venueList.value.find((x) => (x.venueId || x._id) === id)
  issueForm.value.venueName = v ? v.name : ''
}

function blankIssue(extra) {
  return {
    templateId: '',
    price: 0,
    totalTimes: 10,
    validFrom: new Date().toISOString().slice(0, 10),
    validTo: '',
    activateMode: 'now',
    durationDays: 30,
    remark: '',
    venueId: extra.venueId || localStorage.getItem('venue_id') || '',
    venueName: extra.venueName || localStorage.getItem('venue_name') || '',
    issuerName: localStorage.getItem('admin_name') || '',
    allowedVenueIds: []
  }
}

function openIssue(row) {
  batchMode.value = false
  currentUser.value = row
  issueForm.value = blankIssue({ venueId: row.venueId, venueName: row.venueName })
  issueVisible.value = true
}

function openBatchDisable() {
  disableForm.value = { cardName: filterCardName.value || '', status: filterCardStatus.value || 'active', keyword: '' }
  disableList.value = []
  disableSelected.value = []
  disableVisible.value = true
  loadDisableCards()
}
function onDisableSelect(rows) { disableSelected.value = rows || [] }
async function loadDisableCards() {
  disableLoading.value = true
  try {
    const result = await post('/adminGetUsers', {
      action: 'listCards',
      cardName: disableForm.value.cardName || '',
      cardStatus: disableForm.value.status || '',
      keyword: disableForm.value.keyword || ''
    })
    if (!result.ok) { ElMessage.error(result.msg || '加载失败'); return }
    disableList.value = result.list || []
  } catch (e) {
    ElMessage.error(e.message || '失败')
  } finally { disableLoading.value = false }
}
async function submitBatchDisable() {
  if (!disableSelected.value.length) return
  try {
    await ElMessageBox.confirm(`确认停用已选 ${disableSelected.value.length} 张卡？停用后预约不能再选。`, '批量停用', { type: 'warning' })
  } catch (e) { return }
  disableSaving.value = true
  try {
    const result = await post('/adminGetUsers', {
      action: 'batchDisableCards',
      cardIds: disableSelected.value.map((r) => r._id),
      operatorName: localStorage.getItem('admin_name') || '管理员'
    })
    if (!result.ok) { ElMessage.error(result.msg || '停用失败'); return }
    ElMessage.success('已停用 ' + disableSelected.value.length + ' 张')
    loadDisableCards()
    loadData()
  } catch (e) {
    ElMessage.error(e.message || '失败')
  } finally { disableSaving.value = false }
}
function openBatchIssue() {
  batchMode.value = true
  batchKeyword.value = keyword.value
  batchTagId.value = filterTagId.value
  batchSelected.value = []
  issueForm.value = blankIssue({
    venueId: localStorage.getItem('venue_id') || '',
    venueName: localStorage.getItem('venue_name') || ''
  })
  batchVisible.value = true
  loadTemplates()
  loadBatchUsers()
}
function isPicked(row) {
  return batchSelected.value.some((u) => String(u._id) === String(row._id))
}
function togglePick(row, on) {
  if (on) {
    if (!isPicked(row)) batchSelected.value = batchSelected.value.concat([row])
  } else {
    batchSelected.value = batchSelected.value.filter((u) => String(u._id) !== String(row._id))
  }
}
function removePick(row) {
  batchSelected.value = batchSelected.value.filter((u) => String(u._id) !== String(row._id))
}
function addAllSearch() {
  const map = {}
  batchSelected.value.forEach((u) => { map[String(u._id)] = u })
  batchList.value.forEach((u) => { map[String(u._id)] = u })
  batchSelected.value = Object.values(map)
}
async function loadBatchUsers() {
  batchLoading.value = true
  try {
    const result = await post('/adminGetUsers', {
      action: 'list',
      keyword: batchKeyword.value.trim(),
      tagId: batchTagId.value || '',
      sort: 'id_desc'
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '搜索失败')
      batchList.value = []
      return
    }
    batchList.value = result.list || []
    if (result.tags) tagList.value = result.tags
  } catch (e) {
    ElMessage.error(e.message || '搜索失败')
    batchList.value = []
  } finally {
    batchLoading.value = false
  }
}
async function submitBatchIssue() {
  if (!issueForm.value.templateId) { ElMessage.warning('请先选择要发的卡'); return }
  if (!issueForm.value.venueId) { ElMessage.warning('请选择发卡场馆'); return }
  if (!String(issueForm.value.issuerName || '').trim()) { ElMessage.warning('请填写发卡人'); return }
  if (!batchSelected.value.length) { ElMessage.warning('请勾选要发卡的用户'); return }
  const tpl = selectedTemplate.value
  try {
    await ElMessageBox.confirm(
      `确认给 ${batchSelected.value.length} 人发放「${tpl ? tpl.name : '会员卡'}」，每人实收 ¥${Number(issueForm.value.price || 0).toFixed(2)}？`,
      '批量发卡确认',
      { type: 'warning', confirmButtonText: '确认发放' }
    )
  } catch (e) { return }
  issuing.value = true
  try {
    let ok = 0
    let fail = 0
    for (const u of batchSelected.value) {
      const result = await issueOne(u)
      if (result && result.ok) ok++
      else fail++
    }
    if (fail && !ok) { ElMessage.error('发卡失败'); return }
    ElMessage.success(fail ? `成功 ${ok} 人，失败 ${fail} 人` : `已发给 ${ok} 人，可继续搜下一批`)
    batchSelected.value = []
    batchKeyword.value = ''
    loadData()
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    issuing.value = false
  }
}

function applyIssueDates() {
  const days = Number(issueForm.value.durationDays) || 0
  if (issueForm.value.activateMode === 'first_use') {
    issueForm.value.validFrom = ''
    issueForm.value.validTo = ''
    return
  }
  const now = new Date()
  const p = (n) => (n < 10 ? '0' + n : '' + n)
  const ymd = (d) => d.getFullYear() + '-' + p(d.getMonth() + 1) + '-' + p(d.getDate())
  issueForm.value.validFrom = ymd(now)
  if (days > 0) {
    const end = new Date(now)
    end.setDate(end.getDate() + days)
    issueForm.value.validTo = ymd(end)
  } else {
    issueForm.value.validTo = ''
  }
}
function onTemplateChange(id) {
  const t = templates.value.find((x) => x._id === id)
  if (!t) return
  issueForm.value.totalTimes = t.totalTimes || 10
  issueForm.value.price = 0
  const rule = parseCardRule(t.timeRule || t.time_rule)
  issueForm.value.allowedVenueIds = (rule.venueIds || []).slice()
  issueForm.value.activateMode = rule.activateMode || 'now'
  issueForm.value.durationDays = Number(t.durationDays) || Number(rule.durationDays) || 0
  if (rule.mode === 'dates' && rule.dateRanges && rule.dateRanges.length) {
    const starts = rule.dateRanges.map((x) => x.start).filter(Boolean).sort()
    const ends = rule.dateRanges.map((x) => x.end).filter(Boolean).sort()
    issueForm.value.activateMode = 'now'
    if (starts[0]) issueForm.value.validFrom = starts[0]
    if (ends.length) issueForm.value.validTo = ends[ends.length - 1]
    return
  }
  applyIssueDates()
}

async function issueOne(user) {
  return post('/adminIssueCard', {
    userId: user._id,
    openid: user._openid || '',
    userName: displayName(user),
    templateId: issueForm.value.templateId,
    totalTimes: issueForm.value.totalTimes,
    price: Number(issueForm.value.price) || 0,
    validFrom: issueForm.value.activateMode === 'first_use' ? null : issueForm.value.validFrom,
    validTo: issueForm.value.activateMode === 'first_use' ? null : (issueForm.value.validTo || null),
    activateMode: issueForm.value.activateMode || 'now',
    durationDays: Number(issueForm.value.durationDays) || 0,
    remark: issueForm.value.remark,
    venueId: issueForm.value.venueId,
    venueName: issueForm.value.venueName,
    issuerName: String(issueForm.value.issuerName).trim(),
    allowedVenueIds: issueForm.value.allowedVenueIds || []
  })
}

async function submitIssue() {
  if (!issueForm.value.templateId) {
    ElMessage.warning('请选择卡模板')
    return
  }
  if (!issueForm.value.venueId) {
    ElMessage.warning('请选择发卡场馆')
    return
  }
  if (!String(issueForm.value.issuerName || '').trim()) {
    ElMessage.warning('请填写发卡人')
    return
  }
  const targets = batchMode.value ? selected.value.slice() : [currentUser.value]
  if (!targets.length || !targets[0]) {
    ElMessage.warning('用户信息异常')
    return
  }
  const tpl = selectedTemplate.value
  const who = batchMode.value ? `${selected.value.length} 人` : displayName(currentUser.value)
  try {
    await ElMessageBox.confirm(
      `确认给 ${who} 发放「${tpl ? tpl.name : '会员卡'}」，实收 ¥${Number(issueForm.value.price || 0).toFixed(2)}？`,
      '发卡确认',
      { type: 'warning', confirmButtonText: '确认发卡' }
    )
  } catch (e) { return }
  issuing.value = true
  try {
    let ok = 0
    let fail = 0
    for (const u of targets) {
      const result = await issueOne(u)
      if (result && result.ok) ok++
      else fail++
    }
    if (fail && !ok) {
      ElMessage.error('发卡失败')
      return
    }
    ElMessage.success(fail ? `成功 ${ok} 人，失败 ${fail} 人` : `发卡成功（${ok}）`)
    issueVisible.value = false
    loadData()
    if (detailVisible.value && detailUser.value._id) openDetail(detailUser.value)
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    issuing.value = false
  }
}

onMounted(async () => {
  if (route.query.q) keyword.value = String(route.query.q)
  loadVenues()
  loadTemplates()
  await loadData()
  if (route.query.open === '1' && list.value.length) {
    const phone = String(route.query.q || '')
    const hit = list.value.find((u) => String(u.phone || '') === phone) || list.value[0]
    openDetail(hit)
  }
})
</script>

<style scoped>
.page-header { display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 12px; gap: 12px; }
h2 { margin: 0; font-size: 20px; color: #1a5c3a; }
.sub { margin: 4px 0 0; color: #909399; font-size: 13px; }
.toolbar { display: flex; gap: 8px; }
.card { background: #fff; border-radius: 10px; padding: 12px 14px; margin-bottom: 12px; }
.filters { display: flex; flex-wrap: wrap; gap: 8px; align-items: center; }
.name-cell { display: flex; flex-direction: column; }
.name-link { color: #1a5c3a; font-weight: 600; cursor: pointer; }
.uid { font-size: 12px; color: #999; }
.tag { margin-right: 4px; }
.spend { font-weight: 600; color: #e6a23c; }
.spend-break { font-size: 12px; color: #888; line-height: 1.4; margin-top: 2px; display: flex; flex-wrap: wrap; gap: 8px; }
.venue-spend { display: flex; flex-wrap: wrap; gap: 8px; margin: 0 0 16px; }
.stat.slim { min-width: 120px; flex: 1; }
.muted { color: #ccc; }
.hint { margin-left: 8px; color: #999; font-size: 12px; }
.wallet-row { display: flex; align-items: center; gap: 10px; margin-bottom: 6px; }
.drawer-name { font-size: 18px; font-weight: 700; }
.drawer-sub { font-size: 13px; color: #888; margin-top: 2px; }
.detail { padding-right: 8px; }
.stat-row { display: grid; grid-template-columns: 1fr 1fr 1fr; gap: 8px; margin-bottom: 16px; }
.stat { background: #f6faf7; border-radius: 10px; padding: 12px; text-align: center; }
.stat .num { font-size: 18px; font-weight: 700; color: #1a5c3a; }
.stat .lab { font-size: 12px; color: #888; margin-top: 4px; }
.block { margin-bottom: 18px; }
.block-title { font-weight: 600; margin-bottom: 8px; color: #333; }
.color-dot { display: inline-block; width: 14px; height: 14px; border-radius: 50%; }
.batch-picked { display: flex; flex-wrap: wrap; gap: 6px; margin: 0 0 8px; align-items: center; }
.batch-user-head { font-weight: 600; color: #1a5c3a; margin: 8px 0; }
.batch-card-form { background: #f7faf8; border-radius: 8px; padding: 8px 12px 0; margin-bottom: 12px; }
.rules-box { padding: 0 0 8px 110px; }
.rule-card { background: #f7faf8; border-radius: 8px; padding: 10px 12px; margin-bottom: 10px; }
.rule-head { display: flex; justify-content: space-between; align-items: center; margin-bottom: 6px; }
.slots { display: flex; flex-direction: column; gap: 6px; }
.slot-row { display: flex; align-items: center; gap: 8px; }
.new-tag-row { display: flex; align-items: center; gap: 8px; margin-top: 8px; flex-wrap: wrap; }
</style>
