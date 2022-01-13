<template>
  <div class="container">
    <!-- 搜索区域开始 -->
    <div class="search">
      <!-- <el-row :gutter="0"> -->
      <div style="margin-top: 15px">
        <el-input placeholder="请输入内容" v-model="input3" class="input-with-select">
          <el-select v-model="select" slot="prepend" placeholder="请选择">
            <el-option label="大赛信息" value="1"></el-option>
            <el-option label="创新项目" value="2"></el-option>
            <el-option label="招聘信息" value="3"></el-option>
            <el-option label="交流社区" value="4"></el-option>
          </el-select>
          <el-button slot="append" icon="el-icon-search">搜索</el-button>
        </el-input>
        <!-- <el-button slot="append" type="primary" icon="el-icon-search">搜索</el-button> -->
      </div>
      <!-- </el-row> -->
      <div class="recomWords">
        <a href="">ACM</a>
        <a href="">计算机应用能力大赛</a>
        <a href="">企业招聘信息</a>
      </div>
    </div>
    <!-- 搜索框区域结束 -->
    <!-- 走马灯开始 -->
    <div class="zmd">
      <el-carousel :interval="4000" type="card" height="350px">
        <el-carousel-item v-for="item in items" :key="item.num">
          <img :src="item.src" alt="" />
          <!-- <h3 class="medium">{{ item }}</h3> -->
        </el-carousel-item>
      </el-carousel>
    </div>

    <!-- 走马灯结束 -->
    <!-- 各类信息启示页面 -->
    <div class="AllInfo">
      <div class="competition">
        <header class="comm-title">
          <h2 class="tac">
            <span class="c-333">大赛信息</span>
          </h2>
        </header>
        <el-row>
          <el-col :span="8" v-for="(o, index) in 3" :key="o" :offset="index > 0 ? 2 : 0">
            <el-card :body-style="{ padding: '0px' }">
              <img src="https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png" class="image" />
              <div style="padding: 14px">
                <span>赛事名称</span>
                <div class="bottom clearfix">
                  <time class="time">发起人：中国计算机协会</time>
                  <el-button type="text" class="button">详细信息>></el-button>
                </div>
              </div>
            </el-card>
          </el-col>
        </el-row>
      </div>
      <div class="invention">
        <header class="comm-title">
          <h2 class="tac">
            <span class="c-333">创新项目</span>
          </h2>
        </header>
      </div>
      <div class="recruit">
        <header class="comm-title">
          <h2 class="tac">
            <span class="c-333">招聘信息</span>
          </h2>
        </header>
      </div>
      <div class="community">
        <header class="comm-title">
          <h2 class="tac">
            <span class="c-333">交流社区</span>
          </h2>
        </header>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  layout: 'default',
  data() {
    return {
      input1: '',
      input2: '',
      input3: '',
      select: '',
      currentDate: new Date(),
      items: [
        { num: 0, src: require('@/static/images/00.jpg') },
        { num: 1, src: require('@/static/images/01.jpg') },
        { num: 2, src: require('@/static/images/02.jpg') },
        { num: 3, src: require('@/static/images/03.jpg') },
        { num: 4, src: require('@/static/images/04.jpg') },
      ],
    }
  },
}
</script>

<style>
/* .input-with-select {
  float: left;
  width: 1000px;
}  */
.container {
  margin: 10px;
  /* background-color: aquamarine; */
}
.search {
  /* background-color: azure; */
  margin: auto;
  width: 60%;
}
.el-button {
  position: relative;
  clear: both;
}
.recomWords {
  padding-left: 130px;
}

.recomWords a {
  font-size: 12px;
  text-decoration: none;
}
.select-box {
  float: left;
}
.search-input {
  float: left;
}
.el-select .el-input {
  width: 130px;
}

.tac {
  margin: 20px auto 20px;
  text-align: center;
}
.zmd {
  margin-top: 20px;
  margin-bottom: 20px;
}
.el-carousel__item h3 {
  color: #475669;
  font-size: 14px;
  opacity: 0.75;
  line-height: 200px;
  margin: 0;
}

/* .el-carousel__item:nth-child(2n) {
  background-color: #99a9bf;
}

.el-carousel__item:nth-child(2n + 1) {
  background-color: #d3dce6;
} */

.time {
  font-size: 13px;
  color: #999;
}

.bottom {
  margin-top: 13px;
  line-height: 12px;
}

.button {
  padding: 0;
  float: right;
}

.image {
  width: 100%;
  display: block;
}

.clearfix:before,
.clearfix:after {
  display: table;
  content: '';
}

.clearfix:after {
  clear: both;
}
</style>
