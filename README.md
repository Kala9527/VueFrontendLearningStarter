# Maccha Garden 抹茶花园

> 一个基于 Vue 3 的精品抹茶电商前端展示项目。

[English README](./README.en.md)

Maccha Garden 是一个面向作品集展示的前端电商项目，围绕抹茶产品、日式茶文化和安静克制的购物体验设计。项目已经整理为可读、可运行、可继续扩展的 Vue 工程结构，适合用于 GitHub 展示、简历项目和二次开发。

## 项目亮点

- Vue 3 + TypeScript + Vite 单页应用
- 商品首页、商品列表、商品详情、购物车、登录和注册页面
- 使用 Pinia 管理购物车和商品状态
- 响应式布局和自定义 CSS 变量视觉系统
- 已清理 `node_modules`、`dist`、安装包和系统缓存文件

## 技术栈

- Vue 3
- TypeScript
- Vite
- Vue Router
- Pinia
- @lucide/vue

## 快速开始

请先安装 Node.js 20 或更高版本。本仓库不提交依赖目录、构建产物或安装程序。

```bash
npm install
npm run dev
```

构建和预览：

```bash
npm run build
npm run preview
```

## 可用脚本

```bash
npm run dev       # 启动本地开发服务
npm run build     # 类型检查并构建生产版本
npm run preview   # 预览生产构建结果
npm run typecheck # 运行 vue-tsc 类型检查
```

## 项目结构

```text
maccha-garden/
|-- public/
|-- src/
|   |-- assets/styles/
|   |-- components/
|   |-- data/
|   |-- router/
|   |-- stores/
|   |-- types/
|   `-- views/
|-- index.html
|-- package.json
|-- tsconfig.json
`-- vite.config.ts
```

## 依赖管理说明

以下内容不会提交到仓库：

- `node_modules/`
- `dist/`
- IDE 本地配置
- 操作系统缓存文件
- `node-*.msi` 等安装包

如需恢复依赖，执行：

```bash
npm install
```

## License

MIT
