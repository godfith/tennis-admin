import cloudbase from '@cloudbase/js-sdk'

const ENV_ID = 'cloud1-d3g0pb1qk028e3585'

const app = cloudbase.init({
  env: ENV_ID
})

const auth = app.auth({
  persistence: 'local'
})

const db = app.database()

export { app, auth, db }
