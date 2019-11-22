<template>
    <div id="tab-bar">
        <mt-tabbar v-model="selected" fixed>
            <mt-tab-item id="index">
                <router-link to="/index">
                    <img :src="img" slot="icon">首页
                </router-link>
            </mt-tab-item>
            <mt-tab-item id="feilei">
                <router-link to="/feilei">
                    <img :src="img2" slot="icon">分类
                </router-link>
            </mt-tab-item>
            <mt-tab-item id="cart">
                <router-link to="/cart">
                    <img :src="img3" slot="icon">购物车
                </router-link>
            </mt-tab-item>
            <mt-tab-item id="my">
                <router-link to="/my">
                    <img :src="img4" slot="icon">我的
                </router-link>
            </mt-tab-item>
        </mt-tabbar>
    </div>
</template>

<script>
export default {

}
</script>

<style>

</style>
