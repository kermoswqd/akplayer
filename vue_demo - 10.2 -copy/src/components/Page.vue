<template>
  <div class="page">
    <ul>
      <li><a href="">上一页</a></li>
      <li class="pagenum"><a href="">1</a></li>
      <li><a href="">下一页</a></li>
      <li>
        <a href="">当前第1页/共{{ allpage }}页</a>
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  data() {
    return {
      allpage: 0,
    };
  },
  mounted() {
    // console.log(this.allpage);
  },
};
</script>

<style>
/* .page {
  width: 248px;
  margin: auto;
  font-size: 12px;
  margin-bottom: 50px;
  padding-bottom: 50px;
  color: #337ab7;
}
.page a {
  color: #337ab7;
}
.page a:hover {
  text-decoration: none;
}
.page ul {
  display: flex;
  border: 1px solid #ddd;

  border-radius: 4px;
}
.page .pagenum {
  background-color: #ca151d;
  display: inline-block;
}
.page .pagenum:hover {
  background-color: #337ab7;
}
.page .pagenum a {
  color: #fff;
}
.page ul li {
  padding: 6px 12px;
}
.page ul li:first-child {
  border-bottom-left-radius: 4px !important;
  border-top-left-radius: 4px !important;
}
.page li:hover {
  background-color: #eeeeee;
}
.page ul li:not(:first-child) {
  border-left: 1px solid #ddd;
} */
</style>