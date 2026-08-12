# Maccha Garden

> A polished Vue 3 storefront demo for premium matcha products.

Maccha Garden is a front-end e-commerce showcase built around Japanese tea culture, product storytelling, and a calm shopping experience. It is designed as a portfolio-friendly Vue project: quick to run, easy to read, and visually complete enough for demos.

## Highlights

- Vue 3 + TypeScript + Vite single-page application
- Product catalog, detail view, cart flow, login and register screens
- Pinia state management for cart and product data
- Responsive layout with custom CSS variables
- Matcha-inspired visual system with reusable UI components

## Tech Stack

- Vue 3
- TypeScript
- Vite
- Vue Router
- Pinia
- Lucide Vue Next

## Quick Start

Install Node.js 20+ first. This repository does not commit `node_modules`, installer binaries, or build output.

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

## Naming

The repository can stay as `tea`, but the public-facing project name is now **Maccha Garden**. If you rename the GitHub repository later, good candidates are:

- `maccha-garden`
- `matcha-storefront`
- `vue-matcha-commerce`

## Dependency Policy

Generated and machine-specific files are intentionally ignored:

- `node_modules/`
- `dist/`
- local IDE folders
- OS metadata
- installer binaries such as `node-*.msi`

Recreate dependencies with `npm install`.

## License

MIT
