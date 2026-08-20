import { createRouter, createWebHashHistory } from 'vue-router'

const routes = [
  {
    path: '/login',
    name: 'Login',
    component: () => import('../views/Login.vue')
  },
  {
    path: '/',
    component: () => import('../views/Layout.vue'),
    redirect: '/dashboard',
    children: [
      {
        path: 'dashboard',
        name: 'Dashboard',
        component: () => import('../views/Dashboard.vue')
      },
      {
        path: 'activity',
        name: 'Activity',
        component: () => import('../views/Activity.vue')
      },
      {
        path: 'bookings',
        name: 'Bookings',
        component: () => import('../views/Bookings.vue')
      },
      {
        path: 'group-classes',
        name: 'GroupClasses',
        component: () => import('../views/GroupClasses.vue')
      },
      {
        path: 'courts',
        name: 'Courts',
        component: () => import('../views/Courts.vue')
      },
      {
        path: 'coaches',
        name: 'Coaches',
        component: () => import('../views/Coaches.vue')
      },
      {
        path: 'users',
        name: 'Users',
        component: () => import('../views/Users.vue')
      },
      {
        path: 'cards',
        name: 'CardTemplates',
        component: () => import('../views/CardTemplates.vue')
      }
    ]
  }
]

const router = createRouter({
  history: createWebHashHistory(),
  routes
})

router.beforeEach((to, from, next) => {
  if (to.path === '/login') {
    next()
    return
  }
  const token = localStorage.getItem('admin_token')
  if (!token) {
    next('/login')
  } else {
    next()
  }
})

export default router
