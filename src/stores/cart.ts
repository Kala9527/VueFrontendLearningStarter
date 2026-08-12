import { computed, ref } from 'vue'
import { defineStore } from 'pinia'
import { products } from '@/data/products'

export const useCartStore = defineStore('cart', () => {
  const items = ref<Record<string, number>>({})

  const lines = computed(() =>
    Object.entries(items.value)
      .map(([productId, quantity]) => ({
        product: products.find((product) => product.id === productId),
        quantity
      }))
      .filter((line) => line.product)
  )

  const count = computed(() =>
    Object.values(items.value).reduce((total, quantity) => total + quantity, 0)
  )

  const subtotal = computed(() =>
    lines.value.reduce((total, line) => total + (line.product?.price ?? 0) * line.quantity, 0)
  )

  function add(productId: string) {
    items.value[productId] = (items.value[productId] ?? 0) + 1
  }

  function setQuantity(productId: string, quantity: number) {
    if (quantity <= 0) {
      delete items.value[productId]
      return
    }

    items.value[productId] = quantity
  }

  return { items, lines, count, subtotal, add, setQuantity }
})
