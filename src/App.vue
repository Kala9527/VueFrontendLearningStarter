<script setup lang="ts">
import { Leaf, ShoppingBag, User } from '@lucide/vue'
import { RouterLink, RouterView } from 'vue-router'
import { useCartStore } from '@/stores/cart'

const cart = useCartStore()
</script>

<template>
  <header class="site-header">
    <RouterLink class="brand" to="/" aria-label="Maccha Garden home">
      <span class="brand-mark"><Leaf :size="18" /></span>
      <span>
        <strong>Maccha Garden</strong>
        <small>Premium matcha storefront</small>
      </span>
    </RouterLink>

    <nav class="nav-links" aria-label="Primary navigation">
      <RouterLink to="/">Home</RouterLink>
      <RouterLink to="/products">Products</RouterLink>
      <RouterLink to="/cart">Cart</RouterLink>
    </nav>

    <div class="header-actions">
      <RouterLink class="icon-link" to="/login" aria-label="Sign in">
        <User :size="18" />
      </RouterLink>
      <RouterLink class="cart-link" to="/cart" aria-label="Shopping cart">
        <ShoppingBag :size="18" />
        <span>{{ cart.count }}</span>
      </RouterLink>
    </div>
  </header>

  <main>
    <RouterView />
  </main>
</template>
