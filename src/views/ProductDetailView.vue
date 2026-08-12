<script setup lang="ts">
import { computed } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import { ArrowLeft, ShoppingBag, Star } from '@lucide/vue'
import { products } from '@/data/products'
import { useCartStore } from '@/stores/cart'

const route = useRoute()
const router = useRouter()
const cart = useCartStore()

const product = computed(() => products.find((item) => item.id === route.params.id))
</script>

<template>
  <section v-if="product" class="detail-layout">
    <button class="text-button" type="button" @click="router.back()">
      <ArrowLeft :size="17" /> Back
    </button>

    <div class="detail-art">
      <span class="powder" />
    </div>

    <article class="detail-copy">
      <p class="eyebrow">{{ product.origin }}</p>
      <h1>{{ product.name }}</h1>
      <p>{{ product.description }}</p>

      <div class="detail-stats">
        <span><Star :size="16" fill="currentColor" /> {{ product.rating }} / {{ product.reviewCount }} reviews</span>
        <span>{{ product.stock }} in stock</span>
      </div>

      <dl>
        <div>
          <dt>Flavor</dt>
          <dd>{{ product.flavor }}</dd>
        </div>
        <div>
          <dt>Tags</dt>
          <dd>{{ product.tags.join(', ') }}</dd>
        </div>
      </dl>

      <div class="purchase-row">
        <strong>${{ product.price }}</strong>
        <button class="button primary" type="button" @click="cart.add(product.id)">
          <ShoppingBag :size="18" /> Add to cart
        </button>
      </div>
    </article>
  </section>

  <section v-else class="page-header">
    <h1>Product not found</h1>
    <RouterLink class="button primary" to="/products">Return to catalog</RouterLink>
  </section>
</template>
