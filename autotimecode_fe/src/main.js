import Vue from 'vue'
import element from 'element-ui'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from './service'
import markedDirective from './directives/marked'
import 'normalize.css'
import 'element-ui/lib/theme-chalk/index.css'
import 'github-markdown-css/github-markdown.css'

Vue.config.productionTip = false
Vue.prototype.$axios = axios
Vue.use(element)
Vue.directive('marked', markedDirective)

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
