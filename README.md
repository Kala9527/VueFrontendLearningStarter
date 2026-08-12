# Vue Frontend Learning Starter

> 帮助初学者快速掌握前端软件开发的 Vue 3 实战项目。

[English README](./README.en.md)

Vue Frontend Learning Starter 是一个适合前端初学者练手的完整小项目。它以抹茶商品展示和购物流程为例，把日常前端开发中常见的页面、组件、路由、状态管理、类型定义、样式组织和构建部署串在一起，让你不只“看语法”，而是能亲手跑通一个像样的前端应用。

如果你正在学习 Vue、TypeScript、Vite 或前端项目结构，这个仓库可以作为一个温和但实用的起点：代码量不夸张，功能也不空洞，适合边看边改、边运行边理解。

## 你可以学到什么

- 如何使用 Vue 3 + TypeScript + Vite 搭建单页应用。
- 如何用 Vue Router 组织首页、商品列表、详情页、购物车、登录和注册页面。
- 如何用 Pinia 管理购物车状态。
- 如何拆分可复用组件，例如商品卡片。
- 如何用类型定义约束商品、分类、购物车数据。
- 如何组织 CSS，让页面保持统一的视觉风格。
- 如何执行本地开发、类型检查、生产构建和预览。

## 项目亮点

- 入门友好：结构清晰，适合从页面到组件逐步阅读。
- 功能完整：包含商品展示、详情、购物车、账号入口等常见业务页面。
- 技术现代：使用 Vue 3、TypeScript、Vite、Pinia、Vue Router。
- 适合改造：可以继续扩展搜索、筛选、收藏、结算、后端接口等功能。
- 适合展示：完成度足够作为简历项目、课程作业或学习记录。

## 技术栈

- Vue 3
- TypeScript
- Vite
- Vue Router
- Pinia
- Lucide Vue

## 快速开始

请先安装 Node.js 20 或更高版本。

```bash
npm install
npm run dev
```

构建和预览：

```bash
npm run build
npm run preview
```

## 常用脚本

```bash
npm run dev       # 启动本地开发服务
npm run build     # 类型检查并构建生产版本
npm run preview   # 预览生产构建结果
npm run typecheck # 运行 vue-tsc 类型检查
```

## 项目结构

```text
vue-frontend-learning-starter/
|-- public/
|-- src/
|   |-- assets/styles/     # 全局样式
|   |-- components/        # 可复用组件
|   |-- data/              # 示例商品数据
|   |-- router/            # 页面路由
|   |-- stores/            # Pinia 状态管理
|   |-- types/             # TypeScript 类型
|   `-- views/             # 页面视图
|-- index.html
|-- package.json
|-- tsconfig.json
`-- vite.config.ts
```

## 适合的练习方向

- 把商品数据改成你喜欢的主题，比如咖啡、书店、数码产品或游戏道具。
- 给商品列表增加分类筛选、关键词搜索和排序。
- 给购物车增加数量调整、优惠券、运费和结算页。
- 把本地静态数据替换成真实 API。
- 尝试部署到 GitHub Pages、Vercel 或 Netlify。

## 部署说明

生成静态文件：

```bash
npm run build
```

构建结果在 `dist/` 目录，可以上传到任意静态托管平台。仓库不会提交 `node_modules/`、`dist/`、本地 IDE 配置或系统缓存文件，克隆后执行 `npm install` 即可恢复依赖。

## 给初学者的一句话

前端学习最容易卡在“看懂了，但不知道怎么做”。这个项目希望给你一个能拆开、能修改、能跑起来的样板。慢慢来，先让页面动起来，再让结构清楚起来，你会越来越顺手。

## 感谢与支持

谢谢你愿意点进这个项目。它不追求复杂炫技，而是希望认真陪初学者走完一个真实前端项目的基本流程。如果它帮你少迷路一点，欢迎点个 Star、Fork 一份自己改，或者把建议留在 Issue 里。你的支持会让我继续整理更多适合新手上手的项目，也祝你写代码越来越稳、越来越有成就感。

## License

MIT
