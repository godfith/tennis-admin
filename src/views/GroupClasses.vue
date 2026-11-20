<template>
  <div class="page">
    <div class="page-header">
      <div>
        <h2>团课排期</h2>
        <p class="tip">固定团课是门店按顺序轮流开课，时间由教练或店长每次开课时自定 · 全部门店共享课表 · 可查看报名名单并加减学员</p>
      </div>
      <div>
        <el-button :loading="loading" @click="loadData">刷新</el-button>
        <el-button type="success" plain :disabled="!list.length" @click="exportExcel">导出</el-button>
        <el-button v-if="canManageAll" @click="openSettings">团课设置</el-button>
        <el-button v-if="showBatchAndRotation && canManageAll" @click="openGenerate">生成轮转排期</el-button>
        <el-button v-if="showBatchAndRotation && canManageAll" @click="openBatch">批量排课</el-button>
        <el-button v-if="canPublishGroup" type="primary" @click="openAdd">新增团课</el-button>
      </div>
    </div>

    <div class="filters">
      <el-select v-model="filterVenueId" placeholder="全部门店" clearable style="width:200px" @change="loadData">
        <el-option label="全部门店" value="" />
        <el-option v-for="v in venues" :key="v.venueId" :label="v.name" :value="String(v.venueId)" />
      </el-select>
      <el-date-picker
        v-model="filterDate"
        type="date"
        value-format="YYYY-MM-DD"
        placeholder="筛选日期"
        clearable
        @change="loadData"
      />
      <el-select v-model="filterType" placeholder="全部类型" clearable style="width:140px" @change="loadData">
        <el-option label="全部类型" value="" />
        <el-option label="固定团课" value="fixed" />
        <el-option label="自组团课" value="self" />
      </el-select>
    </div>

    <el-table :data="list" stripe border v-loading="loading">
      <el-table-column prop="name" label="名称" min-width="120" />
      <el-table-column label="类型" width="100">
        <template #default="{ row }">
          <el-tag :type="row.classType === 'self' ? 'warning' : 'success'" size="small">
            {{ row.classTypeLabel || (row.classType === 'self' ? '自组团课' : '固定团课') }}
          </el-tag>
        </template>
      </el-table-column>
      <el-table-column label="主题" min-width="140">
        <template #default="{ row }">{{ row.theme || '-' }}</template>
      </el-table-column>
      <el-table-column prop="venueName" label="上课门店" width="160">
        <template #default="{ row }">
          {{ row.venueName || venueLabel(row.venueId) || '-' }}
          <el-tag v-if="isShellVenue(row.venueId)" size="small" type="info" style="margin-left:4px">空壳</el-tag>
        </template>
      </el-table-column>
      <el-table-column label="日期" width="150">
        <template #default="{ row }">{{ formatDateCn(row.date) }}</template>
      </el-table-column>
      <el-table-column label="时段" width="130">
        <template #default="{ row }">{{ formatTimeSlot(row.time) }}</template>
      </el-table-column>
      <el-table-column prop="court" label="场地" width="100" />
      <el-table-column prop="coachName" label="教练" width="100" />
      <el-table-column label="人数" width="120">
        <template #default="{ row }">
          {{ row.enrolled || 0 }} / {{ row.capacity || '-' }}
          <el-tag v-if="isTempOver(row)" type="warning" size="small" style="margin-left:4px">临时</el-tag>
        </template>
      </el-table-column>
      <el-table-column label="开班规则" width="140">
        <template #default="{ row }">
          <span v-if="(row.minEnrollment || 0) > 0">满{{ row.minEnrollment }}人开 · 提前{{ row.cancelBeforeHours != null ? row.cancelBeforeHours : 2 }}小时</span>
          <span v-else class="muted">不自动取消</span>
        </template>
      </el-table-column>
      <el-table-column label="状态" width="100">
        <template #default="{ row }">
          <el-tag :type="statusType(row.status)" size="small">{{ statusLabel(row.status) }}</el-tag>
        </template>
      </el-table-column>
      <el-table-column label="操作" width="300" fixed="right">
        <template #default="{ row }">
          <el-button link type="success" @click="openMembers(row)">名单</el-button>
          <el-button v-if="canEditClass(row)" link type="primary" @click="openEdit(row)">编辑</el-button>
          <el-button v-if="canEditClass(row) && row.status === 'cancelled'" link type="warning" @click="onRestore(row)">恢复</el-button>
          <el-button v-else-if="canEditClass(row)" link type="warning" @click="toggleStatus(row)">
            {{ row.status === 'open' ? '关闭' : '开放' }}
          </el-button>
          <el-button v-if="canEditClass(row)" link type="danger" @click="onDelete(row)">删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <el-dialog
      v-model="visible"
      :title="form._id ? '编辑团课' : '新增团课'"
      width="520px"
      destroy-on-close
    >
      <el-form label-width="110px">
        <el-form-item label="上课门店" required>
          <el-select v-model="form.venueId" placeholder="选择门店" style="width:100%" @change="onFormVenueChange">
            <el-option v-for="v in venues" :key="v.venueId" :label="v.name" :value="String(v.venueId)" />
          </el-select>
          <div v-if="nextFixedHint" class="field-hint">{{ nextFixedHint }}</div>
        </el-form-item>
        <el-form-item label="名称" required>
          <el-input v-model="form.name" placeholder="如：周三晚提高班" />
        </el-form-item>
        <el-form-item label="类型" required>
          <el-radio-group v-model="form.classType" @change="onClassTypeChange">
            <el-radio-button value="fixed">固定团课</el-radio-button>
            <el-radio-button value="self">自组团课</el-radio-button>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="当日主题">
          <el-input v-model="form.theme" placeholder="选填，如：发球与接发" maxlength="200" show-word-limit />
        </el-form-item>
        <el-form-item label="日期" required>
          <el-date-picker v-model="form.date" type="date" value-format="YYYY-MM-DD" style="width:100%" />
        </el-form-item>
        <el-form-item label="时段" required>
          <el-select v-model="form.time" placeholder="选择时段" style="width:100%">
            <el-option v-for="t in timeSlots" :key="t" :label="formatTimeSlot(t)" :value="t" />
          </el-select>
        </el-form-item>
        <el-form-item label="场地" required>
          <el-select v-model="form.court" placeholder="选择场地" style="width:100%">
            <el-option v-for="c in courts" :key="c._id" :label="c.name" :value="c.name" />
          </el-select>
        </el-form-item>
        <el-form-item label="教练">
          <el-select v-model="form.coachId" placeholder="选择教练（可空）" :clearable="!coachLocked" :disabled="coachLocked" style="width:100%" @change="onCoachChange">
            <el-option v-for="c in coaches" :key="c._id" :label="coachOptionLabel(c)" :value="c._id" />
          </el-select>
          <div v-if="coachLocked" class="field-hint">教练账号只能发布自己的团课</div>
        </el-form-item>
        <el-form-item label="人数" required>
          <el-input-number v-model="form.capacity" :min="1" :max="999" />
        </el-form-item>
        <el-form-item label="最低开班人数">
          <el-input-number v-model="form.minEnrollment" :min="0" :max="999" />
          <div class="field-hint">0 表示不自动取消；大于 0 时人数不足将在开课前自动取消</div>
        </el-form-item>
        <el-form-item label="提前取消(小时)">
          <el-input-number v-model="form.cancelBeforeHours" :min="0" :max="72" />
        </el-form-item>
        <el-form-item label="状态">
          <el-switch v-model="form.open" active-text="开放报名" inactive-text="关闭" />
        </el-form-item>
        <el-form-item label="备注">
          <el-input v-model="form.remark" type="textarea" :rows="2" />
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="visible = false">取消</el-button>
        <el-button type="primary" :loading="saving" @click="save">保存</el-button>
      </template>
    </el-dialog>

    <el-dialog
      v-model="memberVisible"
      :title="`报名名单 · ${currentClass.name || ''}`"
      width="760px"
      destroy-on-close
    >
      <div class="member-toolbar">
        <span>
          已报名 {{ members.length }} / {{ currentClass.capacity || '-' }}
          <el-tag v-if="isTempOver(currentClass)" type="warning" size="small" style="margin-left:6px">临时</el-tag>
          · {{ currentClass.venueName || venueLabel(currentClass.venueId) || '' }}
        </span>
        <el-button type="primary" size="small" @click="openAddMember">添加学员</el-button>
      </div>

      <el-table :data="members" stripe border v-loading="memberLoading" size="small">
        <el-table-column prop="userName" label="学员" min-width="110" />
        <el-table-column prop="phone" label="手机" width="120" />
        <el-table-column label="所属门店" width="120">
          <template #default="{ row }">{{ row.userVenueName || '-' }}</template>
        </el-table-column>
        <el-table-column prop="cardName" label="使用卡" min-width="110" />
        <el-table-column label="卡来源门店" width="120">
          <template #default="{ row }">{{ row.cardVenueName || '-' }}</template>
        </el-table-column>
        <el-table-column label="操作" width="90" fixed="right">
          <template #default="{ row }">
            <el-button link type="danger" @click="removeMember(row)">移除</el-button>
          </template>
        </el-table-column>
      </el-table>

      <template #footer>
        <el-button @click="memberVisible = false">关闭</el-button>
      </template>
    </el-dialog>

    <el-dialog v-model="addMemberVisible" title="添加学员到团课" width="480px" destroy-on-close>
      <el-form label-width="90px">
        <el-form-item label="学员" required>
          <el-select
            v-model="addForm.memberKey"
            filterable
            remote
            clearable
            reserve-keyword
            placeholder="输入昵称/手机号搜索"
            :remote-method="searchMembers"
            :loading="memberSearchLoading"
            style="width:100%"
            @change="onMemberPick"
          >
            <el-option
              v-for="m in memberOptions"
              :key="m._id"
              :label="memberLabel(m)"
              :value="m._id"
            />
          </el-select>
        </el-form-item>
        <el-form-item label="团课卡" required>
          <el-select
            v-model="addForm.cardId"
            placeholder="请选择团课卡"
            style="width:100%"
            :loading="cardLoading"
            :disabled="!addForm.memberKey"
          >
            <el-option
              v-for="c in groupCards"
              :key="c._id"
              :label="cardLabel(c)"
              :value="c._id"
            />
          </el-select>
          <div v-if="addForm.memberKey && !cardLoading && groupCards.length === 0" class="hint-error">
            该会员没有可用团课卡
          </div>
        </el-form-item>
        <el-form-item label="报名人数" required>
          <el-input-number
            v-model="addForm.seats"
            :min="1"
            :max="addMaxSeats"
            :disabled="!addForm.cardId"
          />
          <div class="field-hint">
            扣节数与名额相同，默认 1。同一学员可占多个名额。
            <span v-if="addForm.cardId">当前最多 {{ addMaxSeats }}（卡剩 {{ selectedGroupRemain }} 次{{ addCapHint }}）。</span>
            <span v-if="alreadySeatsForPick">该学员已占 {{ alreadySeatsForPick }} 个名额，可再加。</span>
          </div>
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="addMemberVisible = false">取消</el-button>
        <el-button type="primary" :loading="adding" @click="submitAddMember">确认添加</el-button>
      </template>
    </el-dialog>

    <el-dialog v-model="settingsVisible" title="团课设置" width="680px" destroy-on-close>
      <p class="tip" style="margin-bottom:12px">固定团课是门店按顺序轮流开课，时间由教练或店长每次开课时自定。可在下面批量勾选固定门店并调整轮转顺序；各店人数和报名规则都在这里改，不会写死在代码里。每家店的人数你自己填，1 个人也可以。</p>
      <el-form label-width="150px">
        <el-form-item v-if="showBatchAndRotation" label="轮转起始日">
          <el-date-picker v-model="settingsForm.rotationStartDate" type="date" value-format="YYYY-MM-DD" />
          <div class="field-hint">用来对齐「第几天轮到哪家店」。改日期会平移后续排期对应的门店。</div>
        </el-form-item>
        <el-form-item label="固定团课随时报">
          <el-switch v-model="settingsForm.fixedOpenAnytime" active-text="有空位就可报" inactive-text="按提前天数" />
        </el-form-item>
        <el-form-item label="自组提前报名天数">
          <el-input-number v-model="settingsForm.selfOrganizeAdvanceDays" :min="0" :max="30" />
          <div class="field-hint">按自然日计算。例如提前 2 天，21 日的课最晚 19 日可报。成团后仍可由门店在后台加人直到满班。</div>
        </el-form-item>
        <el-form-item label="默认提前取消小时">
          <el-input-number v-model="settingsForm.defaultCancelBeforeHours" :min="0" :max="72" />
        </el-form-item>
        <el-form-item label="默认最低开班人数">
          <el-input-number v-model="settingsForm.defaultMinEnrollment" :min="0" :max="999" />
          <div class="field-hint">生成排期时写入每节课。0 表示不自动取消；可随时改成 1 或其他数字。</div>
        </el-form-item>
      </el-form>
      <div class="settings-head">
        <span>轮转门店（可调顺序）</span>
        <el-select v-model="settingsAddVenueId" placeholder="增加门店" clearable filterable style="width:240px" @change="addRotationVenue">
          <el-option
            v-for="v in venuesNotInRotation"
            :key="v.venueId"
            :label="v.name"
            :value="v.venueId"
          />
        </el-select>
      </div>
      <el-table :data="settingsForm.rotationVenues" border size="small">
        <el-table-column type="index" label="#" width="50" />
        <el-table-column label="门店" min-width="180">
          <template #default="{ row }">
            {{ venueLabel(row.venueId) || row.venueId }}
            <el-tag v-if="isShellVenue(row.venueId)" size="small" type="info" style="margin-left:4px">空壳</el-tag>
          </template>
        </el-table-column>
        <el-table-column label="人数" width="150">
          <template #default="{ row }">
            <el-input-number v-model="row.capacity" :min="1" :max="999" size="small" />
          </template>
        </el-table-column>
        <el-table-column label="排序" width="140">
          <template #default="{ $index }">
            <el-button link type="primary" :disabled="$index===0" @click="moveRotation($index,-1)">上移</el-button>
            <el-button link type="primary" :disabled="$index===settingsForm.rotationVenues.length-1" @click="moveRotation($index,1)">下移</el-button>
            <el-button link type="danger" @click="removeRotation($index)">移除</el-button>
          </template>
        </el-table-column>
      </el-table>
      <template #footer>
        <el-button @click="settingsVisible=false">取消</el-button>
        <el-button type="primary" :loading="settingsSaving" @click="saveSettings">保存设置</el-button>
      </template>
    </el-dialog>

    <el-dialog v-model="generateVisible" title="生成轮转排期" width="640px" destroy-on-close>
      <el-form label-width="120px">
        <el-form-item label="日期范围" required>
          <el-date-picker
            v-model="generateForm.range"
            type="daterange"
            value-format="YYYY-MM-DD"
            start-placeholder="开始"
            end-placeholder="结束"
            style="width:100%"
          />
        </el-form-item>
        <el-form-item label="时段" required>
          <el-select v-model="generateForm.time" placeholder="选择时段" style="width:100%">
            <el-option v-for="slot in timeSlots" :key="slot" :label="formatTimeSlot(slot)" :value="slot" />
          </el-select>
        </el-form-item>
        <el-form-item label="类型" required>
          <el-radio-group v-model="generateForm.classType">
            <el-radio-button value="fixed">固定团课</el-radio-button>
            <el-radio-button value="self">自组团课</el-radio-button>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="名称">
          <el-input v-model="generateForm.name" placeholder="默认：固定团课 / 自组团课" />
        </el-form-item>
        <el-form-item label="当日主题">
          <el-input v-model="generateForm.theme" placeholder="选填，生成后也可再改每节课" />
        </el-form-item>
        <el-form-item label="教练">
          <el-select v-model="generateForm.coachId" placeholder="可空" clearable style="width:100%" @change="onGenerateCoachChange">
            <el-option v-for="c in coaches" :key="c._id" :label="coachOptionLabel(c)" :value="c._id" />
          </el-select>
        </el-form-item>
        <div class="field-hint">先预览冲突，确认后才写入。按当前设置的门店顺序逐日排课，已有相同门店+日期+时段的课会跳过并列出原因。空壳馆使用内部「团课1号场」，不会使用「外场」。一次最多 62 天。</div>
      </el-form>
      <div v-if="generatePreviewFresh" class="preview-box">
        <p class="preview-summary">可排 {{ generatePreview.created || 0 }} 节，冲突/跳过 {{ generatePreview.skipped || 0 }} 节</p>
        <el-table :data="generatePreviewRows" stripe border size="small" max-height="240">
          <el-table-column label="日期" width="160">
            <template #default="{ row }">{{ formatDateCn(row.date) }}</template>
          </el-table-column>
          <el-table-column label="门店" min-width="120">
            <template #default="{ row }">{{ row.venueName || '-' }}</template>
          </el-table-column>
          <el-table-column prop="court" label="场地" width="110" />
          <el-table-column label="结果" min-width="200">
            <template #default="{ row }">
              <el-tag v-if="row.ok" type="success" size="small">可排</el-tag>
              <span v-else class="hint-error">跳过：{{ row.reason }}</span>
            </template>
          </el-table-column>
        </el-table>
      </div>
      <template #footer>
        <el-button @click="generateVisible=false">取消</el-button>
        <el-button :type="generatePreviewFresh ? 'default' : 'primary'" :loading="generatePreviewing" @click="previewGenerate">{{ generatePreviewFresh ? '重新预览' : '预览' }}</el-button>
        <el-button type="primary" :loading="generating" :disabled="!generateCanConfirm" @click="submitGenerate">确认生成</el-button>
      </template>
    </el-dialog>

    <el-dialog v-model="batchVisible" title="批量排课" width="640px" destroy-on-close>
      <el-form label-width="120px">
        <el-form-item label="上课门店" required>
          <el-select v-model="batchForm.venueId" placeholder="选择门店" style="width:100%" @change="onBatchVenueChange">
            <el-option v-for="v in venues" :key="v.venueId" :label="v.name" :value="String(v.venueId)" />
          </el-select>
        </el-form-item>
        <el-form-item label="名称" required>
          <el-input v-model="batchForm.name" placeholder="如：周三晚提高班" />
        </el-form-item>
        <el-form-item label="类型" required>
          <el-radio-group v-model="batchForm.classType" @change="onBatchClassTypeChange">
            <el-radio-button value="fixed">固定团课</el-radio-button>
            <el-radio-button value="self">自组团课</el-radio-button>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="当日主题">
          <el-input v-model="batchForm.theme" placeholder="选填，如：发球与接发" maxlength="200" show-word-limit />
        </el-form-item>
        <el-form-item label="日期范围" required>
          <el-date-picker
            v-model="batchForm.range"
            type="daterange"
            value-format="YYYY-MM-DD"
            start-placeholder="开始"
            end-placeholder="结束"
            style="width:100%"
          />
        </el-form-item>
        <el-form-item label="星期" required>
          <el-checkbox-group v-model="batchForm.weekdays">
            <el-checkbox :label="1" :value="1">周一</el-checkbox>
            <el-checkbox :label="2" :value="2">周二</el-checkbox>
            <el-checkbox :label="3" :value="3">周三</el-checkbox>
            <el-checkbox :label="4" :value="4">周四</el-checkbox>
            <el-checkbox :label="5" :value="5">周五</el-checkbox>
            <el-checkbox :label="6" :value="6">周六</el-checkbox>
            <el-checkbox :label="0" :value="0">周日</el-checkbox>
          </el-checkbox-group>
        </el-form-item>
        <el-form-item label="时段" required>
          <el-select v-model="batchForm.time" placeholder="选择时段" style="width:100%">
            <el-option v-for="t in timeSlots" :key="t" :label="formatTimeSlot(t)" :value="t" />
          </el-select>
        </el-form-item>
        <el-form-item label="场地" required>
          <el-select v-model="batchForm.court" placeholder="选择场地" style="width:100%">
            <el-option v-for="c in courts" :key="c._id" :label="c.name" :value="c.name" />
          </el-select>
        </el-form-item>
        <el-form-item label="教练">
          <el-select v-model="batchForm.coachId" placeholder="选择教练（可空）" clearable style="width:100%" @change="onBatchCoachChange">
            <el-option v-for="c in coaches" :key="c._id" :label="coachOptionLabel(c)" :value="c._id" />
          </el-select>
        </el-form-item>
        <el-form-item label="人数" required>
          <el-input-number v-model="batchForm.capacity" :min="1" :max="999" />
        </el-form-item>
        <el-form-item label="最低开班人数">
          <el-input-number v-model="batchForm.minEnrollment" :min="0" :max="999" />
          <div class="field-hint">0 表示不自动取消；大于 0 时人数不足将在开课前自动取消</div>
        </el-form-item>
        <el-form-item label="提前取消(小时)">
          <el-input-number v-model="batchForm.cancelBeforeHours" :min="0" :max="72" />
        </el-form-item>
        <el-form-item label="状态">
          <el-switch v-model="batchForm.open" active-text="开放报名" inactive-text="关闭" />
        </el-form-item>
        <el-form-item label="备注">
          <el-input v-model="batchForm.remark" type="textarea" :rows="2" />
        </el-form-item>
        <div class="field-hint">先预览冲突，确认后才写入。已有团课、预约或锁场的日期会跳过并列出原因。一次最多 62 节。</div>
      </el-form>
      <div v-if="batchPreviewFresh" class="preview-box">
        <p class="preview-summary">可排 {{ batchPreview.created || 0 }} 节，冲突/跳过 {{ batchPreview.skipped || 0 }} 节</p>
        <el-table :data="batchPreviewRows" stripe border size="small" max-height="240">
          <el-table-column label="日期" width="160">
            <template #default="{ row }">{{ formatDateCn(row.date) }}</template>
          </el-table-column>
          <el-table-column label="结果" min-width="260">
            <template #default="{ row }">
              <el-tag v-if="row.ok" type="success" size="small">可排</el-tag>
              <span v-else class="hint-error">跳过：{{ row.reason }}</span>
            </template>
          </el-table-column>
        </el-table>
      </div>
      <template #footer>
        <el-button @click="batchVisible=false">取消</el-button>
        <el-button :type="batchPreviewFresh ? 'default' : 'primary'" :loading="batchPreviewing" @click="previewBatch">{{ batchPreviewFresh ? '重新预览' : '预览' }}</el-button>
        <el-button type="primary" :loading="batchSaving" :disabled="!batchCanConfirm" @click="submitBatch">确认排课</el-button>
      </template>
    </el-dialog>
  </div>
</template>

<script setup>
import { ref, computed, onMounted, onUnmounted } from 'vue'
import { ElMessage, ElMessageBox } from 'element-plus'
import { can as canAction, roleKind } from '../utils/auth.js'
import { downloadExcelHtml } from '../utils/exportTable.js'
import { operatorFields } from '../utils/operator.js'
import { digits, isCoachRole, pickCoachBind, UNBOUND_MSG } from '../utils/coachPerm.js'
import { emptyNextFixedVenue } from '../utils/nextFixedVenue.js'
import {
  GROUP_CLASS_EXPORT_HEADERS,
  groupClassExportRows,
  groupClassExportFilename,
  exportDateRangeLabel
} from '../utils/scheduleExport.js'

const FALLBACK_SLOTS = [
  '08:00-09:00', '09:00-10:00', '10:00-11:00', '11:00-12:00',
  '14:00-15:00', '15:00-16:00', '16:00-17:00', '17:00-18:00',
  '18:00-19:00', '19:00-20:00', '20:00-21:00', '21:00-22:00'
]
const timeSlots = ref(FALLBACK_SLOTS.slice())

const weekNames = ['日', '一', '二', '三', '四', '五', '六']

/** 2026-08-25 → 8月25日（周一） */
function formatDateCn(dateStr) {
  if (!dateStr) return '-'
  const s = String(dateStr).slice(0, 10)
  const d = new Date(s.replace(/-/g, '/'))
  if (Number.isNaN(d.getTime())) return s
  const m = d.getMonth() + 1
  const day = d.getDate()
  const w = weekNames[d.getDay()]
  return `${m}月${day}日（周${w}）`
}

/** 08:00-09:00 → 08:00–09:00 */
function formatTimeSlot(t) {
  if (!t) return '-'
  return String(t).replace('-', '–')
}

function statusLabel(s) {
  if (s === 'open') return '开放报名'
  if (s === 'cancelled') return '已取消'
  return '已关闭'
}
function statusType(s) {
  if (s === 'open') return 'success'
  if (s === 'cancelled') return 'danger'
  return 'info'
}
function isTempOver(row) {
  return Number(row && row.enrolled || 0) > Number(row && row.capacity || 0)
}

const list = ref([])
const courts = ref([])
const coaches = ref([])
const venues = ref([])
const loading = ref(false)
const saving = ref(false)
const visible = ref(false)
const filterDate = ref('')
const filterVenueId = ref('')
const venueName = ref(localStorage.getItem('venue_name') || '')

const form = ref({
  _id: '', name: '', date: '', time: '', court: '',
  coachId: '', coachName: '', capacity: 6, open: true, remark: '',
  venueId: '', venueName: '', minEnrollment: 0, cancelBeforeHours: 2,
  classType: 'fixed', theme: ''
})
const filterType = ref('')
// 老板口径：固定的是门店轮转，不是时间。批量排课/轮转生成先藏，需要时改 true。
const showBatchAndRotation = false
const canManageAll = computed(() => !isCoachRole(roleKind()) && canAction('editGroup'))
const canPublishGroup = computed(() => canAction('editGroup'))
const coachLocked = computed(() => isCoachRole(roleKind()) && !!boundCoach())
function boundCoach() {
  if (!isCoachRole(roleKind())) return null
  const op = operatorFields()
  return pickCoachBind(coaches.value || [], {
    phone: op.operatorPhone || op.operatorUsername,
    name: op.operatorName
  })
}
function canEditClass(row) {
  if (!canAction('editGroup')) return false
  if (!isCoachRole(roleKind())) return true
  const self = boundCoach()
  if (!self) return false
  return String(row && (row.coachId || row.coach_id) || '') === String(self._id || self.id || '')
}
function exportExcel() {
  const rows = groupClassExportRows(list.value || [], {
    venueLabel,
    formatDateCn,
    formatTimeSlot,
    statusLabel
  })
  if (!rows.length) { ElMessage.warning('当前筛选没有可导出的团课'); return }
  const venuePart = filterVenueId.value
    ? (venueLabel(filterVenueId.value) || '所选门店')
    : '全部门店'
  const range = exportDateRangeLabel(filterDate.value, list.value || [])
  const fname = groupClassExportFilename(venuePart, range)
  downloadExcelHtml(fname, '团课排期', GROUP_CLASS_EXPORT_HEADERS, rows)
  ElMessage.success('已导出 ' + rows.length + ' 节')
}

const settingsVisible = ref(false)
const settingsSaving = ref(false)
const settingsAddVenueId = ref('')
const settingsForm = ref(emptySettings())
const nextFixedVenueInfo = ref(emptyNextFixedVenue())
const generateVisible = ref(false)
const generating = ref(false)
const generatePreviewing = ref(false)
const generatePreview = ref(null)
const generatePreviewKey = ref('')
const generateForm = ref(emptyGenerate())
const batchVisible = ref(false)
const batchPreviewing = ref(false)
const batchSaving = ref(false)
const batchPreview = ref(null)
const batchPreviewKey = ref('')
const batchForm = ref(emptyBatch())

function emptySettings() {
  return {
    rotationVenues: [],
    rotationStartDate: '2026-11-16',
    fixedOpenAnytime: true,
    selfOrganizeAdvanceDays: 2,
    defaultCancelBeforeHours: 2,
    defaultMinEnrollment: 0
  }
}
function emptyGenerate() {
  return { range: [], time: '', classType: 'fixed', name: '', theme: '', coachId: '', coachName: '' }
}
function emptyBatch() {
  const vid = venueId() ? String(venueId()) : ''
  const lim = venueLimitsOf(vid)
  return {
    venueId: vid,
    venueName: localStorage.getItem('venue_name') || '',
    name: '固定团课',
    classType: 'fixed',
    theme: '',
    range: [],
    weekdays: [],
    time: '',
    court: '',
    coachId: '',
    coachName: '',
    capacity: lim.capacity || 4,
    minEnrollment: lim.minEnrollment || 0,
    cancelBeforeHours: settingsForm.value.defaultCancelBeforeHours != null ? settingsForm.value.defaultCancelBeforeHours : 2,
    open: true,
    remark: ''
  }
}
function isShellVenue(id) {
  const v = venues.value.find((x) => String(x.venueId) === String(id))
  return !!(v && (v.isShell === 1 || v.bookingEnabled === 0))
}
function coachOptionLabel(c) {
  if (!c) return ''
  const store = c.venueName || venueLabel(c.venueId) || ''
  return store ? (c.name + '（' + store + '）') : c.name
}
function venueLimitsOf(venueId) {
  const list = (settingsForm.value && settingsForm.value.rotationVenues) || []
  const hit = list.find((x) => String(x.venueId) === String(venueId))
  if (hit) return { capacity: Number(hit.capacity) || 1, minEnrollment: Number(settingsForm.value.defaultMinEnrollment) || 0 }
  return { capacity: 4, minEnrollment: Number(settingsForm.value.defaultMinEnrollment) || 0 }
}
const venuesNotInRotation = computed(() => {
  const used = new Set((settingsForm.value.rotationVenues || []).map((x) => String(x.venueId)))
  return (venues.value || []).filter((v) => !used.has(String(v.venueId)))
})

const memberVisible = ref(false)
const memberLoading = ref(false)
const members = ref([])
const currentClass = ref({})

const addMemberVisible = ref(false)
const addForm = ref({ memberKey: '', userName: '', openid: '', phone: '', cardId: '', seats: 1 })
const memberOptions = ref([])
const memberSearchLoading = ref(false)
const groupCards = ref([])
const cardLoading = ref(false)
const adding = ref(false)

const selectedGroupCard = computed(() => groupCards.value.find((c) => String(c._id) === String(addForm.value.cardId)))
const selectedGroupRemain = computed(() => Number(selectedGroupCard.value && (selectedGroupCard.value.remainingTimes != null ? selectedGroupCard.value.remainingTimes : selectedGroupCard.value.remaining_times)) || 0)
const addCapLeft = computed(() => {
  const cap = Number(currentClass.value && currentClass.value.capacity) || 0
  if (cap <= 0) return 0
  const enrolled = Number((currentClass.value && currentClass.value.enrolled) || members.value.length || 0)
  return Math.max(0, cap - enrolled)
})
const addMaxSeats = computed(() => {
  const left = selectedGroupRemain.value
  if (left <= 0) return 1
  const capLeft = addCapLeft.value
  const cap = Number(currentClass.value && currentClass.value.capacity) || 0
  if (cap > 0 && capLeft <= 0) return left // 临时加人
  if (cap > 0) return Math.max(1, Math.min(left, capLeft))
  return left
})
const addCapHint = computed(() => {
  const cap = Number(currentClass.value && currentClass.value.capacity) || 0
  if (cap <= 0) return ''
  const left = addCapLeft.value
  return left > 0 ? '，课余 ' + left + ' 位' : '，名额已满可临时加人'
})
const alreadySeatsForPick = computed(() => {
  const key = String(addForm.value.memberKey || '')
  const phone = String(addForm.value.phone || '')
  if (!key && !phone) return 0
  return (members.value || []).filter((m) => {
    const id = String(m.userId || m.user_id || m._userId || '')
    const mid = String(m._id || m.id || '')
    if (key && (id === key || mid === key || String(m.userId) === key)) return true
    if (phone && String(m.phone || '') === phone) return true
    return false
  }).length
})


const base = import.meta.env.DEV
  ? '/api'
  : 'https://cloud1-d3g0pb1qk028e3585-d862bc2-1312769671.ap-shanghai.app.tcloudbase.com'

function venueId() {
  return localStorage.getItem('venue_id') || ''
}

function venueLabel(id) {
  if (!id && id !== 0) return ''
  const v = venues.value.find((x) => String(x.venueId) === String(id))
  return v ? v.name : ''
}

async function post(path, body = {}) {
  let payload = body || {}
  if (String(path || '').indexOf('adminSave') >= 0) {
    payload = Object.assign({}, operatorFields(), payload)
    if (payload.data && typeof payload.data === 'object') {
      payload.data = Object.assign({}, operatorFields(), payload.data)
    }
  }
  const res = await fetch(base + path, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(payload)
  })
  const data = await res.json()
  return data.body
    ? typeof data.body === 'string'
      ? JSON.parse(data.body)
      : data.body
    : data
}

function memberLabel(m) {
  const name = m.nickName || m.nickname || m.name || ''
  const phone = m.phone || ''
  const store = m.venueName || venueLabel(m.venueId) || ''
  const extra = [phone, store].filter(Boolean).join(' · ')
  if (extra) return `${name || '未命名'}（${extra}）`
  return name || m.userId || m._id
}

function cardLabel(c) {
  const store = c.venueName || venueLabel(c.venueId) || ''
  const left = c.remainingTimes != null ? c.remainingTimes : 0
  if (store) return `${c.cardName}（${store}，剩${left}次）`
  return `${c.cardName}（剩${left}次）`
}

async function loadVenues() {
  try {
    const result = await post('/adminGetVenues', {})
    venues.value = (result.list || []).map((v) => ({
      venueId: String(v.venueId || v._id || v.id || ''),
      name: v.name || '',
      isShell: Number(v.isShell) === 1 ? 1 : 0,
      bookingEnabled: v.bookingEnabled === 0 || v.bookingEnabled === '0' ? 0 : 1
    }))
  } catch (e) {
    venues.value = []
  }
}

async function loadHours(vid) {
  const id = vid || form.value.venueId || venueId()
  if (!id) {
    timeSlots.value = FALLBACK_SLOTS.slice()
    return
  }
  try {
    const result = await post('/adminGetVenueHours', { venueId: id })
    const slots = (result && result.ok && Array.isArray(result.slots) && result.slots.length)
      ? result.slots.slice()
      : FALLBACK_SLOTS.slice()
    slots.sort()
    timeSlots.value = slots
  } catch (e) {
    timeSlots.value = FALLBACK_SLOTS.slice()
  }
}

function isActiveCoach(c) {
  return c && (c.status === 'active' || c.status === '在职' || !c.status)
}

async function loadAllCoaches() {
  const ids = (venues.value || []).map((v) => v.venueId).filter(Boolean)
  if (!ids.length) return
  try {
    const results = await Promise.all(ids.map((id) => post('/adminGetCoaches', { venueId: id })))
    const map = {}
    results.forEach((res, i) => {
      const vid = ids[i]
      const vname = venueLabel(vid)
      ;(res.list || []).filter(isActiveCoach).forEach((c) => {
        const key = String(c._id)
        if (!map[key]) {
          map[key] = Object.assign({}, c, { venueId: c.venueId || vid, venueName: c.venueName || vname })
        }
      })
    })
    coaches.value = Object.values(map)
  } catch (e) {
    console.error(e)
  }
}

async function loadMeta(vid) {
  const id = vid || form.value.venueId || venueId()
  if (!id) {
    await loadAllCoaches()
    return
  }
  try {
    const cRes = await post('/adminGetCourts', { venueId: id })
    courts.value = cRes.list || []
    await loadAllCoaches()
  } catch (e) {
    console.error(e)
  }
}

async function onFormVenueChange(id) {
  const v = venues.value.find((x) => String(x.venueId) === String(id))
  form.value.venueName = v ? v.name : ''
  form.value.court = ''
  form.value.time = ''
  if (!form.value._id) applyVenueDefaults(id)
  await Promise.all([loadHours(id), loadMeta(id)])
}

function applyVenueDefaults(id) {
  const lim = venueLimitsOf(id)
  form.value.capacity = lim.capacity
  form.value.minEnrollment = lim.minEnrollment
  if (settingsForm.value.defaultCancelBeforeHours != null) {
    form.value.cancelBeforeHours = settingsForm.value.defaultCancelBeforeHours
  }
}

function onClassTypeChange() {
  if (!form.value.name || form.value.name === '固定团课' || form.value.name === '自组团课') {
    form.value.name = form.value.classType === 'self' ? '自组团课' : '固定团课'
  }
  if (form.value._id) return
  if (form.value.classType === 'fixed') {
    const prev = form.value.venueId
    applyNextFixedVenueToForm()
    if (form.value.venueId && form.value.venueId !== prev) {
      form.value.court = ''
      form.value.time = ''
      loadHours(form.value.venueId)
      loadMeta(form.value.venueId)
    }
  }
}

async function loadData() {
  venueName.value = localStorage.getItem('venue_name') || ''
  loading.value = true
  try {
    const result = await post('/adminGetGroupClasses', {
      venueId: filterVenueId.value || '',
      date: filterDate.value || '',
      classType: filterType.value || ''
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '加载失败')
      return
    }
    list.value = result.list || []
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    loading.value = false
  }
}

function emptyForm() {
  const vid = venueId() ? String(venueId()) : ''
  const lim = venueLimitsOf(vid)
  return {
    _id: '',
    name: '固定团课',
    date: (function () {
      const d = new Date()
      const m = String(d.getMonth() + 1).padStart(2, '0')
      const day = String(d.getDate()).padStart(2, '0')
      return d.getFullYear() + '-' + m + '-' + day
    })(),
    time: '',
    court: '',
    coachId: '',
    coachName: '',
    capacity: lim.capacity || 4,
    open: true,
    remark: '',
    venueId: vid,
    venueName: localStorage.getItem('venue_name') || '',
    minEnrollment: lim.minEnrollment || 0,
    cancelBeforeHours: settingsForm.value.defaultCancelBeforeHours != null ? settingsForm.value.defaultCancelBeforeHours : 2,
    classType: 'fixed',
    theme: ''
  }
}

const nextFixedHint = computed(() => {
  if (form.value._id || form.value.classType !== 'fixed') return ''
  const nxt = nextFixedVenueInfo.value || {}
  if (!nxt.venueId) return ''
  const name = nxt.venueName || venueLabel(nxt.venueId) || nxt.venueId
  return '下一站：' + name + '（可改）'
})

function applyNextFixedVenueToForm() {
  const nxt = nextFixedVenueInfo.value || {}
  if (!nxt.venueId) return
  form.value.venueId = String(nxt.venueId)
  form.value.venueName = nxt.venueName || venueLabel(nxt.venueId) || form.value.venueName || ''
  applyVenueDefaults(form.value.venueId)
}

async function openAdd() {
  if (isCoachRole(roleKind())) {
    const self = boundCoach()
    if (!self) {
      ElMessage.warning(UNBOUND_MSG)
      return
    }
  }
  await loadSettingsSilent()
  form.value = emptyForm()
  applyNextFixedVenueToForm()
  if (isCoachRole(roleKind())) {
    const self = boundCoach()
    if (self) {
      form.value.coachId = self._id || self.id
      form.value.coachName = self.name || ''
    }
  }
  visible.value = true
  const vid = form.value.venueId
  loadHours(vid)
  loadMeta(vid)
}

function openEdit(row) {
  form.value = {
    _id: row._id,
    name: row.name || '',
    date: row.date || '',
    time: row.time || '',
    court: row.court || '',
    coachId: row.coachId || '',
    coachName: row.coachName || '',
    capacity: row.capacity || 6,
    open: row.status === 'open',
    remark: row.remark || '',
    venueId: row.venueId ? String(row.venueId) : '',
    venueName: row.venueName || venueLabel(row.venueId),
    minEnrollment: row.minEnrollment != null ? Number(row.minEnrollment) : 0,
    cancelBeforeHours: row.cancelBeforeHours != null ? Number(row.cancelBeforeHours) : 2,
    classType: row.classType === 'self' ? 'self' : 'fixed',
    theme: row.theme || ''
  }
  visible.value = true
  loadHours(form.value.venueId)
  loadMeta(form.value.venueId)
}

function onCoachChange(id) {
  const c = coaches.value.find((x) => x._id === id)
  form.value.coachName = c ? c.name : ''
}

async function save() {
  if (!form.value.venueId || !form.value.name || !form.value.date || !form.value.time || !form.value.court) {
    ElMessage.warning('请填写门店、名称、日期、时段和场地')
    return
  }
  saving.value = true
  try {
    const data = {
      name: form.value.name,
      date: form.value.date,
      time: form.value.time,
      court: form.value.court,
      coachId: form.value.coachId,
      coachName: form.value.coachName,
      capacity: form.value.capacity,
      status: form.value.open ? 'open' : 'closed',
      remark: form.value.remark,
      venueId: form.value.venueId,
      venueName: form.value.venueName || venueLabel(form.value.venueId),
      minEnrollment: form.value.minEnrollment || 0,
      cancelBeforeHours: form.value.cancelBeforeHours != null ? form.value.cancelBeforeHours : 2,
      classType: form.value.classType === 'self' ? 'self' : 'fixed',
      theme: form.value.theme || ''
    }
    const result = form.value._id
      ? await post('/adminSaveGroupClass', { action: 'update', id: form.value._id, data })
      : await post('/adminSaveGroupClass', { action: 'add', data })
    if (!result.ok) {
      ElMessage.error(result.msg || '保存失败')
      return
    }
    ElMessage.success('保存成功')
    visible.value = false
    loadData()
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    saving.value = false
  }
}

async function toggleStatus(row) {
  if (row.status === 'cancelled') return
  const next = row.status === 'open' ? 'closed' : 'open'
  try {
    const result = await post('/adminSaveGroupClass', {
      action: 'toggle',
      id: row._id,
      data: { status: next }
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '操作失败')
      return
    }
    ElMessage.success('已更新')
    loadData()
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  }
}

async function onRestore(row) {
  try {
    await ElMessageBox.confirm(
      `确定恢复团课「${row.name}」？恢复后不会自动再次取消（需管理员再次开启自动取消规则才生效）。已取消的原报名不会自动恢复。`,
      '恢复团课',
      { type: 'warning' }
    )
    const result = await post('/adminSaveGroupClass', { action: 'restore', id: row._id })
    if (!result.ok) {
      ElMessage.error(result.msg || '恢复失败')
      return
    }
    ElMessage.success('已恢复为开放报名')
    loadData()
  } catch (e) {
    if (e !== 'cancel') ElMessage.error(e.message || '失败')
  }
}

async function onDelete(row) {
  try {
    if ((row.enrolled || 0) > 0) {
      ElMessage.warning('该团课仍有报名学员，请先在名单中移除后再删除')
      return
    }
    await ElMessageBox.confirm(`确定删除团课「${row.name}」？`, '警告', { type: 'warning' })
    const result = await post('/adminSaveGroupClass', { action: 'delete', id: row._id })
    if (!result.ok) {
      ElMessage.error(result.msg || '删除失败')
      return
    }
    ElMessage.success('已删除')
    loadData()
  } catch (e) {
    if (e !== 'cancel') ElMessage.error(e.message || '失败')
  }
}

async function openMembers(row) {
  currentClass.value = row
  memberVisible.value = true
  await loadMembers()
}

async function loadMembers() {
  if (!currentClass.value._id) return
  memberLoading.value = true
  try {
    const result = await post('/adminGetGroupEnrollments', {
      groupClassId: currentClass.value._id
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '加载名单失败')
      members.value = []
      return
    }
    members.value = result.list || []
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
    members.value = []
  } finally {
    memberLoading.value = false
  }
}

async function removeMember(row) {
  try {
    await ElMessageBox.confirm(
      `确定移除「${row.userName || '该学员'}」的 1 个名额？将退还 1 节课并释放 1 个名额。同一个人的其他名额保留。`,
      '移除学员',
      { type: 'warning' }
    )
    const result = await post('/adminSaveBooking', {
      action: 'cancel',
      id: row._id,
      data: { operatorName: localStorage.getItem('admin_name') || '管理员' }
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '移除失败')
      return
    }
    ElMessage.success('已移除')
    await loadMembers()
    loadData()
  } catch (e) {
    if (e !== 'cancel') ElMessage.error(e.message || '失败')
  }
}

function openAddMember() {
  addForm.value = { memberKey: '', userName: '', openid: '', phone: '', cardId: '', seats: 1 }
  memberOptions.value = []
  groupCards.value = []
  addMemberVisible.value = true
}

async function searchMembers(query) {
  const q = (query || '').trim()
  if (!q) {
    memberOptions.value = []
    return
  }
  memberSearchLoading.value = true
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
    memberSearchLoading.value = false
  }
}

async function onMemberPick(id) {
  addForm.value.cardId = ''
  addForm.value.seats = 1
  groupCards.value = []
  const m = memberOptions.value.find((x) => x._id === id)
  if (!m) {
    addForm.value.userName = ''
    addForm.value.openid = ''
    addForm.value.phone = ''
    return
  }
  addForm.value.userName = m.nickName || m.nickname || m.name || m.userId || ''
  addForm.value.openid = m._openid || m.openid || ''
  addForm.value.phone = m.phone || ''
  cardLoading.value = true
  try {
    const result = await post('/adminGetMemberCards', {
      userId: m._id,
      openid: addForm.value.openid
    })
    groupCards.value = (result.list || []).filter(
      (c) => c.type === 'group' && c.status === 'active' && (c.remainingTimes || 0) > 0
    )
  } catch (e) {
    groupCards.value = []
  } finally {
    cardLoading.value = false
  }
}

async function submitAddMember() {
  if (!addForm.value.memberKey || !addForm.value.userName) {
    ElMessage.warning('请选择学员')
    return
  }
  if (!addForm.value.cardId) {
    ElMessage.warning('请选择团课卡')
    return
  }
  let seats = Math.floor(Number(addForm.value.seats) || 1)
  if (seats < 1) seats = 1
  if (seats > addMaxSeats.value) seats = addMaxSeats.value
  addForm.value.seats = seats
  const row = currentClass.value || {}
  const enrolled = Number(row.enrolled || members.value.length || 0)
  const cap = Number(row.capacity || 0)
  try {
    if (row.status === 'cancelled') {
      await ElMessageBox.confirm(
        '该团课已取消，添加学员将恢复课程并报名，是否继续？',
        '恢复并添加',
        { type: 'warning' }
      )
    } else if (cap > 0 && enrolled + seats > cap) {
      await ElMessageBox.confirm(
        `添加后人数将为 ${enrolled + seats}/${cap}，超出部分为临时加员，不会修改人数上限。确定继续？`,
        '临时加员',
        { type: 'warning' }
      )
    }
  } catch (e) {
    return
  }
  adding.value = true
  try {
    const result = await post('/adminEnrollGroupClass', {
      groupClassId: currentClass.value._id,
      userId: addForm.value.memberKey,
      userName: addForm.value.userName,
      openid: addForm.value.openid,
      phone: addForm.value.phone,
      cardId: addForm.value.cardId,
      seats
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '添加失败')
      return
    }
    const n = Number(result.seats || seats) || seats
    const mine = Number(result.mySeats || 0)
    ElMessage.success(n > 1 || mine > 1 ? `已添加 ${n} 个名额` + (mine ? `，该学员共占 ${mine} 个名额` : '') : '已添加')
    addMemberVisible.value = false
    await loadMembers()
    loadData()
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    adding.value = false
  }
}

async function loadSettingsSilent() {
  try {
    const result = await post('/adminSaveGroupClass', { action: 'getSettings' })
    if (result && result.ok && result.settings) {
      settingsForm.value = Object.assign(emptySettings(), result.settings, {
        rotationVenues: (result.settings.rotationVenues || []).map((x) => ({
          venueId: String(x.venueId || ''),
          capacity: Number(x.capacity != null ? x.capacity : (x.maxCapacity != null ? x.maxCapacity : 4)) || 1
        }))
      })
    }
    if (result && result.ok && result.nextFixedVenue) {
      nextFixedVenueInfo.value = Object.assign(emptyNextFixedVenue(), result.nextFixedVenue)
    }
  } catch (e) {}
}

function openSettings() {
  loadSettingsSilent()
  settingsAddVenueId.value = ''
  settingsVisible.value = true
}

function moveRotation(index, dir) {
  const arr = settingsForm.value.rotationVenues || []
  const j = index + dir
  if (j < 0 || j >= arr.length) return
  const copy = arr.slice()
  const tmp = copy[index]
  copy[index] = copy[j]
  copy[j] = tmp
  settingsForm.value.rotationVenues = copy
}

function removeRotation(index) {
  settingsForm.value.rotationVenues = (settingsForm.value.rotationVenues || []).filter((_, i) => i !== index)
}

function addRotationVenue(id) {
  if (!id) return
  const exists = (settingsForm.value.rotationVenues || []).some((x) => String(x.venueId) === String(id))
  if (exists) {
    settingsAddVenueId.value = ''
    return
  }
  settingsForm.value.rotationVenues = (settingsForm.value.rotationVenues || []).concat([
    { venueId: String(id), capacity: 4 }
  ])
  settingsAddVenueId.value = ''
}

async function saveSettings() {
  const rows = settingsForm.value.rotationVenues || []
  for (const r of rows) {
    if (!(Number(r.capacity) >= 1)) {
      ElMessage.warning((venueLabel(r.venueId) || r.venueId) + ' 的人数至少为 1，也可以只设 1 个人')
      return
    }
  }
  settingsSaving.value = true
  try {
    const result = await post('/adminSaveGroupClass', {
      action: 'saveSettings',
      data: {
        rotationVenues: rows,
        rotationStartDate: settingsForm.value.rotationStartDate,
        fixedOpenAnytime: !!settingsForm.value.fixedOpenAnytime,
        selfOrganizeAdvanceDays: settingsForm.value.selfOrganizeAdvanceDays,
        defaultCancelBeforeHours: settingsForm.value.defaultCancelBeforeHours,
        defaultMinEnrollment: settingsForm.value.defaultMinEnrollment
      }
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '保存失败，请先执行预览 SQL')
      return
    }
    if (result.settings) {
      settingsForm.value = Object.assign(emptySettings(), result.settings)
    }
    ElMessage.success('设置已保存')
    settingsVisible.value = false
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    settingsSaving.value = false
  }
}

function rotationPayload() {
  const range = generateForm.value.range || []
  return {
    startDate: range[0],
    endDate: range[1],
    time: generateForm.value.time,
    classType: generateForm.value.classType === 'self' ? 'self' : 'fixed',
    name: generateForm.value.name || '',
    theme: generateForm.value.theme || '',
    coachId: generateForm.value.coachId || '',
    coachName: generateForm.value.coachName || '',
    cancelBeforeHours: settingsForm.value.defaultCancelBeforeHours
  }
}

function mergePreviewRows(preview) {
  if (!preview) return []
  const ok = (preview.list || []).map((x) => Object.assign({ ok: true }, x))
  const skip = (preview.skippedList || []).map((x) => Object.assign({ ok: false }, x))
  return ok.concat(skip).sort((a, b) => String(a.date || '').localeCompare(String(b.date || '')))
}

function rotationPreviewKey() {
  return JSON.stringify(rotationPayload())
}
function currentBatchPreviewKey() {
  return JSON.stringify(batchPayload())
}
const generatePreviewFresh = computed(() => !!(generatePreview.value && generatePreviewKey.value === rotationPreviewKey()))
const batchPreviewFresh = computed(() => !!(batchPreview.value && batchPreviewKey.value === currentBatchPreviewKey()))
const generatePreviewRows = computed(() => generatePreviewFresh.value ? mergePreviewRows(generatePreview.value) : [])
const batchPreviewRows = computed(() => batchPreviewFresh.value ? mergePreviewRows(batchPreview.value) : [])
const generateCanConfirm = computed(() => !!(generatePreviewFresh.value && Number(generatePreview.value.created || 0) > 0))
const batchCanConfirm = computed(() => !!(batchPreviewFresh.value && Number(batchPreview.value.created || 0) > 0))

function openGenerate() {
  generateForm.value = emptyGenerate()
  generatePreview.value = null
  generatePreviewKey.value = ''
  generateVisible.value = true
  loadHours(venueId())
  loadAllCoaches()
}

function onGenerateCoachChange(id) {
  const c = coaches.value.find((x) => String(x._id) === String(id))
  generateForm.value.coachName = c ? c.name : ''
}

async function previewGenerate() {
  const range = generateForm.value.range || []
  if (!range[0] || !range[1] || !generateForm.value.time) {
    ElMessage.warning('请选择日期范围和时段')
    return
  }
  generatePreviewing.value = true
  try {
    const result = await post('/adminSaveGroupClass', {
      action: 'previewRotation',
      data: rotationPayload()
    })
    if (!result.ok) {
      generatePreview.value = null
      generatePreviewKey.value = ''
      ElMessage.error(result.msg || '预览失败')
      return
    }
    generatePreview.value = result
    generatePreviewKey.value = rotationPreviewKey()
    const created = Number(result.created || 0)
    const skipped = Number(result.skipped || 0)
    if (created <= 0) {
      ElMessage.warning('可排 0 节，冲突/跳过 ' + skipped + ' 节，未写入')
    }
  } catch (e) {
    generatePreview.value = null
    generatePreviewKey.value = ''
    ElMessage.error(e.message || '网络错误')
  } finally {
    generatePreviewing.value = false
  }
}

async function submitGenerate() {
  if (!generateCanConfirm.value) {
    ElMessage.warning('请先预览，且至少有一节可排再确认生成')
    return
  }
  const range = generateForm.value.range || []
  if (!range[0] || !range[1] || !generateForm.value.time) {
    ElMessage.warning('请选择日期范围和时段')
    return
  }
  generating.value = true
  try {
    const result = await post('/adminSaveGroupClass', {
      action: 'generateRotation',
      data: rotationPayload()
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '生成失败')
      return
    }
    const created = Number(result.created || 0)
    const skipped = Number(result.skipped || 0)
    const firstReasons = (result.skippedList || []).slice(0, 3).map((x) => (x.date || '') + (x.venueName ? ' ' + x.venueName : '') + '：' + (x.reason || '')).join('；')
    if (created <= 0) {
      ElMessage.warning('已生成 0 节' + (skipped ? '，跳过 ' + skipped + ' 天' + (firstReasons ? '（' + firstReasons + '）' : '') : ''))
      generatePreview.value = result
      generatePreviewKey.value = rotationPreviewKey()
      return
    }
    ElMessage.success('已生成 ' + created + ' 节' + (skipped ? '，跳过 ' + skipped + ' 天' + (firstReasons ? '（' + firstReasons + '）' : '') : ''))
    generateVisible.value = false
    loadData()
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    generating.value = false
  }
}

function applyBatchVenueDefaults(id) {
  const lim = venueLimitsOf(id)
  batchForm.value.capacity = lim.capacity
  batchForm.value.minEnrollment = lim.minEnrollment
  if (settingsForm.value.defaultCancelBeforeHours != null) {
    batchForm.value.cancelBeforeHours = settingsForm.value.defaultCancelBeforeHours
  }
}

function openBatch() {
  batchForm.value = emptyBatch()
  batchPreview.value = null
  batchPreviewKey.value = ''
  batchVisible.value = true
  const vid = batchForm.value.venueId
  if (vid) applyBatchVenueDefaults(vid)
  loadHours(vid)
  loadMeta(vid)
}

async function onBatchVenueChange(id) {
  const v = venues.value.find((x) => String(x.venueId) === String(id))
  batchForm.value.venueName = v ? v.name : ''
  batchForm.value.court = ''
  batchForm.value.time = ''
  applyBatchVenueDefaults(id)
  await Promise.all([loadHours(id), loadMeta(id)])
}

function onBatchClassTypeChange() {
  if (!batchForm.value.name || batchForm.value.name === '固定团课' || batchForm.value.name === '自组团课') {
    batchForm.value.name = batchForm.value.classType === 'self' ? '自组团课' : '固定团课'
  }
}

function onBatchCoachChange(id) {
  const c = coaches.value.find((x) => String(x._id) === String(id))
  batchForm.value.coachName = c ? c.name : ''
}

function batchPayload() {
  const range = batchForm.value.range || []
  return {
    venueId: batchForm.value.venueId,
    name: batchForm.value.name,
    startDate: range[0],
    endDate: range[1],
    weekdays: (batchForm.value.weekdays || []).slice(),
    time: batchForm.value.time,
    court: batchForm.value.court,
    coachId: batchForm.value.coachId,
    coachName: batchForm.value.coachName,
    capacity: batchForm.value.capacity,
    status: batchForm.value.open ? 'open' : 'closed',
    remark: batchForm.value.remark || '',
    minEnrollment: batchForm.value.minEnrollment || 0,
    cancelBeforeHours: batchForm.value.cancelBeforeHours != null ? batchForm.value.cancelBeforeHours : 2,
    classType: batchForm.value.classType === 'self' ? 'self' : 'fixed',
    theme: batchForm.value.theme || ''
  }
}

function validateBatchForm() {
  const range = batchForm.value.range || []
  const weekdays = batchForm.value.weekdays || []
  if (!batchForm.value.venueId || !batchForm.value.name || !range[0] || !range[1] || !weekdays.length || !batchForm.value.time || !batchForm.value.court) {
    ElMessage.warning('请填写门店、名称、日期范围、星期、时段和场地')
    return false
  }
  return true
}

async function previewBatch() {
  if (!validateBatchForm()) return
  batchPreviewing.value = true
  try {
    const result = await post('/adminSaveGroupClass', {
      action: 'previewBatch',
      data: batchPayload()
    })
    if (!result.ok) {
      batchPreview.value = null
      batchPreviewKey.value = ''
      ElMessage.error(result.msg || '预览失败')
      return
    }
    batchPreview.value = result
    batchPreviewKey.value = currentBatchPreviewKey()
    const created = Number(result.created || 0)
    const skipped = Number(result.skipped || 0)
    if (created <= 0) {
      ElMessage.warning('可排 0 节，冲突/跳过 ' + skipped + ' 节，未写入')
    }
  } catch (e) {
    batchPreview.value = null
    batchPreviewKey.value = ''
    ElMessage.error(e.message || '网络错误')
  } finally {
    batchPreviewing.value = false
  }
}

async function submitBatch() {
  if (!batchCanConfirm.value) {
    ElMessage.warning('请先预览，且至少有一节可排再确认排课')
    return
  }
  if (!validateBatchForm()) return
  batchSaving.value = true
  try {
    const result = await post('/adminSaveGroupClass', {
      action: 'addBatch',
      data: batchPayload()
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '排课失败')
      return
    }
    const created = Number(result.created || 0)
    const skipped = Number(result.skipped || 0)
    if (created <= 0) {
      ElMessage.warning('已排 0 节，跳过 ' + skipped + ' 节，未写入成功记录')
      batchPreview.value = result
      batchPreviewKey.value = currentBatchPreviewKey()
      return
    }
    ElMessage.success('已排 ' + created + ' 节，跳过 ' + skipped + ' 节')
    batchVisible.value = false
    loadData()
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
  } finally {
    batchSaving.value = false
  }
}

onMounted(() => {
  loadVenues().then(() => {
    loadSettingsSilent()
    loadHours(venueId())
    loadMeta(venueId())
  })
  loadData()
  window.addEventListener('venue-changed', () => {
    loadVenues().then(() => {
      loadHours(venueId())
      loadMeta(venueId())
    })
    loadData()
  })
})
onUnmounted(() => {
  window.removeEventListener('venue-changed', loadData)
})
</script>

<style scoped>
.page-header {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  margin-bottom: 12px;
}
h2 {
  margin: 0 0 4px;
  font-size: 20px;
}
.tip {
  margin: 0;
  color: #888;
  font-size: 13px;
}
.filters {
  margin-bottom: 12px;
  display: flex;
  gap: 8px;
}
.member-toolbar {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 12px;
}
.hint-error {
  color: #f56c6c;
  font-size: 12px;
  margin-top: 4px;
}
.field-hint {
  color: #999;
  font-size: 12px;
  line-height: 1.4;
  margin-top: 4px;
}
.muted {
  color: #999;
}
.settings-head {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin: 8px 0 10px;
  font-size: 14px;
}
.preview-box {
  margin-top: 12px;
}
.preview-summary {
  margin: 0 0 8px;
  font-size: 13px;
  color: #606266;
}
</style>
