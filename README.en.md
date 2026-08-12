# Vue Frontend Learning Starter

> A Vue 3 practice project that helps beginners quickly learn frontend software development.

Vue Frontend Learning Starter is a complete beginner-friendly frontend project. It uses a matcha storefront as the example and connects common frontend skills in one place: pages, components, routing, state management, TypeScript types, styling, build scripts, and deployment.

If you are learning Vue, TypeScript, Vite, or frontend project structure, this repository is meant to be a gentle but practical starting point. The codebase is small enough to read and complete enough to modify with confidence.

## What You Can Learn

- Build a single-page app with Vue 3, TypeScript, and Vite.
- Organize pages with Vue Router.
- Manage cart state with Pinia.
- Create reusable components such as product cards.
- Define product, category, and cart types with TypeScript.
- Keep styles organized with a shared visual system.
- Run local development, type checking, production builds, and previews.

## Highlights

- Beginner-friendly structure.
- Complete demo flow: home, product list, product detail, cart, login, and register pages.
- Modern stack: Vue 3, TypeScript, Vite, Pinia, and Vue Router.
- Easy to extend with search, filters, checkout, favorites, or real APIs.
- Suitable for learning records, coursework, and portfolio demos.

## Tech Stack

- Vue 3
- TypeScript
- Vite
- Vue Router
- Pinia
- Lucide Vue

## Quick Start

Install Node.js 20 or later first.

```bash
npm install
npm run dev
```

Build and preview:

```bash
npm run build
npm run preview
```

## Scripts

```bash
npm run dev       # start local dev server
npm run build     # type-check and build production assets
npm run preview   # preview production build
npm run typecheck # run vue-tsc
```

## Project Structure

```text
vue-frontend-learning-starter/
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

## Practice Ideas

- Change the product theme to coffee, books, digital products, or game items.
- Add category filters, keyword search, and sorting.
- Improve the cart with quantity controls, coupons, shipping, and checkout.
- Replace static data with a real API.
- Deploy the app to GitHub Pages, Vercel, or Netlify.

## Deployment

Build static files:

```bash
npm run build
```

The output is written to `dist/` and can be uploaded to any static hosting service. This repository does not commit `node_modules/`, `dist/`, local IDE settings, or OS cache files. Run `npm install` after cloning to restore dependencies.

## A Note For Beginners

Frontend learning often feels like understanding each concept separately but not knowing how to put them together. This project gives you something you can run, read, break, fix, and reshape. Start small, keep experimenting, and the structure will become clearer with every change.

## Thanks

Thank you for visiting this project. It is made to help beginners take practical steps into frontend development. If it helps you, a Star, Fork, issue, or suggestion would mean a lot and will encourage me to create more beginner-friendly projects.

## License

MIT
