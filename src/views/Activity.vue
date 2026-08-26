<template>
  <div class="page">
    <div class="page-header">
      <div>
        <h2>业务动态</h2>
        <p class="tip">
          只按「用户/预约人」搜索
          · 共 {{ rawList.length }} 条
          · 当前显示 {{ filteredList.length }} 条
          · 关键词：{{ keyword ? `「${keyword}」` : '无' }}
        </p>
      </div>
      <el-button :loading="loading" type="primary" plain @click="fetchAll">刷新</el-button>
    </div>

    <div class="filters">
      <el-select
        v-model="filterType"
        clearable
        placeholder="全部类型（可选）"
        style="width: 180px"
      >
        <el-option label="用户注册" value="register" />
        <el-option label="订场" value="booking_add" />
        <el-option label="取消预约" value="booking_cancel" />
        <el-option label="团课报名" value="group_enroll" />
        <el-option label="发卡" value="issue_card" />
      </el-select>
      <el-input
        v-model="keyword"
        clearable
        placeholder="输入预约人用户名"
        style="width: 240px"
      />
      <el-button @click="clearFilters">重置</el-button>
    </div>

    <el-table :data="filteredList" stripe border v-loading="loading" row-key="_key">
      <el-table-column label="时间" width="180">
        <template #default="{ row }">{{ formatTime(row.time) }}</template>
      </el-table-column>
      <el-table-column label="类型" width="110">
        <template #default="{ row }">
          <el-tag :type="typeTag(row.type)" size="small">{{ typeLabel(row.type) }}</el-tag>
        </template>
      </el-table-column>
      <el-table-column label="用户/预约人" min-width="110">
        <template #default="{ row }">{{ row.userName || '-' }}</template>
      </el-table-column>
      <el-table-column label="操作人" width="110">
        <template #default="{ row }">{{ row.operatorName || '-' }}</template>
      </el-table-column>
      <el-table-column label="手机号" width="120">
        <template #default="{ row }">{{ row.phone || '-' }}</template>
      </el-table-column>
      <el-table-column label="详情" min-width="280">
        <template #default="{ row }">{{ formatDetail(row.detail) }}</template>
      </el-table-column>
      <el-table-column label="场馆" width="140">
        <template #default="{ row }">{{ row.venueName || '-' }}</template>
      </el-table-column>
    </el-table>

    <div v-if="!loading && filteredList.length === 0" class="empty">
      暂无符合条件的数据
    </div>
  </div>
</template>

<script setup>
import { ref, computed, onMounted } from 'vue'
import { ElMessage } from 'element-plus'

const loading = ref(false)
const rawList = ref([])
const filterType = ref('')
const keyword = ref('')

const base = import.meta.env.DEV
  ? '/api'
  : 'https://cloud1-d0gmljq45868f5766-1312769671.ap-shanghai.app.tcloudbase.com'

const filteredList = computed(() => {
  const type = String(filterType.value || '').trim()
  const k = String(keyword.value || '').trim()
  const list = rawList.value || []
  const out = []
  for (let i = 0; i < list.length; i++) {
    const item = list[i]
    if (!item) continue
    if (type && String(item.type) !== type) continue
    if (k) {
      const userName = String(item.userName || '')
      if (userName.indexOf(k) === -1) continue
    }
    out.push(item)
  }
  return out
})

function typeLabel(t) {
  return {
    register: '用户注册',
    booking_add: '订场',
    booking_cancel: '取消预约',
    group_enroll: '团课报名',
    issue_card: '发卡'
  }[t] || t || '-'
}

function typeTag(t) {
  return {
    register: 'success',
    booking_add: 'primary',
    booking_cancel: 'info',
    group_enroll: 'danger',
    issue_card: 'warning'
  }[t] || 'info'
}

const MONTHS = {
  Jan: 1, Feb: 2, Mar: 3, Apr: 4, May: 5, Jun: 6,
  Jul: 7, Aug: 8, Sep: 9, Oct: 10, Nov: 11, Dec: 12
}

/** 统一中文时间：2026年8月25日 14:30 */
function formatTime(t) {
  if (!t) return '-'
  let d
  if (typeof t === 'number') d = new Date(t)
  else if (t && t.$date) d = new Date(t.$date)
  else if (t instanceof Date) d = t
  else {
    const s = String(t).trim().replace('T', ' ').replace(/-/g, '/')
    d = new Date(s)
  }
  if (!d || Number.isNaN(d.getTime())) {
    return String(t).slice(0, 19).replace('T', ' ')
  }
  const y = d.getFullYear()
  const m = d.getMonth() + 1
  const day = d.getDate()
  const hh = String(d.getHours()).padStart(2, '0')
  const mm = String(d.getMinutes()).padStart(2, '0')
  return `${y}年${m}月${day}日 ${hh}:${mm}`
}

/**
 * 详情文本清洗：去掉 Date.toString() 英文整段，改成 8月26日
 * 例：Wed Aug 26 2026 00:00:00 GMT+0000 (Coordinated Universal Time)
 */
function formatDetail(detail) {
  if (!detail) return '-'
  let s = String(detail)

  // JS Date 默认字符串（含 GMT / Coordinated Universal Time）
  s = s.replace(
    /\b(?:Mon|Tue|Wed|Thu|Fri|Sat|Sun)\s+(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\s+(\d{1,2})\s+(\d{4})\s+\d{2}:\d{2}:\d{2}\s+GMT[+-]\d{4}(?:\s*\([^)]*\))?/gi,
    (_, mon, day, year) => {
      const m = MONTHS[mon] || MONTHS[mon.slice(0, 1).toUpperCase() + mon.slice(1).toLowerCase()]
      return `${year}年${m}月${Number(day)}日`
    }
  )

  // 再兜底：万一没有周几前缀
  s = s.replace(
    /\b(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\s+(\d{1,2})\s+(\d{4})\s+\d{2}:\d{2}:\d{2}\s+GMT[+-]\d{4}(?:\s*\([^)]*\))?/gi,
    (_, mon, day, year) => {
      const m = MONTHS[mon] || 1
      return `${year}年${m}月${Number(day)}日`
    }
  )

  // ISO：2026-08-26T00:00:00.000Z / 2026-08-26 00:00:00
  s = s.replace(
    /\b(\d{4})-(\d{2})-(\d{2})(?:[T\s]\d{2}:\d{2}:\d{2}(?:\.\d+)?Z?)?/g,
    (_, y, m, d) => `${y}年${Number(m)}月${Number(d)}日`
  )

  // 多余空格
  s = s.replace(/\s{2,}/g, ' ').trim()
  return s || '-'
}

function clearFilters() {
  filterType.value = ''
  keyword.value = ''
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

async function fetchAll() {
  loading.value = true
  try {
    const result = await post('/adminGetActivityLogs', {
      venueId: localStorage.getItem('venue_id') || '',
      limit: 200
    })
    if (!result.ok) {
      ElMessage.error(result.msg || '加载失败')
      rawList.value = []
      return
    }
    const list = Array.isArray(result.list) ? result.list : []
    rawList.value = list.map((item, idx) => ({
      ...item,
      _key: `${item.type || ''}_${item.userName || ''}_${item.time || ''}_${idx}`
    }))
  } catch (e) {
    ElMessage.error(e.message || '网络错误')
    rawList.value = []
  } finally {
    loading.value = false
  }
}

onMounted(fetchAll)
</script>

<style scoped>
.page-header {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  margin-bottom: 16px;
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
  display: flex;
  gap: 10px;
  margin-bottom: 14px;
  flex-wrap: wrap;
  align-items: center;
}
.empty {
  text-align: center;
  color: #999;
  padding: 40px;
}
</style>
