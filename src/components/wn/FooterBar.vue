<template>
    <div id="tab-bar">
        <mt-tabbar class="hi" v-model="selected" fixed>
            <mt-tab-item id="index">
                <img :src="img"  slot="icon">
                <router-link to="/index">首页</router-link>
            </mt-tab-item>
            <mt-tab-item id="feilei">
                <img :src="img2" slot="icon">
                <router-link to="/feilei">分类</router-link>   
            </mt-tab-item>
            <mt-tab-item id="cart">
                <img :src="img3" slot="icon">
                <router-link to="/cart">购物车</router-link>
            </mt-tab-item>
            <mt-tab-item id="my">
                <img :src="img4" slot="icon">
                <router-link to="/my">我的</router-link>
            </mt-tab-item>
        </mt-tabbar>
    </div>
</template>

<script>
export default {
    data(){
        return {
            selected:"index",
            img:require("../../img/home.png"),
            img2:require("../../img/list.png"),
            img3:require("../../img/cart.png"),
            img4:require("../../img/user.png"),
        }
    },
    methods:{

    }
}
</script>

<style>
    .mint-tabbar{
        width: 100%;
        height: 50px;
        background:#fff;
    }
</style>
