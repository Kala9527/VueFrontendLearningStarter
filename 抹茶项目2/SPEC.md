# 抹茶园 (Maccha Garden) - 电商平台项目规格文档

## 1. 项目概述

### 项目名称
**抹茶园 (Maccha Garden)** - 精品抹茶产品电商平台

### 项目定位
专注于高品质抹茶及相关产品的在线零售平台，为抹茶爱好者提供优质的购物体验。

### 核心功能
- 精品抹茶产品展示与销售
- 分类浏览与搜索
- 购物车管理
- 用户账户系统
- 订单管理

### 目标用户
- 25-45岁的都市白领
- 追求生活品质的消费者
- 日本文化爱好者
- 健康饮品消费者

---

## 2. 技术栈选择

### 核心技术
- **框架**: Vue 3 (Composition API)
- **语言**: TypeScript
- **构建工具**: Vite
- **路由**: Vue Router 4
- **状态管理**: Pinia
- **HTTP 客户端**: Axios

### UI 框架
- **主要方案**: 自定义 CSS + CSS Variables (遵循前端设计技能规范)
- **图标**: Lucide Icons
- **字体**: Noto Serif JP (日式衬线) + DM Sans (现代无衬线)

### 开发工具
- ESLint + Prettier (代码规范)
- CSS Variables (主题管理)

---

## 3. 视觉设计规格

### 3.1 美学方向

**主题**: 日式禅意与现代精致融合

**设计理念**:
- 借鉴日本传统美学中的"侘寂"(Wabi-sabi)哲学
- 强调自然、简约、精致
- 大量留白，营造呼吸感
- 柔和而克制的动画

### 3.2 色彩系统

```css
:root {
  /* 主色调 - 抹茶绿 */
  --color-matcha-primary: #4A7C59;
  --color-matcha-light: #6B9B7A;
  --color-matcha-dark: #2D5A3D;
  
  /* 辅助色 - 米白/奶油色 */
  --color-cream: #F5F1E8;
  --color-cream-light: #FDFBF7;
  --color-cream-dark: #E8E2D6;
  
  /* 强调色 - 胭脂红 */
  --color-accent: #C45C5C;
  
  /* 中性色 */
  --color-text-primary: #2C2C2C;
  --color-text-secondary: #6B6B6B;
  --color-text-muted: #9A9A9A;
  
  /* 边框与分割线 */
  --color-border: #E0DCD4;
  --color-divider: #F0EBE3;
  
  /* 功能色 */
  --color-success: #4A7C59;
  --color-warning: #D4A853;
  --color-error: #C45C5C;
}
```

### 3.3 字体系统

```css
/* 标题字体 - 日式精致感 */
--font-display: 'Noto Serif JP', 'Source Han Serif SC', Georgia, serif;

/* 正文字体 - 现代简洁 */
--font-body: 'DM Sans', -apple-system, BlinkMacSystemFont, sans-serif;

/* 字号系统 */
--text-xs: 0.75rem;      /* 12px */
--text-sm: 0.875rem;     /* 14px */
--text-base: 1rem;       /* 16px */
--text-lg: 1.125rem;     /* 18px */
--text-xl: 1.25rem;      /* 20px */
--text-2xl: 1.5rem;      /* 24px */
--text-3xl: 1.875rem;    /* 30px */
--text-4xl: 2.25rem;     /* 36px */
--text-5xl: 3rem;        /* 48px */
```

### 3.4 间距系统

```css
--space-1: 0.25rem;   /* 4px */
--space-2: 0.5rem;    /* 8px */
--space-3: 0.75rem;   /* 12px */
--space-4: 1rem;      /* 16px */
--space-5: 1.25rem;   /* 20px */
--space-6: 1.5rem;    /* 24px */
--space-8: 2rem;      /* 32px */
--space-10: 2.5rem;   /* 40px */
--space-12: 3rem;     /* 48px */
--space-16: 4rem;     /* 64px */
--space-20: 5rem;     /* 80px */
```

### 3.5 视觉效果

```css
/* 阴影 */
--shadow-sm: 0 1px 2px rgba(0, 0, 0, 0.05);
--shadow-md: 0 4px 6px rgba(0, 0, 0, 0.07);
--shadow-lg: 0 10px 15px rgba(0, 0, 0, 0.08);
--shadow-xl: 0 20px 25px rgba(0, 0, 0, 0.1);

/* 圆角 */
--radius-sm: 4px;
--radius-md: 8px;
--radius-lg: 12px;
--radius-xl: 16px;
--radius-full: 9999px;

/* 过渡 */
--transition-fast: 150ms ease;
--transition-base: 250ms ease;
--transition-slow: 400ms ease;
--transition-spring: 500ms cubic-bezier(0.34, 1.56, 0.64, 1);
```

---

## 4. 页面结构与功能

### 4.1 页面路由

```
/                       - 首页
/products               - 产品列表页
/products/:id           - 产品详情页
/cart                   - 购物车页
/checkout               - 结账页
/account                - 用户中心
/account/orders         - 订单列表
/account/orders/:id     - 订单详情
/account/address        - 地址管理
/login                  - 登录页
/register               - 注册页
/about                  - 关于我们
```

### 4.2 页面详细设计

#### 首页 (/)
- **Hero 区域**: 全屏展示，主视觉为抹茶饮品的精致图片，标题 "一期一会，静享抹茶"、副标题、CTA按钮
- **特色分类**: 4个主要产品分类入口（抹茶粉、抹茶器具、茶道配件、礼盒套装）
- **热销产品**: 6个热销商品展示
- **品牌故事**: 简短的品牌介绍
- **页脚**: 联系方式、社交媒体链接、版权信息

#### 产品列表页 (/products)
- **筛选侧边栏**: 分类筛选、价格区间、产地、等级
- **排序功能**: 价格、销量、新品、名称
- **商品网格**: 3列网格布局，每行显示3个商品卡片
- **分页**: 底部加载更多或分页器

#### 产品详情页 (/products/:id)
- **商品图片**: 左侧大图展示，右侧缩略图
- **商品信息**: 名称、价格、规格选择、产地、库存
- **加入购物车**: 数量选择、立即购买、加入购物车按钮
- **详情标签**: 商品详情、规格参数、用户评价

#### 购物车页 (/cart)
- **商品列表**: 商品图片、名称、规格、数量、价格
- **数量编辑**: 支持增删数量
- **价格汇总**: 小计、运费、总计
- **结算按钮**: 去结算

---

## 5. 组件设计规格

### 5.1 通用组件

#### Button (按钮)
- Primary: 抹茶绿背景，白色文字
- Secondary: 透明背景，抹茶绿边框和文字
- Ghost: 无边框，文字颜色
- 状态: hover (加深10%)、active (加深15%)、disabled (50%透明度)

#### Input (输入框)
- 边框: 1px solid var(--color-border)
- 圆角: var(--radius-md)
- 聚焦: 边框变为 var(--color-matcha-primary)，添加阴影

#### Card (卡片)
- 背景: var(--color-cream-light)
- 圆角: var(--radius-lg)
- 阴影: var(--shadow-md)
- 悬停: 轻微上浮 (translateY(-4px))，阴影加深

#### Badge (标签)
- 圆角: var(--radius-full)
- 小号: 12px 8px padding
- 颜色变体: primary, accent, muted

### 5.2 业务组件

#### ProductCard (商品卡片)
- 图片区域: 1:1 比例，带 subtle zoom 悬停效果
- 信息区域: 名称、价格、评分
- 快捷操作: 购物车图标按钮

#### Header (顶部导航)
- 固定顶部
- Logo 居左
- 导航链接居中
- 用户操作(登录/购物车)居右
- 滚动时添加底部阴影

#### Footer (页脚)
- 4列布局: 关于、导航、联系方式、社交媒体
- 底部版权信息

---

## 6. 动画规格

### 6.1 页面进入动画
- **Fade In Up**: 元素从下方淡入，延迟递增
- **Duration**: 600ms
- **Easing**: ease-out

### 6.2 微交互
- **按钮悬停**: scale(1.02)，200ms
- **卡片悬停**: translateY(-4px)，阴影加深，300ms
- **图片悬停**: scale(1.05)，400ms
- **图标按钮**: rotate 或 bounce 效果

### 6.3 页面切换
- **路由切换**: Fade，200ms

### 6.4 Loading 状态
- **骨架屏**: 渐变 shimmer 动画
- **加载指示器**: 简约的脉冲圆点

---

## 7. 响应式断点

```css
/* 移动优先 */
--breakpoint-sm: 640px;   /* 手机横屏 */
--breakpoint-md: 768px;   /* 平板 */
--breakpoint-lg: 1024px;  /* 小屏笔记本 */
--breakpoint-xl: 1280px;  /* 桌面 */
--breakpoint-2xl: 1536px; /* 大屏桌面 */
```

### 响应式策略
- **Mobile (< 768px)**: 单列布局，汉堡菜单
- **Tablet (768px - 1024px)**: 2列网格
- **Desktop (> 1024px)**: 完整布局，3-4列网格

---

## 8. 数据模型

### 商品 (Product)
```typescript
interface Product {
  id: string;
  name: string;
  nameEn: string;
  description: string;
  price: number;
  originalPrice?: number;
  images: string[];
  category: Category;
  tags: string[];
  stock: number;
  specifications: Record<string, string>;
  rating: number;
  reviewCount: number;
  salesCount: number;
}
```

### 分类 (Category)
```typescript
interface Category {
  id: string;
  name: string;
  slug: string;
  icon: string;
  description: string;
}
```

### 购物车项 (CartItem)
```typescript
interface CartItem {
  productId: string;
  quantity: number;
  specifications: Record<string, string>;
}
```

### 用户 (User)
```typescript
interface User {
  id: string;
  email: string;
  name: string;
  avatar?: string;
  phone?: string;
  addresses: Address[];
}
```

---

## 9. 项目目录结构

```
maccha-garden/
├── public/
│   └── favicon.svg
├── src/
│   ├── assets/
│   │   └── styles/
│   │       ├── main.css
│   │       ├── variables.css
│   │       └── animations.css
│   ├── components/
│   │   ├── common/
│   │   │   ├── Button.vue
│   │   │   ├── Card.vue
│   │   │   ├── Input.vue
│   │   │   ├── Badge.vue
│   │   │   ├── Skeleton.vue
│   │   │   └── Icon.vue
│   │   ├── layout/
│   │   │   ├── Header.vue
│   │   │   ├── Footer.vue
│   │   │   ├── Sidebar.vue
│   │   │   └── MobileMenu.vue
│   │   └── product/
│   │       ├── ProductCard.vue
│   │       ├── ProductGrid.vue
│   │       ├── ProductImage.vue
│   │       └── ProductInfo.vue
│   ├── composables/
│   │   ├── useCart.ts
│   │   ├── useUser.ts
│   │   └── useProducts.ts
│   ├── stores/
│   │   ├── cart.ts
│   │   ├── user.ts
│   │   └── products.ts
│   ├── views/
│   │   ├── HomeView.vue
│   │   ├── ProductsView.vue
│   │   ├── ProductDetailView.vue
│   │   ├── CartView.vue
│   │   ├── CheckoutView.vue
│   │   ├── AccountView.vue
│   │   ├── LoginView.vue
│   │   └── RegisterView.vue
│   ├── router/
│   │   └── index.ts
│   ├── data/
│   │   └── mock.ts
│   ├── types/
│   │   └── index.ts
│   ├── utils/
│   │   └── helpers.ts
│   ├── App.vue
│   └── main.ts
├── index.html
├── package.json
├── tsconfig.json
├── vite.config.ts
└── README.md
```

---

## 10. 开发计划

### Phase 1: 基础架构
- [ ] 初始化 Vue 3 + TypeScript 项目
- [ ] 配置 Vite 和开发环境
- [ ] 创建基础样式系统 (CSS Variables)
- [ ] 设置路由

### Phase 2: 通用组件
- [ ] Button 组件
- [ ] Input 组件
- [ ] Card 组件
- [ ] Header & Footer 布局组件

### Phase 3: 核心页面
- [ ] 首页 - Hero + 分类
- [ ] 产品列表页
- [ ] 产品详情页
- [ ] 购物车页

### Phase 4: 用户系统
- [ ] 登录/注册页面
- [ ] 用户中心
- [ ] 订单管理

### Phase 5: 优化
- [ ] 响应式适配
- [ ] 动画优化
- [ ] 性能优化

---

## 11. 验收标准

### 视觉验收
- [ ] 整体风格符合日式禅意美学
- [ ] 色彩系统一致
- [ ] 字体排版专业
- [ ] 动画流畅自然

### 功能验收
- [ ] 页面导航正常
- [ ] 产品浏览流畅
- [ ] 购物车功能完整
- [ ] 响应式布局正常

### 技术验收
- [ ] TypeScript 无错误
- [ ] 代码规范一致
- [ ] 性能指标良好

---

*文档版本: 1.0*
*创建时间: 2026-03-07*
