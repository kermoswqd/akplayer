import Vue from 'vue'
import VueRouter from 'vue-router'
import Index from '../views/Index.vue'
import Register from '../views/Register.vue'
import Login from '../views/Login.vue'
import Goodsbar from '../views/Goodsbar.vue'
import Gameseats from '../views/Gameseats.vue'
import Officecustom from '../views/Officecustom.vue'
import Gametable from '../views/gametable.vue'
import Details from '../views/Details.vue'
import Search from '../views/Search.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    component: Index
  },
  {
    path: '/register',
    component: Register
  },
  {
    path: '/login',
    component: Login
  },
  {
    path: '/goodsbar',
    component: Goodsbar
  },
  {
    path: '/gameseats',
    component: Gameseats
  },
  {
    path: '/officecustom',
    component: Officecustom
  },
  {
    path: '/gametable',
    component: Gametable
  },
  {
    path: '/details/:id',
    component: Details
  },
  {
    path: '/search',
    component: Search
  }
]

const router = new VueRouter({
  routes
})

export default router
