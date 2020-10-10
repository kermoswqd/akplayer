<template>
  <div class="login">
    <div class="form">
      <div>
        <span>用户名/邮箱/手机： </span>
        <input v-model="uname" type="text" @blur="checkusername" />
      </div>

      <div>
        <span>密码： </span>
        <input v-model="upwd" type="password" @blur="checkpassword" />
      </div>
      <div>
        <label
          ><input type="checkbox" name="remember" value="1" /> 记住登录名</label
        >
        <span>忘记密码</span>
      </div>
      <button @click="mylogin">登录</button>
    </div>
    <div class="right">
      <p>您还不是<span> 阿卡丁AKPLAYER</span> 用户</p>
      <p>
        现在免费注册成为阿卡丁AKPLAYER商城用户，便能立即享受便宜又放心的购物乐趣。网站首页>>
      </p>
      <router-link to="/register">
        <button>注册新用户</button>
      </router-link>
    </div>
  </div>
</template>

<script>
import { mapActions } from "vuex";
export default {
  data() {
    return {
      uname: "",
      upwd: "",
    };
  },
  methods: {
    checkusername() {
      let usernameRegExp = /^[0-9a-zA-Z_]{6,15}$/;
      if (usernameRegExp.test(this.uname)) {
        // alert("用户名合法");
      } else {
        alert("用户名不合法,应该为数字字母下划线,并且在6-15位之间");
        return;
      }
    },
    checkpassword() {
      let passwordRegExp = /^[0-9A-Za-z]{6,20}$/;
      if (passwordRegExp.test(this.upwd)) {
        // alert("密码合法");
      } else {
        alert("密码不合法,应该为数字字母下划线,并且在6-20位之间");
        return;
      }
    },
    mylogin() {
      this.login({
        uname: this.uname,
        upwd: this.upwd,
      }).then(() => {
        sessionStorage.setItem("uname", this.uname);
        this.$router.push("/");
      });
    },
    ...mapActions(["login"]),
    // login() {
    //   this.axios
    //     .post("/login", `username=${this.username}&password=${this.password}`)
    //     .then((res) => {
    //       console.log(res.data.message);
    //       if (res.data.message == "1") {
    //         alert("登录成功");
    //         // this.get;
    //         // this.$router.push("/gameseats");
    //       } else {
    //         alert("用户名或者密码错误");
    //         return;
    //       }
    //     });
    // },
  },
};
</script>

<style>
.login {
  color: #333;
  width: 1200px;
  border: 1px solid #ddd;
  margin: auto;
  padding: 50px 0;
  padding-top: 145px;
  margin-bottom: 50px;
  /* position: relative; */
  display: flex;
}
.login .form {
  width: 1080px;
  margin: auto;
}
.login .form div {
  margin: 30px 0;
}
.login .form div span {
  display: inline-block;
  text-align: right;
  font-size: 14px;
  width: 216px;
}
.login .form label {
  font-size: 14px;
  margin-left: 230px;
  margin-right: 20px;
}
.login .form label + span {
  font-size: 14px;
  text-align: left;
}
.login .form input {
  width: 214px;
  height: 30px;
}
.login .form label input {
  width: 20px;
  height: 12px;
}
.login .form button {
  width: 140px;
  height: 40px;
  border: none;
  color: #fff;
  font-size: 16px;
  letter-spacing: 5px;
  text-indent: 5px;
  cursor: pointer;
  background: #ca151d;
  margin-left: 218px;
}
.login .right {
  /* position: absolute; */
  /* float: right; */
  margin-top: 25px;
  margin-right: 250px;
  font-size: 14px;
  width: 320px;
  height: 130px;
}
.login .right p {
  margin-bottom: 15px;
}
.login .right p + p {
  font-size: 12px;
}
.login .right button {
  width: 140px;
  height: 40px;
  border: none;
  background: #2d64b3;
  font-size: 16px;
  letter-spacing: 5px;
  text-indent: 5px;
  cursor: pointer;
  color: #fff;
  display: block;
  text-align: center;
  line-height: 40px;
}
</style>