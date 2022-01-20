<template>
  <div class="container-reg">
    <el-row>
      <el-col :span="12" :offset="6">
        <div class="reg-wrap">
          <el-radio-group class="rd-group" v-model="usrtype">
            <el-radio-button label="student">我是学生</el-radio-button>
            <el-radio-button label="teacher">我是教师</el-radio-button>
            <el-radio-button label="staff">我是HR</el-radio-button>
          </el-radio-group>
          <!-- 下面要写三个form分别对应学生、教师、HR  -->
          <!-- 这是第一个form 学生注册表 -->
          <el-form class="reg-form" :model="stuform" label-width="80px">
            <el-form-item label="姓名">
              <el-input v-model="stuform.name" placeholder="请输入姓名"></el-input>
            </el-form-item>
            <el-form-item label="身份证">
              <el-input v-model="stuform.sfz" placeholder="请输入身份证号码"> </el-input>
            </el-form-item>
            <el-form-item label="性别">
              <el-radio-group v-model="stuform.sex">
                <el-radio label="男"></el-radio>
                <el-radio label="女"></el-radio>
              </el-radio-group>
            </el-form-item>
            <el-form-item label="学校">
              <el-input v-model="stuform.college" placeholder="请输入在读学校"> </el-input>
            </el-form-item>
            <el-form-item label="学号">
              <el-input v-model="stuform.xh"> </el-input>
            </el-form-item>
            <el-form-item label="毕业年份">
              <el-date-picker type="date" placeholder="选择毕业时间" v-model="stuform.gradyear" style="width: 100%"></el-date-picker>
            </el-form-item>
            <el-form-item label="手机号码">
              <el-input v-model="stuform.phone" placeholder="请输入手机号码"></el-input>
            </el-form-item>
            <el-form-item label="邮箱地址">
              <el-input v-model="stuform.email" placeholder="请输入邮箱地址"></el-input>
            </el-form-item>
            <el-form-item label="昵称">
              <el-input v-model="stuform.nickname" placeholder="请输入昵称"></el-input>
            </el-form-item>
            <el-form-item label="所在城市">
              <el-input v-model="stuform.location" placeholder="请输入所在城市"></el-input>
            </el-form-item>
            <el-form-item>
              <el-button type="primary" @click="onSubmit">立即创建</el-button>
              <el-button>取消</el-button>
            </el-form-item>
          </el-form>
          <!-- 学生表单完成 -->
        </div>
      </el-col>
    </el-row>
  </div>
</template>

<script>
import '~/assets/css/registerpage.css'
export default {
  data() {
    return {
      usrtype: 'student',
      stuform: {
        name: '',
        sfz: '',
        sex: '男',
        college: '',
        xh: '',
        gradyear: '',
        phone: '',
        email: '',
        nickname: '',
        location: '',
      },
      teacherform: {
        name: '',
        sfz: '',
        sex: '男',
        college: '',
        gh: '',
        phone: '',
        email: '',
        location: '',
        nickname: '',
      },
    }
  },
  methods: {
    onSubmit() {
      console.log('submit')
    },
  },
}
</script>
