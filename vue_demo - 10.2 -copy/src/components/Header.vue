<template>
  <header class="home">
    <div class="top">
      <div class="logo">
        <a href=""><img src="../assets/img/logo.png" alt="" /></a>
      </div>
      <nav>
        <ul class="firstnav">
          <a href=""><li>商城首页</li></a>
          <a href="">
            <li>
              <router-link to="/gameseats">电竞座椅</router-link>
              <div class="subnav">
                <div class="nav">
                  <ul>
                    <li>PTO系利</li>
                    <li><a href="">战狼</a></li>
                    <li><a href="">拳头</a></li>
                    <li><a href="">英雄泪</a></li>
                    <li><a href="">WCG</a></li>
                  </ul>
                  <ul>
                    <li>PLUS系列</li>
                    <li><a href="">英雄美队</a></li>
                    <li><a href="">英雄蝙蝠</a></li>
                    <li><a href="">序曲</a></li>
                  </ul>
                  <ul>
                    <li>PRO系列</li>
                    <li><a href="">法师</a></li>
                    <li><a href="">未央</a></li>
                    <li><a href="">战衣</a></li>
                    <li><a href="">至尊</a></li>
                    <li><a href="">E.home</a></li>
                  </ul>
                  <ul>
                    <li>女神竞技</li>
                    <li><a href="">星野</a></li>
                    <li><a href="">凯蒂</a></li>
                    <li><a href="">幻翎</a></li>
                  </ul>
                </div>
              </div>
            </li></a
          >
          <a href=""
            ><li>
              <router-link to="/goodsbar">网咖定制</router-link>
              <!-- <a href="/goodsbar">网咖定制</a> -->
              <div class="subnav">
                <div class="nav">
                  <ul>
                    <li></li>
                    <li><a href="javascript:;">WCG</a></li>
                    <li><a href="javascript:;">英雄泪</a></li>
                  </ul>
                  <ul>
                    <li></li>
                    <li><a href="javascript:;">LCK</a></li>
                    <li><a href="javascript:;">锦衣</a></li>
                  </ul>
                  <ul>
                    <li></li>
                    <li><a href="javascript:;">V5</a></li>
                  </ul>
                  <ul>
                    <li></li>
                    <li><a href="javascript:;">传奇</a></li>
                  </ul>
                </div>
              </div>
            </li></a
          >
          <a href=""
            ><li>
              <router-link to="/officecustom">办公定制</router-link>
              <div class="subnav">
                <div class="nav">
                  <ul>
                    <li></li>
                    <li><a href="javascript:;">总裁</a></li>
                  </ul>
                  <ul>
                    <li></li>
                    <li><a href="javascript:;">至尊</a></li>
                  </ul>
                  <ul>
                    <li></li>
                    <li><a href="javascript:;">格调</a></li>
                  </ul>
                </div>
              </div>
            </li></a
          >
          <a href=""
            ><li>
              <router-link to="/gametable">电竞桌</router-link>
              <div class="subnav">
                <div class="nav">
                  <ul>
                    <li>Z字腿</li>
                    <li><a href="javascript:;">120CM</a></li>
                  </ul>
                  <ul>
                    <li>K字腿</li>
                    <li><a href="javascript:;">114CM</a></li>
                    <li><a href="javascript:;">140CM</a></li>
                    <li><a href="javascript:;">160CM</a></li>
                  </ul>
                </div>
              </div>
            </li></a
          >
          <a href="javascript:;"><li>品牌资讯</li></a>
          <a href="javascript:;"><li>联系我们</li></a>
        </ul>
      </nav>
      <div class="btn">
        <!-- <input type="text" /> -->
        <!-- <a href="http://localhost:8080/#/login"></a> -->
        <div v-if="uname == ''">
          <router-link to="/login">登录</router-link>
          <span>/</span>
          <router-link to="/register">注册</router-link>
        </div>

        <div v-else>
          <span>欢迎{{ uname }}</span>
          <span>/</span>
          <router-link to="" @click="logout">注销</router-link>
        </div>

        <!-- <a href="http://localhost:8080/#/register"></a> -->
      </div>

      <!-- <div class="search">
        <input class="" type="text" />

        <router-link to="/search"><button>搜索</button></router-link>
      </div> -->
    </div>
  </header>
</template>

<script>
import { mapState, mapMutations } from "vuex";
export default {
  data() {
    return {};
  },
  // methods: {
  //   ...mapMutations(["setUname"]),
  //   logout() {
  //     this.setUname("");
  //     sessionStorage.clear();
  //     localStorage.clear();
  //   },
  // },
  methods: {
    ...mapMutations(["setUname"]),
    logout() {
      this.setUname("");
    },
  },
  computed: {
    ...mapState(["uname"]),
  },
  mounted() {
    let uname =
      localStorage.getItem("uname") || sessionStorage.getItem("uname");
    this.setUname(uname || "");
    // console.log(uname);
  },
};
</script>

<style>
header {
  /* opacity: 0.2; */
  z-index: 999;
  position: fixed;
  height: 5.9375rem;
  width: 100%;
  background-color: #000;
  /* padding-left: 5%; */
}
a {
  text-decoration: none;
}
a:hover {
  text-decoration: underline;
}
.home .top {
  width: 1200px;
  margin: 0 auto;
  position: relative;
}
.home .logo {
  /* margin-left: 100px; */
  float: left;
  width: 200px;
  padding-top: 25px;
}
.home .logo img {
  width: 12.5rem;
}
.home nav {
  color: #fff;
  width: 850px;
  float: left;
  font-size: 15px;
  /* margin-left: 160px; */
}
.home ul {
  padding-top: 45px;
  margin-left: 120px;
}
.home ul li {
  float: left;
  /* height: 100%; */
  padding: 0 20px;
}
.home ul a {
  color: #fff;
}
.home ul li:hover {
  text-decoration: underline;
}
.home .btn {
  margin-top: 43px;
  /* width: 72px; */
  font-size: 13px;
  color: rgb(250, 0, 0);
  float: right;
  /* margin-right: 80px; */
}
.home .btn span {
  padding: 0 6px;
  color: #fff;
}
.home .btn a {
  font-weight: bolder;
  color: rgb(255, 0, 0);
  text-decoration: none;
}
.home .btn a:hover {
  color: #fff;
}
.home .subnav {
  position: fixed;
  left: 0;
  display: none;
  /* background-color: rgb(0, 0, 0, 0); */
  /* opacity: 0; */
  /* transition: all 1.25s; */
  width: 100%;
  top: 90px;
  border-top: 4px solid rgb(238, 5, 5);
}
.home .subnav li:not(:first-child) {
  font-weight: normal;
  float: none;
}
.home .subnav li {
  width: 150px;
  /* height: 42px; */
  font-size: 156x;
  font-weight: bolder;
  /* margin-left: 10px; */
  margin-bottom: 20px;
  color: rgb(255, 0, 0);
}
.home .subnav li:first-child {
  padding-bottom: 20px;
  border-bottom: 1px solid rgb(255, 255, 255);
}
.home .subnav li:hover {
  color: #fff;
}
.home .subnav .nav {
  width: 1240px;
  margin: auto;
}
.home .subnav ul {
  /* width: 25%; */
  margin-top: -15px;
  float: left;
}

.home .firstnav > a > li {
  height: 55px;
  /* display: block; */
}
.home .firstnav > a > li:hover .subnav {
  display: block;
  /* opacity: 1; */
  /* visibility: visible; */
  background-color: black;
}
.search {
  position: absolute;
  right: 0;
  top: 10px;
}
.search input {
  width: 100px;
  margin-right: 5px;
  /* height: 20px; */
}
.search button {
  /* height: 100px; */

  font-size: 15px;
}
</style>