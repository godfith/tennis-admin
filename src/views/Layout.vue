<template>
  <el-container class="layout">
    <el-aside width="220px" class="aside">
      <div class="logo">
        <span class="logo-text">山羊Goat</span>
        <span class="logo-sub">管理后台</span>
      </div>
      <el-menu
        :default-active="activeMenu"
        :default-openeds="defaultOpeneds"
        background-color="#1a5c3a"
        text-color="#c8e6d0"
        active-text-color="#ffffff"
        router
        class="side-menu"
      >
        <el-sub-menu index="grp-overview">
          <template #title>
            <el-icon><DataAnalysis /></el-icon>
            <span>概览</span>
          </template>
          <el-menu-item index="/dashboard">数据看板</el-menu-item>
          <el-menu-item index="/activity">业务动态</el-menu-item>
        </el-sub-menu>

        <el-sub-menu index="grp-booking">
          <template #title>
            <el-icon><Calendar /></el-icon>
            <span>预约与课程</span>
          </template>
          <el-menu-item index="/bookings">预约管理</el-menu-item>
          <el-menu-item index="/group-classes">团课排期</el-menu-item>
          <el-menu-item index="/coach-attendance">教练出勤</el-menu-item>
        </el-sub-menu>

        <el-sub-menu index="grp-venue">
          <template #title>
            <el-icon><Grid /></el-icon>
            <span>场地</span>
          </template>
          <el-menu-item index="/courts">场地管理</el-menu-item>
          <el-menu-item index="/prices">场地价格</el-menu-item>
        </el-sub-menu>

        <el-sub-menu index="grp-people">
          <template #title>
            <el-icon><User /></el-icon>
            <span>人员</span>
          </template>
          <el-menu-item index="/coaches">教练管理</el-menu-item>
          <el-menu-item index="/staff">员工管理</el-menu-item>
          <el-menu-item index="/users">用户管理</el-menu-item>
        </el-sub-menu>

        <el-sub-menu index="grp-card">
          <template #title>
            <el-icon><Ticket /></el-icon>
            <span>会员卡</span>
          </template>
          <el-menu-item index="/cards">卡模板管理</el-menu-item>
        </el-sub-menu>
      </el-menu>
    </el-aside>

    <el-container>
      <el-header class="header">
        <div class="header-left">
          <el-dropdown trigger="click" @command="onVenueCommand">
            <span class="venue-switch">
              {{ currentVenueName }}
              <el-icon><ArrowDown /></el-icon>
            </span>
            <template #dropdown>
              <el-dropdown-menu>
                <el-dropdown-item
                  v-for="v in venueList"
                  :key="v._id"
                  :command="v"
                  :disabled="(v.venueId || v._id) === currentVenueId"
                >
                  {{ v.name }}
                </el-dropdown-item>
              </el-dropdown-menu>
            </template>
          </el-dropdown>
        </div>
        <div class="header-right">
          <span class="admin-name">{{ adminName }}</span>
          <el-button type="danger" link @click="logout">退出</el-button>
        </div>
      </el-header>

      <el-main class="main">
        <router-view />
      </el-main>
    </el-container>
  </el-container>
</template>

<script setup>
import { ref, computed, onMounted } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import { ElMessage } from 'element-plus'
import {
  DataAnalysis,
  Calendar,
  Grid,
  User,
  UserFilled,
  ArrowDown,
  Ticket
} from '@element-plus/icons-vue'

const route = useRoute()
const router = useRouter()
const adminName = localStorage.getItem('admin_name') || '管理员'
const activeMenu = computed(() => route.path)

// 默认展开所有分组，也可改成只展开当前相关组
const defaultOpeneds = ['grp-overview', 'grp-booking', 'grp-venue', 'grp-people', 'grp-card']

const venueList = ref([])
const currentVenueId = ref(localStorage.getItem('venue_id') || '')
const currentVenueName = ref(localStorage.getItem('venue_name') || '选择场馆')

const base = import.meta.env.DEV
  ? '/api'
  : 'https://cloud1-d0gmljq45868f5766-1312769671.ap-shanghai.app.tcloudbase.com'

async function loadVenues() {
  try {
    const res = await fetch(base + '/adminGetVenues', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: '{}'
    })
    const data = await res.json()
    const result = data.body
      ? typeof data.body === 'string'
        ? JSON.parse(data.body)
        : data.body
      : data
    venueList.value = result.list || []

    if (!currentVenueId.value && venueList.value.length) {
      selectVenue(venueList.value[0])
    } else if (currentVenueId.value) {
      const found = venueList.value.find((v) => v._id === currentVenueId.value)
      if (found) currentVenueName.value = found.name
    }
  } catch (e) {
    console.error(e)
    ElMessage.error('加载场馆失败')
  }
}

function selectVenue(v) {
  const vid = v.venueId || v._id
  currentVenueId.value = vid
  currentVenueName.value = v.name
  localStorage.setItem('venue_id', vid)
  localStorage.setItem('venue_name', v.name)
  ElMessage.success('已切换：' + v.name)
  window.dispatchEvent(new Event('venue-changed'))
}

function onVenueCommand(v) {
  selectVenue(v)
}

function logout() {
  localStorage.removeItem('admin_token')
  localStorage.removeItem('admin_name')
  router.push('/login')
}

onMounted(loadVenues)
</script>

<style scoped>
.layout {
  height: 100vh;
}
.aside {
  background: #1a5c3a;
  overflow-y: auto;
}
.logo {
  height: 60px;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  border-bottom: 1px solid rgba(255, 255, 255, 0.1);
}
.logo-text {
  color: #fff;
  font-size: 18px;
  font-weight: 700;
}
.logo-sub {
  color: #a8d5b5;
  font-size: 12px;
}
.side-menu {
  border-right: none;
}
.side-menu :deep(.el-sub-menu__title) {
  color: #c8e6d0 !important;
}
.side-menu :deep(.el-sub-menu__title:hover) {
  background: rgba(255, 255, 255, 0.08) !important;
}
.side-menu :deep(.el-menu-item) {
  min-width: auto;
}
.side-menu :deep(.el-menu--inline) {
  background: #154d31 !important;
}
.side-menu :deep(.el-menu-item.is-active) {
  background: #0f3d26 !important;
  color: #fff !important;
}
.header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  background: #fff;
  border-bottom: 1px solid #eee;
  height: 60px;
}
.header-left {
  font-size: 16px;
  font-weight: 600;
  color: #1a5c3a;
}
.header-right {
  display: flex;
  align-items: center;
  gap: 12px;
}
.admin-name {
  color: #666;
  font-size: 14px;
}
.main {
  background: #f5f7fa;
  min-height: calc(100vh - 60px);
}
.venue-switch {
  cursor: pointer;
  font-size: 16px;
  font-weight: 600;
  color: #1a5c3a;
  display: inline-flex;
  align-items: center;
  gap: 4px;
}
</style>
