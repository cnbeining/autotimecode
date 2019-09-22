/**
 * ESLint配置文件
 * @see ESLint配置中文文档 https://cn.eslint.org/docs/rules/
 */
module.exports = {
  root: true,
  env: {
    node: true
  },
  'extends': [
    'plugin:vue/essential',
    'eslint:recommended'
  ],
  rules: {
    // 开发模式下禁用debugger/console
    'no-console': process.env.NODE_ENV === 'production' ? 'error' : 'off',
    'no-debugger': process.env.NODE_ENV === 'production' ? 'error' : 'off',
    // 2格缩进
    'indent': ['error', 2, { 'SwitchCase': 1 }],
    // JavaScript强制使用单引号, 不影响Vue模版
    'quotes': ['error', 'single'],
    // 禁止使用分号
    'semi': ['error', 'never'],
    // 强制使用unix换行风格, 即LF
    'linebreak-style': ['error', 'unix'],
    // 禁止使用var声明变量
    'no-var': 'error',
    // 禁止修改const声明的变量
    'no-const-assign': 2,
    // 禁止在条件表达式中赋值
    'no-cond-assign': 2,
    // 不能有声明后未被使用的变量或参数
    'no-unused-vars': 2,
    // 不能使用undefined, 即避免 var undefined = 'x'
    'no-undefined': 2,
    // 首选const
    'prefer-const': 0,
    // 首选展开运算符, 替代Object.assign()
    'prefer-spread': 0,
    // 未定义前不能使用
    'no-use-before-define': 2,
    // 禁止无用的表达式, 例如 if(true) {}
    'no-unused-expressions': 2,
    // 禁止在对象/数组的最后一个键/元素后带逗号, 例如 { a: 1, b: 2, }
    'comma-dangle': [2, 'never'],
    // 逗号前不能有空格, 逗号后必须有空格
    'comma-spacing': [2, { 'before': false, 'after': true }],
    // 控制逗号在行尾出现还是在行首出现
    'comma-style': [2, 'last'],
    // if while function 后面的{必须与if在同一行，java风格。
    'brace-style': [2, '1tbs', { 'allowSingleLine': true }],
    // 必须使用全等 ===, 而不是 ==
    'eqeqeq': 2,
    // 箭头函数 => 前后都需要空格
    'arrow-spacing': [ 'error', { before: true, after: true }],
    // 禁止使用迷惑性的箭头函数 var x = a => 1 ? 2 : 3; // incorrect
    'no-confusing-arrow': [ 'error', { allowParens: true }]
  },
  parserOptions: {
    parser: 'babel-eslint'
  }
}
