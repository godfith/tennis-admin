const BUILD = typeof __APP_VERSION__ === 'string' ? __APP_VERSION__ : 'dev'
const KEY = 'admin_build'

export function startVersionWatch() {
  if (BUILD === 'dev') return
  try { localStorage.setItem(KEY, BUILD) } catch (e) {}
  const check = async () => {
    try {
      const res = await fetch('/version.json?t=' + Date.now(), { cache: 'no-store' })
      if (!res.ok) return
      const data = await res.json()
      const remote = String(data.version || '')
      if (!remote || remote === BUILD || remote === 'dev') return
      const url = location.pathname + '?v=' + remote
      location.replace(url)
    } catch (e) {}
  }
  check()
  setInterval(check, 60000)
  document.addEventListener('visibilitychange', () => {
    if (document.visibilityState === 'visible') check()
  })
}
