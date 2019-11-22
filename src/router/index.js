import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import Login from '../components/wn/Login.vue'
import register from "../components/wn/register.vue"
import Index from "../components/wn/index.vue"
import Cart from "../components/wn/cart.vue"
import My from "../components/wn/my.vue"
import Feilei from "../components/wn/feilei.vue"
import Product from "../components/wn/product.vue"

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      component: Index
    },
    {path:'/Login',component:Login},
    {path:'/register',component:register},
    {path:'/index',component:Index},
    {path:'/cart',component:Cart},
    {path:'/my',component:My},
    {path:'/Feilei',component:Feilei},
    {path:'/product/:lid',name:'product',component:Product}
  ]
})
