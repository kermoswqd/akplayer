<template>
  <div class="banner">
    <div class="block">
      <el-carousel trigger="click" height="600px">
        <el-carousel-item v-for="item in 4" :key="item">
          <!-- <h3 class="small">{{ item }}</h3> -->
        </el-carousel-item>
      </el-carousel>
    </div>
  </div>
</template>

<script>
export default {
  mounted() {},
};
</script>

<style>
.banner {
  width: 100%;
}
.banner img {
  width: 100%;
}
/* .el-carousel__item h3 {
  color: #475669;
  font-size: 14px;
  opacity: 0.75;
  line-height: 150px;
  margin: 0;
} */

.el-carousel__item:nth-child(odd) {
  background: url("../assets/img/b1.jpg");
}

.el-carousel__item:nth-child(even) {
  background: url("../assets/img/b3.jpg");
}
</style>