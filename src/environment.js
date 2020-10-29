const defaultEnvironment = {
  APP_TITLE: 'Hello Docker!'
}

function getEnvironmentVariables() {
  const element = document.getElementById('environment')

  if (!element?.textContent) {
    return {}
  }

  try {
    return JSON.parse(element.textContent)
  } catch (error) {
    console.warn('Unable to parse environment variables.')
  }

  return {}
}

export default {
  ...defaultEnvironment,
  ...getEnvironmentVariables()
}
