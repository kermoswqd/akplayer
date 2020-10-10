<template>
  <div class="goods_list">
    <div class="card">
      <div class="item" v-for="(v, i) of prolist" :key="i">
        <router-link :to="`/details/${v.pid}`">
          <img :src="v.img" alt="" />
          <p class="goods_title">{{ v.title }}</p>
          <p class="goods_sell_price">￥{{ v.price }}</p>
          <p class="goods_market_price">
            <del>￥{{ v.delprice }}</del>
          </p>
        </router-link>
      </div>
    </div>
    <div class="page">
      <ul>
        <li><a href="javascript:;" @click="prev">上一页</a></li>
        <li class="pagenum">
          <a href="javascript:;">{{ page }}</a>
        </li>
        <li><a href="javascript:;" @click="next">下一页</a></li>
        <li>
          <a href="javascript:;">当前第{{ page }}页/共{{ allpage }}页</a>
        </li>
      </ul>
    </div>
  </div>
</template>


<script>
export default {
  data() {
    return {
      prolist: [],
      cateid: "",
      page: 1,
      allpage: 0,
    };
  },
  methods: {
    next() {
      this.prolist = [];
      if (this.page < this.allpage) {
        this.page++;
        this.axios
          .get("/gameseats", {
            params: { cateid: 1, page: this.page },
          })
          .then((res) => {
            let arr = res.data.result;
            arr.forEach((el) => {
              // console.log(el);
              el.img = require("../assets/img/" + el.img);
              this.prolist.push(el);
            });
            // this.prolist = res.data.result;
            this.allpage = res.data.allpage;
          });
      }
    },
    prev() {
      this.prolist = [];
      if (this.page > 1) {
        this.page--;
        this.cateid = this.$route.path.split("/")[2];
        this.axios
          .get("/gameseats", {
            params: { cateid: 1, page: this.page },
          })
          .then((res) => {
            let arr = res.data.result;
            arr.forEach((el) => {
              // console.log(el);
              el.img = require("../assets/img/" + el.img);
              this.prolist.push(el);
            });
            // this.prolist = res.data.result;
            this.allpage = res.data.allpage;
          });
      }
      // this.prolist = [];
    },
  },
  mounted() {
    // this.cateid = this.$route.path.split("/")[2];
    this.axios
      .get("/gameseats", {
        params: { cateid: 1, page: this.page },
      })
      .then((res) => {
        // console.log(res.data.result);
        let arr = res.data.result;
        arr.forEach((el) => {
          // console.log(el);
          el.img = require("../assets/img/" + el.img);
          this.prolist.push(el);
        });
        // this.prolist = res.data.result;
        this.allpage = res.data.allpage;
      });
  },
};
</script>

<style>
.goods_list a {
  text-decoration: none;
}
.goods_list a:hover {
  text-decoration: none;
}
.goods_list {
  padding-top: 100px;
  text-align: center;
  width: 1200px;
  margin: auto;
}
.goods_list .card {
  display: flex;
  /* background-color: aquamarine; */
  flex-wrap: wrap;
  /* width: 280px; */
}
.goods_list .card .item {
  width: 280px;
  margin-top: 50px;
  margin-bottom: 50px;
  /* background-color: brown; */
}
.goods_list .goods_title {
  font-size: 14px;
  color: #ca151d;
}
.goods_list .goods_sell_price {
  text-align: center;
  padding-top: 3px;
  color: #ca151d;
  line-height: 30px;
  font-size: 20px;
  font-weight: 400;
}
.goods_list .goods_market_price {
  height: 32px;
  line-height: 32px;
  color: #666;
}
.goods_list .page ul {
  display: flex;
  width: 250px;
  font-size: 12px;
  margin: auto;
  text-align: center;
  /* background-color: rgb(18, 85, 148); */
  margin-bottom: 20px;
  border-radius: 5px;
}
.goods_list .page a {
  color: #337ab7;
}
.goods_list .page ul li {
  /* margin: 0 5px; */
  height: 31px;
  line-height: 31px;
  border: 1px solid #ddd;
  /* background-color: aqua; */
  padding: 0 7px;
}
.goods_list .page ul li:hover {
  background-color: #eeeeee;
}
.page ul li:not(:first-child) {
  border-left: 0;
}
.page .pagenum {
  background-color: #ca151d;
}
.goods_list .page .pagenum:hover {
  background-color: #337ab7;
}
.page .pagenum a {
  color: #fff;
}
.page ul li:first-child {
  border-bottom-left-radius: 6px !important;
  border-top-left-radius: 6px !important;
}
.page ul li:last-child {
  border-bottom-right-radius: 6px !important;
  border-top-right-radius: 6px !important;
}
.goods_list .page ul li .goods_list .page li a {
  display: inline-block;
}
</style>