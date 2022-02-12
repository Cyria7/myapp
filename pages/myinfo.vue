<template>
  <div class="info-container">
    <el-row :gutter="15">
      <el-col :span="4"
        ><div class="content">
          <el-menu default-active="1" @select="handleSelect">
            <el-menu-item index="1"> 个人信息 </el-menu-item>
            <el-menu-item index="2"> 个人优势</el-menu-item>
            <el-menu-item index="3"> 实习经历 </el-menu-item>
            <el-menu-item index="4"> 项目经历 </el-menu-item>
            <el-menu-item index="5"> 教育经历 </el-menu-item>
            <el-submenu index="6">
              <template slot="title">
                <span>添加证书认证</span>
              </template>
              <el-menu-item index="6-1">资格证书</el-menu-item>
              <el-menu-item index="6-2">工作证明</el-menu-item>
              <el-menu-item index="6-3">志愿者证书</el-menu-item>
            </el-submenu>
          </el-menu>
        </div></el-col
      >
      <el-col :span="16"
        ><div class="main-info">
          <div class="part-head">
            <div class="form-name">
              <h2>我的个人简历</h2>
            </div>
            <div class="form-function" display>
              <a href="">预览及导出</a>
              |
              <a href="">生成附件简历</a>
            </div>
          </div>

          <div class="part-info">
            <h1>{{ usr.name }}</h1>
            <el-card>
              <i class="el-icon-user">{{ usr.gradutime }}年毕业</i>
              <i class="el-icon-collection">{{ usr.college }}</i>
              <i class="el-icon-location-information">{{ usr.location }}</i>
              <i class="el-icon-phone-outline">TEL: {{ usr.phone }}</i>
              <i class="el-icon-message">E-mail: {{ usr.email }}</i>
            </el-card>
          </div>

          <div class="part-intro">
            <h3>个人优势</h3>
            <el-card>
              <div>{{ usr.adv }}</div>
            </el-card>
          </div>
          <div class="part-interning">
            <h3>实习经历</h3>
            <el-card class="job-exp">
              <div v-for="job in jobs" :key="job.id">
                <div class="job-exp-time">起止时间: {{ job.start }} 至 {{ job.end }}</div>
                <div class="job-exp-com">任职公司: {{ job.company }}</div>
                <div class="job-exp-zw">主要职务: {{ job.zw }}</div>
                <div class="job-exp-idfp">认证HR: {{ job.idfp }}</div>
                <div class="job-exp-eva">公司评价: {{ job.eva }}</div>
                <div class="one-end"></div>
              </div>
            </el-card>
          </div>

          <div class="part-project" v-for="job in jobs" :key="job.id">
            <h3>实习经历</h3>
            <div class="job-exp">
              <div class="job-exp-time">起止时间: {{ job.start }} 至 {{ job.end }}</div>
              <div></div>
              <div class="job-exp-zw">主要职务: {{ job.zw }}</div>
              <div class="job-exp-idfp">认证人: {{ job.idfp }}</div>
              <div class="job-exp-eva">公司评价: {{ job.eva }}</div>
            </div>
          </div>
          <div class="part-education"></div></div
      ></el-col>
      <el-col :span="4"><div class="other-func"></div></el-col>
    </el-row>
  </div>
</template>

<script>
import '~/assets/css/personinfo.css'
export default {
  data() {
    return {
      usr: {
        name: '用户姓名',
        gradutime: '2023',
        location: '上海',
        college: '上海大学',
        phone: '17321122258',
        email: 'legendstarry@qq.com',
        adv: '本人在大学期间学习过C++，python，java等多类编程语言。',
      },
      jobs: [
        {
          id: '1',
          start: '2021-10-07',
          end: '2022-3-07',
          zw: '前端开发',
          idfp: '就是我',
          eva: '该学生在工作时期认真负责，能有效解决上级的问题，表现优良。',
          company: 'MiHaYo',
        },
        {
          id: '2',
          start: '2021-10-07',
          end: '2022-3-07',
          zw: '后端开发',
          idfp: '还是我',
          eva: '该学生在工作时期认真负责，能有效解决上级的问题，表现优良。',
          company: 'MiHaYo',
        },
      ],
    }
  },
}
</script>
