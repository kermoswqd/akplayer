<template>
  <footer>
    <div class="foot">
      <div class="footnav">
        <ul>
          <li>购物指南</li>
          <li><a href="">常见问答</a></li>
          <li><a href="">产品指南</a></li>
          <li><a href="">配送方式</a></li>
          <li><a href="">支付方式</a></li>
        </ul>
        <ul>
          <li>售后服务</li>
          <li><a href="">安装指南</a></li>
          <li><a href="">保养护理</a></li>
          <li><a href="">保修政策</a></li>
          <li><a href="">退换货政策</a></li>
        </ul>
        <ul>
          <li>销售分布</li>
          <li><a href="">国内销售</a></li>
          <li><a href="">海外市场</a></li>
        </ul>
        <ul>
          <li>关注我们</li>
          <li><a href="">新浪微博</a></li>
          <li><a href="">官方微信</a></li>
          <li><a href="">联系我们</a></li>
        </ul>
      </div>
    </div>
    <div class="footend">
      <p>
        <a href="">服务条款</a>
        <span>|</span>
        <a href=""> 隐私声明</a>
        <span> ©2019 阿卡丁</span>
        <a href="">苏ICP备19053638号-1</a>
      </p>
      <p>本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</p>
    </div>
  </footer>
</template>

<script>
export default {};
</script>

<style>
footer {
  width: 100%;
  background-color: black;
}
footer .foot {
  height: 215px;
  padding-top: 30px;
}
footer .footnav {
  width: 920px;
  margin: auto;
  display: flex;
  justify-content: space-around;
}
footer .foot ul {
  text-align: center;
}
footer .foot ul li {
  height: 35px;
  font-size: 14px;
  color: #fff;
}
footer .foot li a {
  color: #fff;
  text-decoration: none;
}
footer .foot li a:hover {
  text-decoration: underline;
}
footer .foot ul li:first-child {
  color: rgb(255, 0, 0);
  margin-bottom: 10px;
  font-size: 16px;
}
footer .footend {
  font-size: 14px;
  text-align: center;
  padding: 20px 0;
  background-color: #fff;
  height: 54px;
  color: #333;
}
footer .footend p a {
  color: #333;
  text-decoration: none;
}
footer .footend p a:hover {
  color: #f3782a;
  text-decoration: underline;
}
footer .footend p:first-child {
  margin-bottom: 13px;
}
footer .footend span {
  margin: 0 12px;
}
</style>