# Maccha Garden Product Spec

## Positioning

Maccha Garden is a portfolio-ready matcha storefront demo. The goal is to show a polished commerce flow with a calm Japanese tea aesthetic, clear product hierarchy, and clean Vue project organization.

## Target Users

- Front-end recruiters reviewing Vue and TypeScript ability
- Developers looking for a compact commerce starter
- Designers evaluating responsive storefront patterns
- Matcha or lifestyle brand demos

## Core Screens

- Home: brand introduction, feature categories, best-selling products
- Products: filterable product catalog and product cards
- Product detail: product story, price, stock, rating, add-to-cart action
- Cart: quantity management and order summary
- Login/Register: visual account entry screens for route completeness

## Technical Stack

- Vue 3 Composition API
- TypeScript
- Vite
- Vue Router
- Pinia
- Lucide Vue Next
- Custom CSS variables

## Visual Direction

- Matcha green, rice paper, charcoal, and muted coral accents
- Dense enough to feel like a real shop, quiet enough to scan
- Product imagery represented with CSS art gradients to avoid external assets
- Cards use restrained 8px radius and subtle shadows

## Repository Rules

Do not commit generated dependencies or build artifacts.

- Install dependencies with `npm install`
- Build output lives in `dist/`
- Runtime dependencies live in `node_modules/`
- Local environment files stay outside Git

## Future Improvements

- Add unit tests for cart store behavior
- Add product image assets or CMS-backed content
- Add checkout mock flow
- Add GitHub Pages deployment workflow
- Add accessibility audit with keyboard focus snapshots
