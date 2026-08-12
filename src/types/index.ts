export interface Category {
  id: string
  name: string
  description: string
}

export interface Product {
  id: string
  name: string
  origin: string
  categoryId: string
  price: number
  rating: number
  reviewCount: number
  stock: number
  tags: string[]
  description: string
  flavor: string
}
