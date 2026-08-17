<template>
  <div class="page">
    <div class="page-header">
      <h2>用户管理</h2>
      <div class="toolbar">
        <el-input
          v-model="keyword"
          placeholder="姓名 / 手机号 / 会员号"
          clearable
          style="width: 240px"
          @keyup.enter="loadData"
        />
        <el-button type="primary" :loading="loading" @click="loadData">搜索</el-button>
        <el-button :loading="loading" @click="resetAndLoad">刷新</el-button>
      </div>
    </div>

    <el-table :data="list" stripe border v-loading="loading">
      <el-table-column label="姓名" min-width="120">
        <template #default="{ row }">
          {{ displayName(row) }}
        </template>
      </el-table-column>
      <el-table-column label="手机号" width="130">
        <template #default="{ row }">
          {{ row.phone || row.mobile || '-' }}
        </template>
      </el-table-column>
      <el-table-column prop="userId" label="会员号" width="150" />
      <el-table-column label="持卡数" width="90">
        <template #default="{ row }">
          {{ row.cardCount ?? 0 }}
        </template>
      </el-table-column>
      <el-table-column label="注册时间" width="170">
        <template #default="{ row }">
          {{ formatTime(row.createdAt || row._createTime) }}
        </template>
      </el-table-column>
      <el-table-column label="操作" width="220" fixed="right">
        <template #default="{ row }">
          <el-button link type="primary" @click="openCards(row)">查看持卡</el-button>
          <el-button link type="success" @click="openIssue(row)">发卡</el-button>
        </template>
      </el-table-column>
    </el-table>

    <!-- 查看持卡 -->
    <el-dialog v-model="cardsVisible" :title="`持卡列表 - ${displayName(currentUser)}`" width="720px">
      <el-table :data="memberCards" border v-loading="cardsLoading" size="small">
        <el-table-column prop="cardName" label="卡名称" min-width="120" />
        <el-table-column label="类型" width="90">
          <template #default="{ row }">
            <el-tag size="small">{{ typeLabel(row.type) }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column label="剩余/总次" width="100">
          <template #default="{ row }">
            <span v-if="row.type === 'times' || row.type === 'coach'">
              {{ row.remainingTimes }} / {{ row.totalTimes }}
            </span>
            <span v-else>-</span>
          </template>
        </el-table-column>
        <el-table-column label="有效期" min-width="180">
          <template #default="{ row }">
            {{ row.validFrom || '-' }} ~ {{ row.validTo || '不限' }}
          </template>
        </el-table-column>
        <el-table-column label="状态" width="90">
          <template #default="{ row }">
            <el-tag :type="statusTag(row.status)" size="small">{{ statusLabel(row.status) }}</el-tag>
          </template>
        </el-table-column>
      </el-table>
      <div v-if="!cardsLoading && memberCards.length === 0" class="empty">暂无持卡</div>
    </el-dialog>

    <!-- 发卡 -->
    <el-dialog v-model="issueVisible" title="给会员发卡" width="480px" destroy-on-close>
      <el-form label-width="100px">
        <el-form-item label="会员">
          <el-input :model-value="displayName(currentUser)" disabled />
        </el-form-item>
        <el-form-item label="选择卡模板" required>
          <el-select
            v-model="issueForm.templateId"
            placeholder="请选择"
            style="width: 100%"
            @change="onTemplateChange"
          >
            <el-option
              v-for="t in activeTemplates"
              :key="t._id"
              :label="`${t.name}（${typeLabel(t.type)}）`"
              :value="t._id"
            />
          </el-select>
        </el-form-item>
        <el-form-item v-if="selectedTemplate" label="卡类型">
          <el-tag>{{ typeLabel(selectedTemplate.type) }}</el-tag>
        </el-form-item>
        <el-form-item
          v-if="selectedTemplate && (selectedTemplate.type === 'times' || selectedTemplate.type === 'coach')"
          label="次数"
        >
          <el-input-number v-model="issueForm.totalTimes" :min="1" />
        </el-form-item>
        <el-form-item label="生效日期">
          <el-date-picker v-model="issueForm.validFrom" type="date" value-format="YYYY-MM-DD" />
        </el-form-item>
        <el-form-item label="到期日期">
          <el-date-picker
            v-model="issueForm.validTo"
            type="date"
            value-format="YYYY-MM-DD"
            placeholder="可留空"
          />
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
  </div>
</template>

<script setup>
import { ref, computed, onMounted } from 'vue'
import { ElMessage } from 'element-plus'

const list = ref([])
const loading = ref(false)
const keyword = ref('')
const currentUser = ref(null)

const cardsVisible = ref(false)
const cardsLoading = ref(false)
const memberCards = ref([])

const issueVisible = ref(false)
const issuing = ref(false)
const templates = ref([])
const issueForm = ref({
  templateId: '',
  totalTimes: 10,
  validFrom: '',
  validTo: '',
  remark: ''
})

const base = import.meta.env.DEV
  ? '/api'
  : 'https://cloud1-d0gmljq45868f5766-1312769671.ap-shanghai.app.tcloudbase.com'

const activeTemplates = computed(() => templates.value.filter((t) => t.status === 'active'))
const selectedTemplate = computed(() =>
  templates.value.find((t) => t._id === issueForm.value.templateId)
)

function displayName(u) {
  if (!u) return '-'
  return u.name || u.nickName || u.nickname || u.userId || u._id || '-'
}

function typeLabel(t) {
  return { times: '次卡', coach: '教练卡', time: '时间卡' }[t] || t
}
function statusLabel(s) {
  return { active: '有效', expired: '已过期', used_up: '已用完' }[s] || s
}
function statusTag(s) {
  return { active: 'success', expired: 'info', used_up: 'warning' }[s] || 'info'
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
  const data = await res.json()
  return data.body
    ? typeof data.body === 'string'
      ? JSON.parse(data.body)
      : data.body
    : data
}

async function loadData() {
  loading.value = true
  try {
    const result = await post('/adminGetUsers', { keyword: keyword.value.trim() })
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

function resetAndLoad() {
  keyword.value = ''
  loadData()
}

async function loadTemplates() {
  try {
    const result = await post('/adminGetCardTemplates', {})
    templates.value = result.list || []
  } catch (e) {
    console.error(e)
  }
}

async function openCards(row) {
  currentUser.value = row
  cardsVisible.value = true
  cardsLoading.value = true
  memberCards.value = []
  try {
    const result = await post('/adminGetMemberCards', {
      userId: row._id,
      openid: row._openid || ''
    })
    memberCards.value = result.list || []
  } catch (e) {
    ElMessage.error(e.message || '加载持卡失败')
  } finally {
    cardsLoading.value = false
  }
}

function openIssue(row) {
  currentUser.value = row
  issueForm.value = {
    templateId: '',
    totalTimes: 10,
    validFrom: new Date().toISOString().slice(0, 10),
    validTo: '',
    remark: ''
  }
  issueVisible.value = true
}

function onTemplateChange(id) {
  const t = templates.value.find((x) => x._id === id)
  if (t) {
    issueForm.value.totalTimes = t.totalTimes || 10
    if (t.durationDays && t.durationDays > 0) {
      const d = new Date()
      d.setDate(d.getDate() + t.durationDays)
      issueForm.value.validTo = d.toISOString().slice(0, 10)
    } else {
      issueForm.value.validTo = ''
    }
  }
}

async function submitIssue() {
  if (!issueForm.value.templateId) {
    ElMessage.warning('请选择卡模板')
    return
  }
  if (!currentUser.value?._id) {
    ElMessage.warning('用户信息异常')
    return
  }
  issuing.value = true
  try {
    const result = await post('/adminIssueCard', {
      userId: currentUser.value._id,
      openid: currentUser.value._openid || '',
      userName: displayName(currentUser.value),
      templateId: issueForm.value.templateId,
      totalTimes: issueForm.value.totalTimes,
      validFrom: issueForm.value.validFrom,
      validTo: issueForm.value.validTo || null,
      remark: issueForm.value.remark
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '发卡失败')
      return
    }
    ElMessage.success('发卡成功')
    issueVisible.value = false
    loadData()
  } catch (e) {
    console.error(e)
    ElMessage.error(e.message || '网络错误，请检查 adminIssueCard 云函数')
  } finally {
    issuing.value = false
  }
}

onMounted(() => {
  loadData()
  loadTemplates()
})
</script>

<style scoped>
.page-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 16px;
  flex-wrap: wrap;
  gap: 12px;
}
h2 {
  margin: 0;
  font-size: 20px;
}
.toolbar {
  display: flex;
  gap: 8px;
  align-items: center;
}
.empty {
  text-align: center;
  color: #999;
  padding: 24px;
}
</style>
