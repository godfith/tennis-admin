<template>
  <div class="page">
    <div class="page-header">
      <h2>轮播图管理</h2>
      <el-button type="primary" @click="openEdit()">添加轮播</el-button>
    </div>
    <el-table :data="list" stripe border v-loading="loading">
      <el-table-column label="图片" width="160">
        <template #default="{ row }">
          <img :src="row.image" style="width:140px;height:70px;object-fit:cover;border-radius:4px" />
        </template>
      </el-table-column>
      <el-table-column prop="title" label="标题" min-width="150" />
      <el-table-column prop="link" label="跳转链接" min-width="150" show-overflow-tooltip />
      <el-table-column prop="sort_order" label="排序" width="80" />
      <el-table-column label="状态" width="80">
        <template #default="{ row }">
          <el-tag :type="row.status === 'active' ? 'success' : 'info'" size="small">{{ row.status === 'active' ? '显示' : '隐藏' }}</el-tag>
        </template>
      </el-table-column>
      <el-table-column label="操作" width="140">
        <template #default="{ row }">
          <el-button link type="primary" @click="openEdit(row)">编辑</el-button>
          <el-button link type="danger" @click="remove(row)">删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <el-dialog v-model="visible" :title="form.id ? '编辑轮播' : '添加轮播'" width="480px">
      <el-form label-width="80px">
        <el-form-item label="图片">
          <el-upload :auto-upload="false" :show-file-list="false" accept="image/*" @change="onFile">
            <el-button>选择图片</el-button>
          </el-upload>
          <img v-if="form.image" :src="form.image" style="width:200px;height:100px;object-fit:cover;margin-top:8px;border-radius:4px" />
          <el-input v-model="form.image" placeholder="或直接填图片地址" style="margin-top:8px" />
        </el-form-item>
        <el-form-item label="标题">
          <el-input v-model="form.title" placeholder="选填" />
        </el-form-item>
        <el-form-item label="跳转链接">
          <el-input v-model="form.link" placeholder="选填，小程序页面路径" />
        </el-form-item>
        <el-form-item label="排序">
          <el-input-number v-model="form.sortOrder" :min="0" />
        </el-form-item>
        <el-form-item label="状态">
          <el-select v-model="form.status">
            <el-option label="显示" value="active" />
            <el-option label="隐藏" value="hidden" />
          </el-select>
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="visible = false">取消</el-button>
        <el-button type="primary" :loading="saving" @click="save">保存</el-button>
      </template>
    </el-dialog>
  </div>
</template>
<script setup>
import { ref, onMounted } from 'vue'
import { ElMessage, ElMessageBox } from 'element-plus'

const base = import.meta.env.DEV ? '/api' : 'https://cloud1-d3g0pb1qk028e3585-d862bc2-1312769671.ap-shanghai.app.tcloudbase.com'
async function post(path, body = {}) {
  const res = await fetch(base + path, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(body)
  })
  const data = await res.json()
  return data.body ? (typeof data.body === 'string' ? JSON.parse(data.body) : data.body) : data
}

const list = ref([])
const loading = ref(false)
const visible = ref(false)
const saving = ref(false)
const form = ref({})

async function fetchList() {
  loading.value = true
  const r = await post('/adminBanners', { action: 'list' })
  loading.value = false
  if (r.ok) list.value = r.list || []
}
function openEdit(row) {
  form.value = row ? { id: row.id, image: row.image, title: row.title, link: row.link, sortOrder: row.sort_order, status: row.status } : { image: '', title: '', link: '', sortOrder: 0, status: 'active' }
  visible.value = true
}
async function save() {
  if (!form.value.image) { ElMessage.warning('请填图片地址'); return }
  saving.value = true
  const r = await post('/adminBanners', { action: 'save', ...form.value })
  saving.value = false
  if (!r.ok) { ElMessage.error(r.msg || '保存失败'); return }
  ElMessage.success('已保存')
  visible.value = false
  fetchList()
}
async function remove(row) {
  await ElMessageBox.confirm('确定删除？', '提示')
  const r = await post('/adminBanners', { action: 'delete', id: row.id })
  if (!r.ok) { ElMessage.error(r.msg || '删除失败'); return }
  ElMessage.success('已删除')
  fetchList()
}
onMounted(fetchList)
</script>
<style scoped>
.page-header { display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px; }
h2 { margin: 0; font-size: 20px; color: #1a5c3a; }
</style>
