<template>
  <el-container class="layout">

    <el-header class="layout-header">
      <a href="/" class="layout-header-link">
        cnbeining
      </a>
      <span class="layout-header-title">{{ title }}</span>
      <!-- 提供default插槽: 解析为下拉菜单 -->
      <el-dropdown v-if="$slots.default && $slots.default.length" @command="handleCommand">
        <img :src="avatar" alt="avatar" class="layout-header-avatar">
        <el-dropdown-menu slot="dropdown">
          <slot></slot>
        </el-dropdown-menu>
      </el-dropdown>
      <!-- 未提供default插槽: 解析为头像图片 -->
      <img :src="avatar" alt="avatar" class="layout-header-avatar" @click="handleCommand('default')" v-else>
    </el-header>

    <el-container class="layout-container">
      <el-aside class="layout-container-aside">
        <el-menu class="layout-container-menu" :default-active="menu[0].index">
          <template v-for="item in menu">
            <!-- 有子菜单 -->
            <el-submenu v-if="item.children" :key="item.index" :index="item.index">
              <!-- 父级title插槽 -->
              <template slot="title">
                <i v-if="item.icon" :class="item.icon"></i>
                <span class="bolder">{{ item.name }}</span>
              </template>
              <!-- 子菜单 -->
              <el-menu-item v-for="i in item.children" :key="i.name" :index="i.index" @click="handleClick(i)">
                <i v-if="i.icon" :class="i.icon"></i>
                <span>{{ i.name }}</span>
              </el-menu-item>
            </el-submenu>
            <!-- 没有子菜单 -->
            <el-menu-item v-else :index="item.index" :key="item.index" @click="handleClick(item)" class="bolder">
              <i v-if="item.icon" :class="item.icon"></i>
              <span>{{ item.name }}</span>
            </el-menu-item>
          </template>
        </el-menu>
      </el-aside>
      <!-- 已获取但不作为prop被识别的属性将传递给内部组件 -->
      <keep-alive>
        <router-view class="layout-container-view" v-bind="$attrs"></router-view>
      </keep-alive>
    </el-container>

  </el-container>
</template>

<script>
/**
 * 基本后台的结构
 * @props {String} [title] - 后台系统的名称
 * @props {String} [avatar] - 头像图片地址
 * @props {Array} menu - 左侧菜单栏, 只支持二级嵌套
 *                menu.$.index - 激活菜单的index
 *                menu.$.name - 菜单的名称
 *                menu.$.icon - 图标
 *                menu.$.path - 跳转路径
 *                menu.$.children - 子菜单
 * @slots default - 默认插槽, 渲染下拉列表显示的元素, 其内容必须为el-dropdown-item
 * @emits menu-click - 下拉列表元素点击触发的事件, payload为el-dropdown-item的command值或'default'
 */
export default {
  name: 'layout',
  props: {
    title: {
      type: String,
      default: 'XX管理平台'
    },
    avatar: {
      type: String,
      default: 'https://cube.elemecdn.com/3/7c/3ea6beec64369c2642b92c6726f1epng.png'
    },
    menu: {
      type: Array,
      required: true
    }
  },
  mounted() {
    this.slotsValidate()
  },
  methods: {
    slotsValidate() {
      if (this.$slots.default && this.$slots.default.length) {
        const valid = this.$slots.default.every(vnode => vnode.tag.includes('ElDropdownItem'))
        if (!valid) {
          throw new TypeError('default slots\' tagName must be el-dropdown-item')
        }
      }
    },
    handleCommand(command) {
      this.$emit('menu-click', command)
    },
    handleClick(menu) {
      if (!menu.path) return
      if (/^http/.test(menu.path)) window.open(menu.path)
      else this.$router.push(`${menu.path}`)
    }
  }
}
</script>

<style scoped lang="less">
  .layout {
    min-height: 100vh;
    .layout-header {
      display: flex;
      align-items: center;
      padding: 0 24px;
      background-color: #32363a;
      &-link {
        box-sizing: border-box;
        height: 100%;
        padding: 12px;
        border-left: 1px solid #55616d;
        border-right: 1px solid #55616d;
        text-decoration: none;
        color: #fff;
        font-weight: 600;
        line-height: 36px;
        font-size: 20px;
      }
      &-logo {
        height: 36px;
      }
      &-title {
        margin-right: auto;
        padding-left: 12px;
        color: #fff;
        font-size: 16px;
      }
      &-avatar {
        width: 32px;
        height: 32px;
        background-color: #ccc;
        border-radius: 50%;
        border: 1px solid rgba(255, 255, 255, 0.04);
        cursor: pointer;
      }
    }
    .layout-container {
      min-height: 100vh - 60px;
      &-aside {
        width: 200px!important;
      }
      &-menu {
        height: 100%;
      }
      &-view {
        box-sizing: border-box;
        padding: 24px;
        width: 100%;
      }
    }
  }
</style>