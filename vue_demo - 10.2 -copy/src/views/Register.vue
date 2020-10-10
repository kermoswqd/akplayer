<template>
  <div class="reg">
    <div class="form">
      <div>
        <span>用户名：</span>
        <input v-model="username" @blur="checkusername" type="text" />
        <span>
          请填写用户名，格式为2-20个字符，可以为字母、数字、下划线和中文
        </span>
      </div>

      <div>
        <span>设置密码：</span>
        <input v-model="password" @blur="checkpassword" type="password" />
        <span> 填写登录密码，6-32个字符 </span>
      </div>
      <div>
        <span>确认密码：</span>
        <input v-model="conpassword" @blur="checkconpassword" type="password" />
        <span> 重复上面所填写的密码 </span>
      </div>
      <!-- <div>
        <span>验证码： </span>
        <input class="valid" type="text" />
        <img
          src="http://www.akplayer.com/index.php?controller=simple&action=getCaptcha"
          alt=""
        />
      </div> -->
      <button @click="register">现在注册</button>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      username: "",
      password: "",
      conpassword: "",
    };
  },
  methods: {
    checkusername() {
      let usernameRegExp = /^[0-9a-zA-Z_]{6,20}$/;
      if (usernameRegExp.test(this.username)) {
        // alert("用户名合法");
      } else {
        alert("用户名不合法,应该为数字字母下划线,并且在6-20位之间");
        return;
      }
    },
    checkpassword() {
      let passwordRegExp = /^[0-9A-Za-z]{6,20}$/;
      if (passwordRegExp.test(this.password)) {
        // alert("密码合法");
      } else {
        alert("密码不合法,应该为数字字母下划线,并且在6-20位之间");
        return;
      }
    },
    checkconpassword() {
      if (this.password != this.conpassword) {
        alert("两次输入的密码不一致");
        return;
      }
    },
    register() {
      this.axios
        .post("/register", `uname=${this.username}&upwd=${this.password}`)
        .then((res) => {
          console.log(res.data);
          if (res.data != 1) {
            // console.log("注册失败");
            alert("注册失败");
          } else {
            // console.log("注册成功");
            alert("注册成功");
            this.$router.push("/login");
          }
        });
    },
  },
};
</script>

<style>
.reg {
  color: #333;
  width: 1200px;
  border: 1px solid #ddd;
  margin: auto;
  padding: 50px;
  padding-top: 145px;
  margin-bottom: 50px;
}
.reg .form {
  width: 1098px;
  margin: auto;
}
.reg .form div {
  margin: 30px 0;
}
.reg .form div span {
  font-size: 12px;
}
.reg .form div span:first-child {
  width: 140px;
  text-align: right;
  display: inline-block;
  font-size: 14px;
}
.reg .form .valid {
  width: 116px;
}
.reg .form input {
  border: 1px solid #ddd;
  padding: 6px;
  width: 216px;
}
.reg .form button {
  width: 140px;
  height: 40px;
  border: none;
  color: #fff;
  font-size: 16px;
  letter-spacing: 5px;
  text-indent: 5px;
  cursor: pointer;
  background: #ca151d;
  margin-left: 141px;
}
</style>