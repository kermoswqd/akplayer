<template>
  <div class="details">
    <div class="top">
      <div class="big"><img :src="product.detailsbigimg" alt="" /></div>
      <!-- <div class="small">
        <img src="../assets/img/1s1.jpg" alt="" />
        <img src="../assets/img/1s1.jpg" alt="" />
        <img src="../assets/img/1s1.jpg" alt="" />
        <img src="../assets/img/1s1.jpg" alt="" />
        <img src="../assets/img/1s1.jpg" alt="" />
        <img src="../assets/img/1s1.jpg" alt="" />
        <img src="../assets/img/1s1.jpg" alt="" />
        <img src="../assets/img/1s1.jpg" alt="" />
        <img src="../assets/img/1s1.jpg" alt="" />
        <img src="../assets/img/1s1.jpg" alt="" />
      </div> -->
      <div class="desc">
        <h1 class="goods_title">{{ product.title }}</h1>
        <ul>
          <li>商品编号：SD157775434394-1</li>
          <li class="sale_price">
            销售价：<span><i>￥</i> {{ product.price }}</span>
          </li>
          <li class="pre_price">
            市场价：￥<del>{{ product.delprice }}</del>
          </li>
          <li>
            <span>库存：现货 20 </span><span class="coll">收藏此商品</span>
          </li>
          <li>销量：0</li>
          <li>
            <span>顾客评分：</span> <span class="eval">(已有0人评价) </span>
          </li>
          <li>
            至 四川： 快递：<i>￥20</i>（直接由第三方物流公司配送）
            货到付款：<i>￥20</i>（直接由第三方物流公司配送）
          </li>
        </ul>
        <div class="buyinfo">
          <div class="color">
            <span>颜色:</span>
            <span>黑灰</span>
            <span>黑蓝</span>
          </div>
          <div class="num">
            <span>数量:</span>
            <span>-</span>
            <input type="text" value="1" />
            <span>+</span>
          </div>
          <div class="cart">
            <span>立即购买</span>

            <span>加入购物车</span>
          </div>
        </div>
      </div>
    </div>
    <div class="footer">
      <div class="hotsale">
        <h3>热卖排行</h3>
        <ul>
          <li>
            <img src="../assets/img/hot1.jpg" alt="" />
            <div>
              <p>英雄美队</p>
              <p>￥1699.00</p>
            </div>
          </li>
          <li>
            <img src="../assets/img/hot2.jpg" alt="" />
            <div>
              <p>英雄美队</p>
              <p>￥1699.00</p>
            </div>
          </li>
          <li>
            <img src="../assets/img/hot3.jpg" alt="" />
            <div>
              <p>英雄美队</p>
              <p>￥1699.00</p>
            </div>
          </li>
          <li>
            <img src="../assets/img/hot4.jpg" alt="" />
            <div>
              <p>英雄美队</p>
              <p>￥1699.00</p>
            </div>
          </li>
          <li>
            <img src="../assets/img/hot5.jpg" alt="" />
            <div>
              <p>英雄美队</p>
              <p>￥1699.00</p>
            </div>
          </li>
          <li>
            <img src="../assets/img/hot6.jpg" alt="" />
            <div>
              <p>英雄美队</p>
              <p>￥1699.00</p>
            </div>
          </li>
          <li>
            <img src="../assets/img/hot7.jpg" alt="" />
            <div>
              <p>英雄美队</p>
              <p>￥1699.00</p>
            </div>
          </li>
          <li>
            <img src="../assets/img/hot8.jpg" alt="" />
            <div>
              <p>英雄美队</p>
              <p>￥1699.00</p>
            </div>
          </li>
        </ul>
      </div>
      <div class="deta">
        <div class="to">
          <span class="current">商品详情</span>
          <span>顾客评价(0)</span>
          <span>购买记录(0)</span>
          <span>购买前咨询(0)</span>
          <span>网友讨论圈(0)</span>
        </div>
        <div class="blank"></div>
        <div class="img">
          <img src="../assets/img/deatils1.jpg" alt="" />
          <img src="../assets/img/deatils2.jpg" alt="" />
          <!-- <img src="../assets/img/1s1.jpg" alt="" />
          <img src="../assets/img/1s1.jpg" alt="" /> -->
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      id: this.$route.params.id,
      product: "",
    };
  },
  mounted() {
    // console.log(this.$route);
    // console.log(this.$route.params.id);
    this.axios.get("/details", { params: { id: this.id } }).then((res) => {
      // console.log(res.data[0]);
      res.data[0].detailsbigimg = require("../assets/img/" +
        res.data[0].detailsbigimg);
      this.product = res.data[0];
    });
  },
};
</script>

<style>
.details {
  width: 1200px;
  margin: auto;
  padding-top: 125px;
}
.details .top {
  display: flex;
  padding: 25px;
  border: 1px solid #dedede;

  border-top: 2px solid #f00;
}
.details .big {
  border-right: 1px solid #dedede;
  width: 435px;
  text-align: center;
  line-height: 435px;
}
.details .small {
  /* padding-top: 20px; */
  width: 150px;
  margin: 0 10px;
}

.details .small img {
  margin: 2px 6px;
  border: 1px solid #dedede;
}
.details .desc {
  width: 550px;
  padding-left: 100px;
  float: right;
  /* margin: 20px; */
  /* margin-left: 20px; */
  /* padding-left: 20px; */
}
.details .desc .goods_title {
  border-bottom: 1px dashed #ddd;
  padding: 5px 0;
  color: #222;
  font-size: 16px;
  line-height: 24px;
}
.details .desc {
  font-size: 12px;
  color: #333;
}
.details .desc ul li {
  margin: 15px 0;
}
.details .desc ul li:first-child {
  margin-bottom: 25px;
  text-align: right;
}
.details .desc .sale_price i {
  color: #e01d20;
  font-size: 16px;
}
.details .desc .sale_price span {
  color: #e01d20;
  font-weight: bold;
  font-size: 24px;
}
.details .desc .coll,
.details .desc .eval {
  /* text-align: right; */
  margin-left: 80px;
}
.details ul li:last-child i {
  color: #fe6c00;
}
.details .buyinfo {
  padding: 10px;
  background-color: #f9f9f9;
}
.details .buyinfo .color {
  margin-bottom: 15px;
}
.details .buyinfo .color span:first-child {
  margin-right: 20px;
}
.details .buyinfo .color span:not(:first-child) {
  display: inline-block;
  min-height: 24px;
  line-height: 24px;
  padding: 1px 11px;
  background: #fff;
  border: 1px solid #ddd;
  margin: 5px 5px;
  cursor: pointer;
}
.details .buyinfo .num span:first-child {
  margin-right: 20px;
}
.details .buyinfo .num span:not(:first-child) {
  display: inline-block;
  width: 32px;
  height: 28px;
  background: #f0f0f0;
  cursor: pointer;
  outline: 1px solid #ddd;
  font-size: 14px;
  text-align: center;
  line-height: 28px;
  color: #333;
}
.details .buyinfo .num input {
  position: relative;
  bottom: 0.09375rem;
  display: inline-block;
  width: 50px;
  height: 26px;
  border: none;
  outline: 1px solid #ddd;
  text-align: center;
}
.details .cart span {
  display: inline-block;
  background: #ff5c14;
  position: relative;
  margin: 20px 20px 20px 0;
  width: 140px;
  height: 40px;
  font-size: 18px;
  color: #fff;
  line-height: 40px;
  cursor: pointer;
}
.details .cart span:last-child {
  background-color: #e01d20;
}
.details .footer {
  margin-top: 25px;
  display: flex;
  justify-content: space-between;
}
.details .footer .hotsale {
  width: 238px;
  font-size: 12px;
}
.details .footer .hotsale h3 {
  line-height: 40px;
  text-indent: 15px;
  font-size: 15px;
  background: #f2f2f2;
  color: #333;
  color: #222;
}
.details .hotsale ul li {
  display: flex;
  border: 1px solid #ddd;
  border-bottom: 0;
  padding: 12px 12px 12px 10px;
  width: 100%;
  height: 82px;
  box-sizing: border-box;
  position: relative;
}
.details .hotsale ul li:last-child {
  border-bottom: 1px solid #ddd;
}
.details .hotsale li div {
  margin-left: 25px;
  width: 145px;
}
.details .hotsale li p:last-child {
  margin-top: 20px;
  text-align: left;
  color: #ca151d;
  line-height: 18px;
  font-size: 12px;
  font-weight: 400;
}
.details .deta {
  /* margin-left: 50px; */
  border: 1px solid #dedede;
  width: 940px;
}
.details .deta .to {
  background-color: #f7f7f7;
  display: flex;
  border: 1px solid #dedede;
}
.details .deta .to span {
  border-right: 1px solid #dedede;
  border-bottom: 1px solid #dedede;
  background-color: #fff;
  margin-bottom: -1px;
  position: relative;
  padding-top: 1px;
  height: 47px;
  width: 114px;
  line-height: 47px;
  text-align: center;
  font-size: 14px;
  color: #333;
}
.details .deta .to .current {
  border-top: 1px solid #e01d20;
  border-bottom-color: #fff;
  padding-top: 0;
}
.details .deta .blank {
  background-color: #fafafa;
  height: 70px;
  margin-top: 20px;
}

.details .deta .img img {
  width: 100%;
}
</style>