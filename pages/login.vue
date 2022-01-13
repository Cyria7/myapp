<template>
  <div class="container">
    <el-row>
      <el-col :offset="15" :span="7">
        <div class="login-wrap">
          <span class="formtittle">
            <h2>登录简历网</h2>
          </span>
          <el-form :label-position="labelPosition" ref="form" label-width="80px">
            <el-form-item label="用户名">
              <el-input v-model="loginForm.usrname" placeholder="请输入手机号/邮箱"></el-input>
            </el-form-item>
            <el-form-item label="密码">
              <el-input placeholder="请输入密码" v-model="loginForm.pwd" show-password></el-input>
            </el-form-item>
            <el-form-item>
              <el-button type="primary" @click="submitForm('ruleForm')">登录</el-button>
            </el-form-item>
          </el-form>
        </div>
      </el-col>
    </el-row>
  </div>
</template>

<script>
import '~/assets/css/loginpage.css'
export default {
  data() {
    return {
      labelPosition: 'right',
      loginForm: {
        usrname: '',
        pwd: '',
      },
    }
  },
  methods: {
    submitForm(formName) {},
  },
}
</script>
