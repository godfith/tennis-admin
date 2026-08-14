import cloudbase from '@cloudbase/js-sdk'

// 和你小程序同一个环境 ID
const ENV_ID = 'cloud1-d0gmljq45868f5766'

const app = cloudbase.init({
  env: ENV_ID
})

const auth = app.auth({
  persistence: 'local'
})

const db = app.database()

export { app, auth, db }
