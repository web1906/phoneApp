import Vue from 'vue'
import Vuex from 'vuex'

// const store = Vuex.store()


Vue.use(Vuex)

export default new Vuex.Store({
    state:{ //共享:数据
        fa:12, //共享:亮哥发量
        cartCount:0,
        login:false,
        uname:""
      },
      mutations:{
        setUname(state,uname){
          state.uname=unmae;
        }
      },
      actions:{
        modifyCount:(context)=>{
          setTimeout(()=>{
            context.commit("clear");
          },500)
        }
      }
})