<template>
  <div class="head-container">
    <el-row type="flex" justify="center" class="banner-box">
      <el-col :span="3">
        <div class="logo">
          <div>
            <img class="icon" src="~/static/test-icon.png" />
          </div>
          <h1 class="icon-name">简历网</h1>
        </div>
      </el-col>
      <el-col :span="18" class="nav-part">
        <div class="nav">
          <el-menu class="el-menu-demo" router mode="horizontal" :default-active="activateIndex" @select="handleSelect">
            <el-menu-item v-for="(item, i) in navList" :key="i" :index="item.index">
              {{ item.navname }}
            </el-menu-item>
          </el-menu>
        </div>
      </el-col>
      <el-col :span="3">
        <div class="usrinfo">
          <a class="usr-name" href="login">登录</a>|
          <a class="usr-name" href="register">注册</a>
          <div href="myinfo">
            <a href="myinfo">
              <el-avatar>用户</el-avatar>
            </a>
          </div>
        </div>
      </el-col>
    </el-row>
  </div>
</template>

<script>
export default {
  data() {
    return {
      activateIndex: '/',
      navList: [
        { index: '/', navname: '首页' },
        { index: '2', navname: '创新项目' },
        { index: '3', navname: '公司招聘' },
        { index: '4', navname: '大赛信息' },
        { index: '5', navname: '交流社群' },
      ],
    }
  },
  methods: {
    handleSelect(key, keyPath) {
      console.log(key, keyPath)
    },
  },
}
</script>

<style>
.el-menu-demo {
  /* background: #409eff; */
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
}
.nav {
  float: left;
  margin-left: 30px;
}
.nav-part {
  border: 0;
  margin: 0;
}
.head-container {
  text-align: center;
  border-bottom: 0px solid rgb(211, 211, 211);
}
.el-row {
  /* margin-bottom: 20px; */
  /* background: #99a9bf; */
  display: flex;
  align-items: center;
}

.icon-name {
  margin-left: 10px;
  float: left;
  color: #409eff;
}
.logo {
  display: flex;
  align-items: center;
}
.icon {
  margin-left: 20px;
  float: left;
  align-items: center;
}
.usrinfo {
  display: flex;
  align-items: center;
}
.usr-name {
  align-items: center;
  color: #409eff;
  margin-right: 10px;
  margin-left: 10px;
  text-decoration: none;
}
</style>
