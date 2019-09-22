/**
 * Vue-CLI3 全局配置
 * @see https://cli.vuejs.org/zh/config/#%E5%85%A8%E5%B1%80-cli-%E9%85%8D%E7%BD%AE
 */
const CompressionWebpackPlugin = require('compression-webpack-plugin')
const QRCode = require('./build/qrcode')

module.exports = {
  publicPath: '/',
  productionSourceMap: false,
  css: {
    sourceMap: false
  },
  devServer: {
    host: '0.0.0.0',
    proxy: {
      '/api': {
        target: 'http://45.32.105.84:5055/',
        changeOrigin: true,
        pathRewrite: {
          '^/api': '/'
        }
      }
    }
  },
  configureWebpack: config => {
    if (process.env.NODE_ENV !== 'production') {
      return {
        plugins: [
          new QRCode('http', 8080)
        ]
      }
    } else {
      config.plugins.push(
        new CompressionWebpackPlugin({
          test: /\.(js|css|html|json|woff|tff)$/,
          // 大于10kb的会压缩
          threshold: 10 << 10
        })
      )
    }
  },
  pluginOptions: {
    /**
     * 使用vue-cli-plugin-dll提升构建速度, 构建时间14s => 5s
     * @description 构建前端项目时往往希望第三方库(vendors)和自己的代码可以分开打包, 因为第三方包不会经常变化
     * @doc https://github.com/fingerpan/vue-cli-plugin-dll
     */
    dll: {
      entry: ['vue', 'vue-router', 'vuex', 'axios'],
      open: process.env.NODE_ENV === 'production',
      inject: true
    }
  }
}