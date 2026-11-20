export function operatorFields() {
  return {
    operatorName: localStorage.getItem('admin_name') || '',
    operatorRole: localStorage.getItem('admin_role') || '',
    operatorPhone: localStorage.getItem('admin_phone') || '',
    operatorId: localStorage.getItem('admin_token') || '',
    operatorUsername: localStorage.getItem('admin_username') || ''
  }
}

export default { operatorFields }
