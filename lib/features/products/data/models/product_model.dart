import 'package:clothesshop/features/products/domain/entity/product.dart';

class ProductModel extends Product {
  const ProductModel({
    required super.id,
    required super.categories,
    required super.title,
    required super.brand,
    required super.description,
    required super.price,
    required super.images,
    required super.colors,
    required super.sizes,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json['id'],
        categories: json['categories'],
        title: json['title'],
        brand: json['brand'],
        description: json['description'],
        price: json['price'],
        images: json['images'],
        colors: json['colors'],
        sizes: json['sizes'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'categories': categories,
        'title': title,
        'brand': brand,
        'description': description,
        'price': price,
        'images': images,
        'colors': colors,
        'sizes': sizes,
      };
}
