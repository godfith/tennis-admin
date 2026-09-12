# 山羊Goat 管理后台

Vue3 + Vite。生产打包为静态站，hash 路由，可直接托管。

```bash
npm ci
npm run build
```

产物在 `dist/`。

## 发布

**GitHub Pages**

1. 仓库 Settings → Pages → Source 选 GitHub Actions
2. 推 `main` 或手动跑 Actions「Deploy admin static site」
3. 地址：https://godfith.github.io/tennis-admin/

**云开发静态托管**

上传 `dist` 到当前小程序环境的静态网站托管。

生产接口直连云函数 HTTP，仍须登录。
