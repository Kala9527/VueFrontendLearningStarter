import type { Category, Product } from '@/types'

export const categories: Category[] = [
  {
    id: 'powder',
    name: 'Ceremonial powder',
    description: 'Stone-milled matcha for usucha, latte, and daily ritual.'
  },
  {
    id: 'tools',
    name: 'Tea tools',
    description: 'Whisks, bowls, scoops, and accessories for a clean setup.'
  },
  {
    id: 'gift',
    name: 'Gift sets',
    description: 'Curated boxes for new drinkers and thoughtful hosting.'
  }
]

export const products: Product[] = [
  {
    id: 'uji-sora',
    name: 'Uji Sora Ceremonial Matcha',
    origin: 'Uji, Kyoto',
    categoryId: 'powder',
    price: 36,
    rating: 4.9,
    reviewCount: 128,
    stock: 24,
    tags: ['Ceremonial', 'Stone-milled'],
    description: 'A bright first-harvest matcha with soft umami and a creamy finish.',
    flavor: 'Sweet grass, almond, steamed rice'
  },
  {
    id: 'nara-asa',
    name: 'Nara Asa Daily Matcha',
    origin: 'Nara',
    categoryId: 'powder',
    price: 22,
    rating: 4.7,
    reviewCount: 84,
    stock: 37,
    tags: ['Daily', 'Latte-ready'],
    description: 'A balanced everyday matcha that holds its color beautifully in milk.',
    flavor: 'Cacao nib, young greens, oat'
  },
  {
    id: 'bamboo-chasen',
    name: 'Bamboo Chasen Whisk',
    origin: 'Takayama',
    categoryId: 'tools',
    price: 18,
    rating: 4.8,
    reviewCount: 65,
    stock: 42,
    tags: ['Handmade', '100-tine'],
    description: 'A lightweight whisk shaped for fine foam and quick morning preparation.',
    flavor: 'Tool'
  },
  {
    id: 'starter-ritual',
    name: 'Starter Ritual Set',
    origin: 'Kyoto workshop',
    categoryId: 'gift',
    price: 68,
    rating: 4.9,
    reviewCount: 51,
    stock: 12,
    tags: ['Gift', 'Best seller'],
    description: 'A thoughtful set with matcha, bowl, scoop, and whisk for first rituals.',
    flavor: 'Complete set'
  },
  {
    id: 'hagi-chawan',
    name: 'Hagi Clay Chawan',
    origin: 'Yamaguchi',
    categoryId: 'tools',
    price: 46,
    rating: 4.6,
    reviewCount: 39,
    stock: 15,
    tags: ['Ceramic', 'Small batch'],
    description: 'A warm clay bowl with generous depth for whisking and slow sipping.',
    flavor: 'Tool'
  },
  {
    id: 'seasonal-host',
    name: 'Seasonal Host Box',
    origin: 'Japan',
    categoryId: 'gift',
    price: 92,
    rating: 5,
    reviewCount: 23,
    stock: 8,
    tags: ['Limited', 'Hosting'],
    description: 'A limited box for sharing matcha flights at a dinner table or studio.',
    flavor: 'Three tea profiles'
  }
]
