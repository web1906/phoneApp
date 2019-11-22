<template>
    <div>
        <header class="mint-header is-fixed top">
            <router-link to="/" slot="left">
                <mt-button icon="back" style="color:#807f7d;"></mt-button>
            </router-link>
            <div class="mint-header-button is-left"></div>
                <h1 class="mint-header-title">注&nbsp;册</h1>
            <div class="mint-header-button is-right"></div>
        </header>
        <mt-button size="large" class="btn1">个性账号登录</mt-button>
        <div class="register-content">
        <mt-field label="用户名" placeholder="请输入用户名" v-model="wname" :attr="{autofocus:true}" class="tops"></mt-field>
        <mt-field label="密码" placeholder="请输入密码" v-model="wpwd" class="tops"></mt-field>
        <mt-field label="确认密码" placeholder="请再一次输入密码" v-model="wpwds" class="tops"></mt-field>
        <mt-field label="手机号" placeholder="请输入手机号码" v-model="phone" class="tops"></mt-field>
        <input type="checkbox">我已仔细阅读并接受<a href="#">"Snail账号协议"</a>
        <mt-button size="large" @click="register" class="btn">注册</mt-button>
        </div>
    </div>
</template>

<script>
export default {
    data(){
        return {
            wname:"",
            wpwd:"",
            wpwds:"",
            phone:""
        }
    },
    methods:{
        register(){
            var name=this.wname;
            var pwd=this.wpwd;
            var pwds=this.wpwd;
            var phone=this.phone;
            var na=/^[a-z0-9]{3,12}$/i;
            var yz=/^1(3|4|5|7|8|)\d{9}$/;
            if(na.test(name)==false){
                this.$messagebox("用户名格式不符合");
                return;
            }
            if(na.test(pwd)==false){
                this.$messagebox("密码格式不符合");
                return;
            }
            if(pwd!== pwds){
                this.$messagebox("二次密码不一样");
                return;
            }
            if(yz.test(phone)==false){
                this.$messagebox("手机号格式不符合");
                return;
            }
            if(name,pwd,phone==null){
                this.$messagebox("输入框不能为空");
                return;
            }
            var url="register";
            var obj={wname:name,wpwd:pwd,phone:phone};
            this.axios.get(
               url,
               {params:obj}
           ).then(res=>{   
               console.log(res.data.code);
            if(res.data.code>=1){
                   this.$messagebox("用户已存在");
            }else if(res.data.code<=0){
                   this.$toast("注册成功");
                   this.$router.push("/index");
               }
           });
        }
    }
}
</script>

<style scoped>
    .tops{
        margin-top:10px;
        border:1px solid #999999;
        border-radius: 10px;
        margin-bottom: 10px;
    }
    .btn1{
        font-size:14px;
        background:#f3c959;
        color:#fff;
        width:259px;
        height:35px;
        margin:0 auto;
        border-radius: 5px;
    }
    .btn{
        margin-top:10px;
        background:#f3c959;
        color:#433322;
    }
    .top{
        background:#f2f1ed;
        color:#fff;
        font-size:16px;
        color:#807f7d;
        box-shadow: 0px 2px 3px #807f7d;
    }
    .register-content{padding: 20px;}
</style>
