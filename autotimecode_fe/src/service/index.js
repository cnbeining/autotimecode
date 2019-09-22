/**
 * 对 axios 进行封装并导出一个 axios 实例
 */
import axios from 'axios'

/**
 * axios 默认 Content-Type: application/json
 */
const service = axios.create({
  baseURL: '',
  timeout: 10000
})

/**
 * 请求拦截器
 */
service.interceptors.request.use(
  config => {
    return config
  },
  error => {
    return Promise.reject(error)
  }
)

/**
 * 响应拦截器
 */
service.interceptors.response.use(
  response => {
    return response.data
  },
  error => {
    return Promise.reject(error)
  }
)

/**
 * 文件上传
 */
service.upload = function(url, formData) {
  return service.post(url, formData, {  headers: { 'Content-Type': 'multipart/form-data' } })
}

export default service