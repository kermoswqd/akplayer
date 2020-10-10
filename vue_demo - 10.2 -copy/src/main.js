import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import myHeader from './components/Header.vue'
import myFooter from './components/Footer.vue'
import myPage from './components/Page.vue'
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
import axios from 'axios'

Vue.use(ElementUI);
Vue.prototype.axios = axios;

axios.defaults.baseURL = 'http://localhost:5050'
axios.defaults.withCredentials = true
Vue.component('myHeader', myHeader)
Vue.component('myFooter', myFooter)
Vue.component('myPage', myPage)
Vue.config.productionTip = false

new Vue({
  store,
  router,
  render: h => h(App)
}).$mount('#app')
