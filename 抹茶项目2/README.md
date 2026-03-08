# 抹茶園 Maccha Garden

精品抹茶产品电商平台

## 项目简介

这是一个基于 Vue 3 + TypeScript 的抹茶产品电商网站，采用日式禅意美学设计理念。

## 技术栈

- **框架**: Vue 3 (Composition API)
- **语言**: TypeScript
- **构建工具**: Vite
- **路由**: Vue Router 4
- **状态管理**: Pinia
- **图标**: Lucide Vue Next

## 功能特性

- 精品抹茶产品展示与销售
- 分类浏览与筛选
- 购物车管理
- 用户登录/注册
- 响应式设计

## 开发指南

### 安装依赖

```bash
npm install
```

### 开发模式

```bash
npm run dev
```

### 构建生产版本

```bash
npm run build
```

## 项目结构

```
maccha-garden/
├── public/              # 静态资源
├── src/
│   ├── assets/         # 样式文件
│   ├── components/     # Vue 组件
│   │   ├── common/     # 通用组件
│   │   ├── layout/     # 布局组件
│   │   └── product/    # 商品相关组件
│   ├── composables/    # Vue 组合式函数
│   ├── data/           # 模拟数据
│   ├── router/         # 路由配置
│   ├── stores/         # Pinia 状态管理
│   ├── types/          # TypeScript 类型定义
│   └── views/          # 页面视图
└── index.html          # 入口 HTML
```

## 设计规范

### 色彩系统

- 主色调: 抹茶绿 #4A7C59
- 辅助色: 米白 #F5F1E8
- 强调色: 胭脂红 #C45C5C

### 字体

- 标题: Noto Serif JP
- 正文: DM Sans

## License

MIT
