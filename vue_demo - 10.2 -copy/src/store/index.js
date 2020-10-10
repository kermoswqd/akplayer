import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'

Vue.use(Vuex)

export default new Vuex.Store({
    state: {
        uname: ''
    },
    mutations: {
        setUname(state, uname) {
            state.uname = uname
        }
    },
    actions: {
        login(context, user) {
            // console.log(user);
            // console.log(2);
            axios.post('/login', `username=${user.uname}&password=${user.upwd}`).then(res => {
                // console.log(res.data.result[0].uname);
                let uname = res.data.result[0].uname
                context.commit('setUname', uname)
            })
        }
    },
    modules: {
    }
})
