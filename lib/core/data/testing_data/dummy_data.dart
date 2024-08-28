import '../../../features/products/domain/entity/category.dart';
import '../../../features/products/domain/entity/product.dart';
import '../../../features/products/domain/entity/subcategory.dart';

const availableCategories = [
  Category(
    id: 'w',
    title: 'Women',
    image: 'assets/images/women_category.jpeg',
  ),
  Category(
    id: 'm',
    title: 'Men',
    image: 'assets/images/men_category.jpeg',
  ),
  Category(
    id: 't',
    title: 'Teen',
    image: 'assets/images/teen_category.jpeg',
  ),
  Category(
    id: 'k',
    title: 'Kids',
    image: 'assets/images/kids_category.jpeg',
  ),
  Category(
    id: 'b',
    title: 'Babies',
    image: 'assets/images/babies_category.jpeg',
  ),
];

const availableProducts = [
  Product(
    categories: ['m'],
    id: 'p1',
    title: 'Shirt',
    brand: 'H & M',
    price: 550.00,
    priceAfterDiscount: 295.00,
    images: [
      'assets/images/black_shirt_01.jpeg',
      'assets/images/green_shirt_01.jpeg',
      'assets/images/orange_shirt_01.jpeg',
    ],
    description:
        '''Elevate your casual wardrobe with our Loose Fit Shirt, Crafted from Premium Cotton for maximum comfort. this relaxed-fit tee features''',
    sizes: ['S', 'M', 'L', 'XL'],
    colors: ['black', 'green', 'orange'],
  ),
  Product(
    categories: ['m'],
    id: 'p2',
    brand: 'adidas',
    title: 'Shirt',
    price: 187.00,
    images: [
      'assets/images/shirt_02.jpeg',
      'assets/images/shirt_02.jpeg',
    ],
    description:
        '''Elevate your casual wardrobe with our Loose Fit Shirt, Crafted from Premium Cotton for maximum comfort. this relaxed-fit tee features''',
    sizes: ['S', 'M', 'L', 'XL'],
    colors: ['black', 'red', 'white'],
  ),
  Product(
    categories: ['m'],
    id: 'p3',
    brand: 'POLO',
    title: 'Shirt',
    price: 255.00,
    priceAfterDiscount: 205.00,
    images: [
      'assets/images/shirt_03.jpg',
      'assets/images/shirt_03.jpg',
    ],
    description:
        '''Elevate your casual wardrobe with our Loose Fit Shirt, Crafted from Premium Cotton for maximum comfort. this relaxed-fit tee features''',
    sizes: ['S', 'M', 'L', 'XL'],
    colors: ['black', 'red'],
  ),
  Product(
    categories: ['w'],
    id: 'p4',
    brand: 'H & M',
    title: 'Fit Dress',
    price: 312.00,
    images: [
      'assets/images/green_dress_04.jpeg',
      'assets/images/red_dress_04.jpeg',
    ],
    description:
        '''Elevate your casual wardrobe with our Loose Fit Shirt, Crafted from Premium Cotton for maximum comfort. this relaxed-fit tee features''',
    sizes: ['S', 'M', 'L'],
    colors: ['green', 'red'],
  ),
  Product(
    categories: ['w'],
    id: 'p5',
    brand: 'DDD',
    title: 'A-line Dress',
    price: 312.00,
    images: [
      'assets/images/orange_dress_05.jpeg',
      'assets/images/black_dress_05.jpeg',
    ],
    sizes: ['S', 'M', 'L'],
    colors: ['orange', 'black'],
    description:
        '''Elevate your casual wardrobe with our Loose Fit Shirt, Crafted from Premium Cotton for maximum comfort. this relaxed-fit tee features''',
  ),
  Product(
    categories: ['t'],
    id: 'p6',
    brand: 'H & M',
    title: 'Hooded Sweet Shirt ',
    price: 312.00,
    priceAfterDiscount: 206.50,
    images: [
      'assets/images/black_sweet_06.jpeg',
      'assets/images/black_sweet_06.jpeg',
    ],
    sizes: ['S', 'M', 'L'],
    colors: ['white', 'black'],
    description:
        '''Elevate your casual wardrobe with our Loose Fit Shirt, Crafted from Premium Cotton for maximum comfort. this relaxed-fit tee features''',
  ),
  Product(
    categories: ['t'],
    id: 'p7',
    brand: 'HC',
    title: 'Hooded Sweet Shirt ',
    price: 312.00,
    priceAfterDiscount: 206.50,
    images: [
      'assets/images/black_sweet_07.jpeg',
      'assets/images/black_sweet_07.jpeg',
    ],
    sizes: ['S', 'M', 'L'],
    colors: ['white', 'black'],
    description:
        '''Elevate your casual wardrobe with our Loose Fit Shirt, Crafted from Premium Cotton for maximum comfort. this relaxed-fit tee features''',
  ),
  Product(
    categories: ['k'],
    id: 'p8',
    brand: 'K.L.',
    title: 'Nice Sweet Dress ',
    price: 112.00,
    images: [
      'assets/images/black_dress_08.jpeg',
      'assets/images/black_dress_08.jpeg',
    ],
    sizes: ['S', 'M', 'L'],
    colors: ['white', 'black'],
    description:
        '''Elevate your casual wardrobe with our Loose Fit Shirt, Crafted from Premium Cotton for maximum comfort. this relaxed-fit tee features''',
  ),
  Product(
    categories: ['k'],
    id: 'p9',
    brand: 'vestina',
    title: 'Kids dress',
    price: 112.00,
    images: [
      'assets/images/blue_dress_09.jpeg',
      'assets/images/blue_dress_09.jpeg',
    ],
    sizes: ['S', 'M', 'L'],
    colors: ['blue', 'black'],
    description:
        '''Elevate your casual wardrobe with our Loose Fit Shirt, Crafted from Premium Cotton for maximum comfort. this relaxed-fit tee features''',
  ),
  Product(
    categories: ['b'],
    id: 'p10',
    brand: 'UnderTwo',
    title: 'Hooded Sweet Shirt ',
    price: 102.00,
    images: [
      'assets/images/red_dress_10.jpeg',
      'assets/images/yellow_dress_10.jpeg',
    ],
    sizes: ['2XS', 'XS', 'S'],
    colors: ['yellow', 'red'],
    description:
        '''Elevate your casual wardrobe with our Loose Fit Shirt, Crafted from Premium Cotton for maximum comfort. this relaxed-fit tee features''',
  ),
];

const availableSubCategories = [
  SubCategory(
    id: 'm-1',
    categoryId: 'm',
    title: 'Bags',
    image: 'assets/images/bags-m-subcategory.jpeg',
  ),
  SubCategory(
    id: 'm-2',
    categoryId: 'm',
    title: 'Wallets',
    image: 'assets/images/wallets-m-subcategory.jpeg',
  ),
  SubCategory(
    id: 'm-3',
    categoryId: 'm',
    title: 'Footwear',
    image: 'assets/images/shoes-m-subcategory.jpeg',
  ),
  SubCategory(
    id: 'm-4',
    categoryId: 'm',
    title: 'Clothes',
    image: 'assets/images/clothes-m-subcategory.jpeg',
  ),
  SubCategory(
    id: 'm-5',
    categoryId: 'm',
    title: 'Watches',
    image: 'assets/images/watches-m-subcategory.jpeg',
  ),
];
