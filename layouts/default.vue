<template>
  <div>
    <el-container>
      <!-- 网页头部 -->
      <header>
        <my-header />
      </header>
      <!-- 网页主要内容 -->
      <el-main>
        <nuxt />
      </el-main>
      <!-- 网页底部 -->
      <el-footer>
        <my-footer />
      </el-footer>
    </el-container>
  </div>
</template>

<script>
import MyHeader from '~/components/MyHeader.vue'
import MyFooter from '~/components/MyFooter.vue'
export default {
  components: {
    MyHeader,
    MyFooter,
  },
}
</script>
<style></style>
