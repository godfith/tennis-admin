<template>
  <el-container class="layout">
    <el-aside width="220px" class="aside">
      <div class="logo">
        <span class="logo-text">山羊Goat</span>
        <span class="logo-sub">{{ roleText }}</span>
      </div>
      <el-menu :default-active="activeMenu" :default-openeds="defaultOpeneds" background-color="#1a5c3a" text-color="#c8e6d0" active-text-color="#ffffff" router class="side-menu">
        <el-sub-menu v-if="showOverview" index="grp-overview">
          <template #title><el-icon><DataAnalysis /></el-icon><span>概览</span></template>
          <el-menu-item v-if="ok('/dashboard')" index="/dashboard">数据看板</el-menu-item>
          <el-menu-item v-if="ok('/activity')" index="/activity">业务动态</el-menu-item>
          <el-menu-item v-if="ok('/finance')" index="/finance">财务报表</el-menu-item>
          <el-menu-item v-if="ok('/occupancy')" index="/occupancy">订场率</el-menu-item>
          <el-menu-item v-if="ok('/coach-attendance')" index="/coach-attendance">教练出勤</el-menu-item>
        </el-sub-menu>
        <el-sub-menu v-if="showBooking" index="grp-booking">
          <template #title><el-icon><Calendar /></el-icon><span>预约与课程</span></template>
          <el-menu-item v-if="ok('/bookings')" index="/bookings">预约管理</el-menu-item>
          <el-menu-item v-if="ok('/coach-schedule')" index="/coach-schedule">教练排课</el-menu-item>
          <el-menu-item v-if="ok('/group-classes')" index="/group-classes">团课排期</el-menu-item>
        </el-sub-menu>
        <el-sub-menu v-if="showVenue" index="grp-venue">
          <template #title><el-icon><Grid /></el-icon><span>场地</span></template>
          <el-menu-item v-if="ok('/courts')" index="/courts">场地管理</el-menu-item>
          <el-menu-item v-if="ok('/hours')" index="/hours">场地时间</el-menu-item>
          <el-menu-item v-if="ok('/prices')" index="/prices">场地价格</el-menu-item>
        </el-sub-menu>
        <el-sub-menu v-if="showPeople" index="grp-people">
          <template #title><el-icon><User /></el-icon><span>人员</span></template>
          <el-menu-item v-if="ok('/coaches')" index="/coaches">教练管理</el-menu-item>
          <el-menu-item v-if="ok('/staff')" index="/staff">员工管理</el-menu-item>
          <el-menu-item v-if="ok('/users')" index="/users">用户管理</el-menu-item>
        </el-sub-menu>
        <el-sub-menu v-if="showCard" index="grp-card">
          <template #title><el-icon><Ticket /></el-icon><span>会员卡</span></template>
          <el-menu-item v-if="ok('/cards')" index="/cards">卡模板管理</el-menu-item>
          <el-menu-item v-if="ok('/gift') && canGift" index="/gift">体验发放</el-menu-item>
        </el-sub-menu>
      </el-menu>
    </el-aside>
    <el-container>
      <el-header class="header">
        <div class="header-left">
          <el-dropdown v-if="canSwitchVenue" trigger="click" @command="onVenueCommand">
            <span class="venue-switch">{{ currentVenueName }}<el-icon><ArrowDown /></el-icon></span>
            <template #dropdown>
              <el-dropdown-menu>
                <el-dropdown-item v-for="v in venueList" :key="v._id" :command="v" :disabled="(v.venueId || v._id) === currentVenueId">{{ v.name }}</el-dropdown-item>
              </el-dropdown-menu>
            </template>
          </el-dropdown>
          <span v-else class="venue-switch locked">{{ currentVenueName }}</span>
        </div>
        <div class="header-right">
          <span class="admin-name">{{ adminName }} · {{ roleText }}</span>
          <el-button type="danger" link @click="logout">退出</el-button>
        </div>
      </el-header>
      <el-main class="main"><router-view /></el-main>
    </el-container>
  </el-container>
</template>
<script setup>
import { ref, computed, onMounted } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import { ElMessage } from 'element-plus'
import { DataAnalysis, Calendar, Grid, User, ArrowDown, Ticket } from '@element-plus/icons-vue'
import { canAccess, can, roleLabel } from '../utils/auth'
const route = useRoute()
const router = useRouter()
const adminName = localStorage.getItem('admin_name') || '管理员'
const roleText = roleLabel()
const canSwitchVenue = can('switchVenue')
const canGift = can('gift')
const activeMenu = computed(() => route.path)
const defaultOpeneds = ['grp-overview', 'grp-booking', 'grp-venue', 'grp-people', 'grp-card']
const venueList = ref([])
const currentVenueId = ref(localStorage.getItem('venue_id') || '')
const currentVenueName = ref(localStorage.getItem('venue_name') || '选择场馆')
const base = import.meta.env.DEV ? '/api' : 'https://cloud1-d3g0pb1qk028e3585-d862bc2-1312769671.ap-shanghai.app.tcloudbase.com'
function ok(path) { return canAccess(path) }
const showOverview = computed(() => ['/dashboard', '/activity', '/finance', '/occupancy', '/coach-attendance'].some(ok))
const showBooking = computed(() => ['/bookings', '/coach-schedule', '/group-classes'].some(ok))
const showVenue = computed(() => ['/courts', '/hours', '/prices'].some(ok))
const showPeople = computed(() => ['/coaches', '/staff', '/users'].some(ok))
const showCard = computed(() => ok('/cards') || (ok('/gift') && canGift))
async function loadVenues() {
  try {
    const res = await fetch(base + '/adminGetVenues', { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: '{}' })
    const data = await res.json()
    const result = data.body ? (typeof data.body === 'string' ? JSON.parse(data.body) : data.body) : data
    let list = result.list || []
    const lockedId = localStorage.getItem('admin_venue_id') || ''
    if (!canSwitchVenue && lockedId) {
      list = list.filter((v) => (v.venueId || v._id) === lockedId)
      if (list[0]) selectVenue(list[0], true)
    }
    venueList.value = list
    if (!currentVenueId.value && venueList.value.length) selectVenue(venueList.value[0], true)
    else if (currentVenueId.value) {
      const found = venueList.value.find((v) => (v.venueId || v._id) === currentVenueId.value)
      if (found) currentVenueName.value = found.name
    }
  } catch (e) {
    console.error(e)
    ElMessage.error('加载场馆失败')
  }
}
function selectVenue(v, silent) {
  const vid = v.venueId || v._id
  currentVenueId.value = vid
  currentVenueName.value = v.name
  localStorage.setItem('venue_id', vid)
  localStorage.setItem('venue_name', v.name)
  if (!silent) ElMessage.success('已切换：' + v.name)
  window.dispatchEvent(new Event('venue-changed'))
}
function onVenueCommand(v) { selectVenue(v) }
function logout() {
  ;['admin_token', 'admin_name', 'admin_role', 'admin_venue_id', 'admin_venue_name'].forEach((k) => localStorage.removeItem(k))
  router.push('/login')
}
onMounted(loadVenues)
</script>
<style scoped>
.layout { height: 100vh; }
.aside { background: #1a5c3a; overflow-y: auto; }
.logo { height: 60px; display: flex; flex-direction: column; align-items: center; justify-content: center; border-bottom: 1px solid rgba(255,255,255,.1); }
.logo-text { color: #fff; font-size: 18px; font-weight: 700; }
.logo-sub { color: #a8d5b5; font-size: 12px; }
.side-menu { border-right: none; }
.side-menu :deep(.el-sub-menu__title) { color: #c8e6d0 !important; }
.side-menu :deep(.el-sub-menu__title:hover) { background: rgba(255,255,255,.08) !important; }
.side-menu :deep(.el-menu-item) { min-width: auto; }
.side-menu :deep(.el-menu--inline) { background: #154d31 !important; }
.side-menu :deep(.el-menu-item.is-active) { background: #0f3d26 !important; color: #fff !important; }
.header { display: flex; align-items: center; justify-content: space-between; background: #fff; border-bottom: 1px solid #eee; height: 60px; }
.header-left { font-size: 16px; font-weight: 600; color: #1a5c3a; }
.header-right { display: flex; align-items: center; gap: 12px; }
.admin-name { color: #666; font-size: 14px; }
.main { background: #f5f7fa; min-height: calc(100vh - 60px); }
.venue-switch { cursor: pointer; font-size: 16px; font-weight: 600; color: #1a5c3a; display: inline-flex; align-items: center; gap: 4px; }
.venue-switch.locked { cursor: default; }
</style>
