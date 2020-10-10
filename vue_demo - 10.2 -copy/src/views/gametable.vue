<template>
  <div class="goods_list">
    <div class="card">
      <div class="item" v-for="(v, k) of goodslist" :key="k">
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
    <my-page></my-page>
  </div>
</template>


<script>
export default {
  data() {
    return {
      goodslist: [],
      allpage: 1,
    };
  },
  mounted() {
    this.axios
      .get("/gametable", {
        params: {
          cateid: 4,
        },
      })
      .then((res) => {
        // console.log(res.data);
        res.data.forEach((el) => {
          el.img = require("../assets/img/" + el.img);
          this.goodslist.push(el);
        });
      });
  },
};
</script>

<style scoped>
.goods_list a {
  text-decoration: none;
}
.goods_list a:hover {
  text-decoration: none;
}
.goods_list {
  width: 1200px;
  padding-top: 100px;
  text-align: center;
}
.goods_list .card {
  /* background-color: aqua; */
  display: flex;
  justify-content: space-around;
  width: 1200px;
  margin: auto;
  margin-top: 50px;
  margin-bottom: 50px;
}
.goods_list .card .item {
  /* background-color: blueviolet; */
  width: 350px;
}
.goods_list .card a img {
  margin-bottom: 23px;
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
</style>