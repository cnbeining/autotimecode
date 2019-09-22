<template>
  <div id="app">
    <layout
      title="自动时轴/听打/翻译工具"
      :avatar="avatar"
      :menu="menu"
      @menu-click="handleMenuClick"
    >
      <el-dropdown-item command="github">Github</el-dropdown-item>
    </layout>
  </div>
</template>

<script>
import layout from '@/components/layout.vue'

export default {
  name: 'app',
  components: {
    layout
  },
  data: () => ({
    menu: [
      { index: '1', path: '/vad', name: 'VAD' },
      { index: '2', path: '/stt', name: 'STT' },
      { index: '3', path: '/fa', name: 'FA' },
      { index: '4', path: '/nmt', name: 'NMT' },
    ],
    avatar: require('@/assets/img/avatar.jpg')
  }),
  methods: {
    handleMenuClick(command) {
      if (command === 'github') {
        window.open('https://github.com/cnbeining/autotimecode')
      }
    }
  }
}
</script>