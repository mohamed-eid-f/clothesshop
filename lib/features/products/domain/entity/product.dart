import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String id;

  final List<String> categories;
  final String title;
  final String brand;
  final String description;
  final double price;
  final double? priceAfterDiscount;
  final List<String> images;
  final bool isFavorite;
  final List<String> colors;
  final List<String> sizes;

  const Product({
    required this.id,
    required this.categories,
    required this.title,
    required this.brand,
    required this.description,
    required this.price,
    this.priceAfterDiscount,
    required this.images,
    this.isFavorite = false,
    required this.colors,
    required this.sizes,
  });

  @override
  List<Object?> get props => [
        id,
        categories,
        title,
        brand,
        description,
        price,
        priceAfterDiscount,
        images,
        isFavorite,
        colors,
        sizes
      ];
}
