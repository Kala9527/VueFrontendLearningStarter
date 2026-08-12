<script setup lang="ts">
import { ShoppingBag, Star } from '@lucide/vue'
import type { Product } from '@/types'

defineProps<{
  product: Product
}>()

const emit = defineEmits<{
  add: [productId: string]
}>()
</script>

<template>
  <article class="product-card">
    <RouterLink class="product-art" :to="`/products/${product.id}`" :aria-label="product.name">
      <span class="powder" />
    </RouterLink>

    <div class="product-copy">
      <div>
        <p class="eyebrow">{{ product.origin }}</p>
        <RouterLink class="product-title" :to="`/products/${product.id}`">
          {{ product.name }}
        </RouterLink>
      </div>

      <p>{{ product.description }}</p>

      <div class="tag-row">
        <span v-for="tag in product.tags" :key="tag">{{ tag }}</span>
      </div>

      <footer class="product-meta">
        <span class="rating"><Star :size="15" fill="currentColor" /> {{ product.rating }}</span>
        <strong>${{ product.price }}</strong>
        <button class="icon-button" type="button" @click="emit('add', product.id)" aria-label="Add to cart">
          <ShoppingBag :size="17" />
        </button>
      </footer>
    </div>
  </article>
</template>
