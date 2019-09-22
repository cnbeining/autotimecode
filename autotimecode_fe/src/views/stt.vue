<template>
  <div class="stt-container">

    <el-alert title="STT: Speech to Text, audio + SRT -> filled SRT"></el-alert>

    <el-divider>创建任务</el-divider>
    <el-form label-width="100px">
      <el-form-item label="文件链接" required>
        <el-input v-model="form.wav_url" placeholder="请输入Firefox send文件链接"></el-input>
      </el-form-item>
      <el-form-item label="原始srt" required>
        <el-input v-model="form.srt" placeholder="请输入原始SRT" type="textarea" :autosize="{ minRows: 7, maxRows: 14 }"></el-input>
      </el-form-item>
      <el-form-item>
        <el-button @click="submit">提交</el-button>
      </el-form-item>
    </el-form>

    <el-divider>创建任务结果</el-divider>
    <el-form label-width="100px">
      <el-form-item label="任务id" required>
        <el-input v-model="taskId" placeholder="通常情况下无需自动填写，仅供尝试次数超过限制后手动调用"></el-input>
      </el-form-item>
      <el-form-item>
        <el-button @click="getResult">查询</el-button>
      </el-form-item>
    </el-form>

    <el-divider>生成文件结果</el-divider>
    <el-form label-width="100px">
      <el-form-item label="文件处理结果">
        <el-input v-model="steps" type="textarea" :autosize="{ minRows: 7, maxRows: 14 }"></el-input>
      </el-form-item>
      <el-form-item label="生成文件">
        <el-input v-model="result" type="textarea" :autosize="{ minRows: 7, maxRows: 14 }"></el-input>
      </el-form-item>
    </el-form>
  </div>
</template>

<script>
import dayjs from 'dayjs'

export default {
  name: 'stt',
  data: () => ({
    form: {
      wav_url: '',
      srt: '',
      segment: true,
      lang: 'en'
    },
    taskId: '',
    result: '',
    steps: '',
    limit: 0,
    timer: null
  }),
  methods: {
    submit() {
      if (!this.form.wav_url || !this.form.srt) {
        this.$message.error('请完整填写表单内容')
        return
      }
      // what the fuck
      const srt = this.form.srt.replace(/\n\n\n\n/g, '\\n\\n').replace(/\n\n\n/g, '\\n\\n').replace(/\n/g, '\\n')
      this.$axios.post('/api/stt', { ...this.form, srt }).then(res => {
        if (res.data.task_id) {
          this.taskId = res.data.task_id
          this.$message.success('任务创建成功:' + this.taskId)
          this.getResult()
        } else {
          this.$message.error('任务创建失败')
        }
      }).catch(() => {
        this.$message.error('任务创建失败')
      })
    },
    getResult() {
      if (!this.taskId) {
        this.$message.error('请输入任务ID')
        return
      }
      this.limit = 0
      this.result = '开始轮询...\n'
      this.steps = ''
      clearInterval(this.timer)
      this.timer = setInterval(() => {
        if (this.limit > 9) {
          this.$message.error('超过最大重试次数, 请手动尝试')
          clearInterval(this.timer)
          return
        }
        this.$axios.get(`/api/stt/${this.taskId}`).then(res => {
          this.steps = JSON.stringify(res.data.steps, null, 4)
          const cantParse = res.data.steps.some(item => item.comment === 'SRT cannot be parsed')
          if (cantParse) {
            this.$meesage.error('SRT解析失败')
            clearInterval(this.timer)
          }
        })
        this.$axios.get(`/api/stt/${this.taskId}/srt`).then(res => {
          this.result = res
          clearInterval(this.timer)
        }).catch(() => {
          this.limit += 1
          const t = dayjs().format('YYYY-MM-DD HH:mm:ss')
          this.result += `轮询结果中: ${t}\n`
        })
      }, 5000)
    }
  }
}
</script>