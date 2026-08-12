<script setup lang="ts">
import { ArrowRight, PackageCheck, ShieldCheck, Sparkles } from '@lucide/vue'
import ProductCard from '@/components/ProductCard.vue'
import { categories, products } from '@/data/products'
import { useCartStore } from '@/stores/cart'

const cart = useCartStore()
const featured = products.slice(0, 3)
</script>

<template>
  <section class="hero">
    <div class="hero-copy">
      <p class="eyebrow">Small-batch tea commerce demo</p>
      <h1>Maccha Garden</h1>
      <p>
        A calm Vue storefront for premium matcha, tea tools, and gifting rituals.
      </p>
      <div class="hero-actions">
        <RouterLink class="button primary" to="/products">
          Shop products <ArrowRight :size="18" />
        </RouterLink>
        <RouterLink class="button secondary" to="/cart">View cart</RouterLink>
      </div>
    </div>

    <div class="hero-product" aria-label="Featured matcha visual">
      <div class="tin">
        <span>Uji Sora</span>
      </div>
      <div class="bowl" />
      <div class="scoop" />
    </div>
  </section>

  <section class="trust-strip">
    <div><Sparkles :size="20" /> Curated product storytelling</div>
    <div><PackageCheck :size="20" /> Cart-ready commerce flow</div>
    <div><ShieldCheck :size="20" /> Clean dependency policy</div>
  </section>

  <section class="section">
    <div class="section-heading">
      <p class="eyebrow">Browse by ritual</p>
      <h2>Focused categories</h2>
    </div>
    <div class="category-grid">
      <article v-for="category in categories" :key="category.id" class="category-card">
        <h3>{{ category.name }}</h3>
        <p>{{ category.description }}</p>
      </article>
    </div>
  </section>

  <section class="section">
    <div class="section-heading">
      <p class="eyebrow">Best sellers</p>
      <h2>Ready for the first pour</h2>
    </div>
    <div class="product-grid">
      <ProductCard
        v-for="product in featured"
        :key="product.id"
        :product="product"
        @add="cart.add"
      />
    </div>
  </section>
</template>
