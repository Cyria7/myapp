<template>
  <div class="container-reg">
    <el-row>
      <el-col :span="12" :offset="6">
        <div class="reg-wrap">
          <el-radio-group class="rd-group" v-model="usrtype" @change="onMyChange">
            <el-radio-button label="student">我是学生</el-radio-button>
            <el-radio-button label="teacher">我是教师</el-radio-button>
            <el-radio-button label="staff">我是HR</el-radio-button>
          </el-radio-group>
          <!-- 下面要写三个form分别对应学生、教师、HR  -->
          <!-- 这是第一个form 学生注册表 -->
          <el-form class="reg-form" :model="stuform" label-width="80px" v-if="stushow">
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
              <el-input v-model="stuform.xh" placeholder="请输入在读学校的学号"> </el-input>
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
            <el-form-item label="用户密码">
              <el-input type="password" v-model="stuform.pwd" autocomplete="off" placeholder="请输入密码"></el-input>
            </el-form-item>
            <el-form-item>
              <el-button type="primary" @click="onSubmit">立即注册</el-button>
              <el-button>取消</el-button>
            </el-form-item>
          </el-form>
          <!-- 学生表单完成 -->
          <!-- 教师表单开始 -->
          <el-form class="reg-form" :model="teacherform" label-width="80px" v-if="teachershow">
            <el-form-item label="姓名">
              <el-input v-model="teacherform.name" placeholder="请输入姓名"></el-input>
            </el-form-item>
            <el-form-item label="身份证">
              <el-input v-model="teacherform.sfz" placeholder="请输入身份证号码"> </el-input>
            </el-form-item>
            <el-form-item label="性别">
              <el-radio-group v-model="teacherform.sex">
                <el-radio label="男"></el-radio>
                <el-radio label="女"></el-radio>
              </el-radio-group>
            </el-form-item>
            <el-form-item label="学校">
              <el-input v-model="teacherform.college" placeholder="请输入在职学校"> </el-input>
            </el-form-item>
            <el-form-item label="工号">
              <el-input v-model="teacherform.xh" placeholder="请输入在职学校的工号"> </el-input>
            </el-form-item>
            <el-form-item label="手机号码">
              <el-input v-model="teacherform.phone" placeholder="请输入手机号码"></el-input>
            </el-form-item>
            <el-form-item label="邮箱地址">
              <el-input v-model="teacherform.email" placeholder="请输入邮箱地址"></el-input>
            </el-form-item>
            <el-form-item label="所在城市">
              <el-input v-model="teacherform.location" placeholder="请输入所在城市"></el-input>
            </el-form-item>
            <el-form-item label="用户密码">
              <el-input type="password" v-model="teacherform.pwd" autocomplete="off" placeholder="请输入密码"></el-input>
            </el-form-item>
            <el-form-item>
              <el-button type="primary" @click="onSubmit">立即注册</el-button>
              <el-button>取消</el-button>
            </el-form-item>
          </el-form>
          <!-- 教师表单结束 -->
          <!-- HR表单开始 -->
          <el-form class="reg-form" :model="hrform" label-width="80px" v-if="hrshow">
            <el-form-item label="姓名">
              <el-input v-model="hrform.name" placeholder="请输入姓名"></el-input>
            </el-form-item>
            <el-form-item label="身份证">
              <el-input v-model="hrform.sfz" placeholder="请输入身份证号码"> </el-input>
            </el-form-item>
            <el-form-item label="性别">
              <el-radio-group v-model="hrform.sex">
                <el-radio label="男"></el-radio>
                <el-radio label="女"></el-radio>
              </el-radio-group>
            </el-form-item>
            <el-form-item label="企业名称">
              <el-input v-model="hrform.company" placeholder="请输入在职企业"> </el-input>
            </el-form-item>
            <el-form-item label="工号">
              <el-input v-model="hrform.xh" placeholder="请输入在职企业的工号"> </el-input>
            </el-form-item>
            <el-form-item label="手机号码">
              <el-input v-model="hrform.phone" placeholder="请输入手机号码"></el-input>
            </el-form-item>
            <el-form-item label="邮箱地址">
              <el-input v-model="hrform.email" placeholder="请输入邮箱地址"></el-input>
            </el-form-item>
            <el-form-item label="所在城市">
              <el-input v-model="hrform.location" placeholder="请输入所在城市"></el-input>
            </el-form-item>
            <el-form-item label="用户密码">
              <el-input type="password" v-model="hrform.pwd" autocomplete="off" placeholder="请输入密码"></el-input>
            </el-form-item>
            <el-form-item>
              <el-button type="primary" @click="onSubmit">立即注册</el-button>
              <el-button>取消</el-button>
            </el-form-item>
          </el-form>
          <!-- HR表单结束 -->
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
      stushow: true,
      teachershow: false,
      hrshow: false,
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
        pwd: '',
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
        pwd: '',
      },
      hrform: {
        name: '',
        sfz: '',
        sex: '男',
        company: '',
        gh: '',
        phone: '',
        email: '',
        location: '',
        pwd: '',
      },
    }
  },
  methods: {
    onSubmit() {
      console.log('submit')
    },
    onMyChange() {
      if (this.usrtype == 'student') {
        this.stushow = true
        this.teachershow = false
        this.hrshow = false
      }
      if (this.usrtype == 'teacher') {
        this.stushow = false
        this.teachershow = true
        this.hrshow = false
      }
      if (this.usrtype == 'staff') {
        this.stushow = false
        this.teachershow = false
        this.hrshow = true
      }
    },
  },
}
</script>
