<script setup lang="ts">
import { computed, ref } from 'vue'
import ProductCard from '@/components/ProductCard.vue'
import { categories, products } from '@/data/products'
import { useCartStore } from '@/stores/cart'

const cart = useCartStore()
const selectedCategory = ref('all')

const visibleProducts = computed(() =>
  selectedCategory.value === 'all'
    ? products
    : products.filter((product) => product.categoryId === selectedCategory.value)
)
</script>

<template>
  <section class="page-header">
    <p class="eyebrow">Catalog</p>
    <h1>Matcha, tools, and gift sets</h1>
    <p>Filter the small catalog and add items to a persistent Pinia cart.</p>
  </section>

  <section class="catalog-toolbar" aria-label="Product filters">
    <button
      type="button"
      :class="{ active: selectedCategory === 'all' }"
      @click="selectedCategory = 'all'"
    >
      All
    </button>
    <button
      v-for="category in categories"
      :key="category.id"
      type="button"
      :class="{ active: selectedCategory === category.id }"
      @click="selectedCategory = category.id"
    >
      {{ category.name }}
    </button>
  </section>

  <section class="product-grid section-tight">
    <ProductCard
      v-for="product in visibleProducts"
      :key="product.id"
      :product="product"
      @add="cart.add"
    />
  </section>
</template>
