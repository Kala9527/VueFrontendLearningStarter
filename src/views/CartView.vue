<script setup lang="ts">
import { Minus, Plus, ShoppingBag } from '@lucide/vue'
import { useCartStore } from '@/stores/cart'

const cart = useCartStore()
</script>

<template>
  <section class="page-header">
    <p class="eyebrow">Cart</p>
    <h1>Your matcha ritual</h1>
    <p>Quantities update through a compact Pinia store.</p>
  </section>

  <section v-if="cart.lines.length" class="cart-layout">
    <div class="cart-lines">
      <article v-for="line in cart.lines" :key="line.product?.id" class="cart-line">
        <div class="line-art" />
        <div>
          <h3>{{ line.product?.name }}</h3>
          <p>{{ line.product?.origin }}</p>
        </div>
        <div class="quantity-control">
          <button type="button" @click="cart.setQuantity(line.product!.id, line.quantity - 1)">
            <Minus :size="16" />
          </button>
          <span>{{ line.quantity }}</span>
          <button type="button" @click="cart.setQuantity(line.product!.id, line.quantity + 1)">
            <Plus :size="16" />
          </button>
        </div>
        <strong>${{ ((line.product?.price ?? 0) * line.quantity).toFixed(2) }}</strong>
      </article>
    </div>

    <aside class="summary-panel">
      <h2>Order summary</h2>
      <div><span>Subtotal</span><strong>${{ cart.subtotal.toFixed(2) }}</strong></div>
      <div><span>Shipping</span><strong>$8.00</strong></div>
      <div class="total"><span>Total</span><strong>${{ (cart.subtotal + 8).toFixed(2) }}</strong></div>
      <button class="button primary" type="button">Checkout demo</button>
    </aside>
  </section>

  <section v-else class="empty-state">
    <ShoppingBag :size="42" />
    <h2>Your cart is quiet</h2>
    <RouterLink class="button primary" to="/products">Browse products</RouterLink>
  </section>
</template>
