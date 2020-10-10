<template>
  <swiper class="swiper" :options="swiperOption">
    <swiper-slide v-for="(v, i) of imgList" :key="i"
      ><img :src="v.img" alt=""
    /></swiper-slide>
    <div class="swiper-pagination" slot="pagination"></div>
    <div class="swiper-button-prev" slot="button-prev"></div>
    <div class="swiper-button-next" slot="button-next"></div>
  </swiper>
</template>

<script>
import { Swiper, SwiperSlide } from "vue-awesome-swiper";
import "swiper/css/swiper.css";
export default {
  name: "swiper-example-autoplay",
  title: "Autoplay",
  components: {
    Swiper,
    SwiperSlide,
  },
  data() {
    return {
      imgList: [],
      swiperOption: {
        spaceBetween: 30,
        centeredSlides: true,
        autoplay: {
          delay: 2500,
          disableOnInteraction: false,
        },
        // effect: "coverflow",
        // freeMode: true,
        effect: "fade",
        fadeEffect: {
          crossFade: true,
        },
        speed: 4000,
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        loop: true,
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
      },
    };
  },
  mounted() {
    this.axios.get("/index").then((res) => {
      // console.log(res.data);
      res.data.forEach((el) => {
        el.img = require("../assets/img/" + el.img);
        this.imgList.push(el);
      });
    });
  },
};
</script>

<style scoped>
/* .swiper-button-prev,
.swiper-button-next {
  color: aquamarine;
} */
</style>