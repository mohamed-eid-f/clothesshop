import 'package:clothesshop/features/products/domain/entity/category.dart';

class CategoryModel extends Category {
  const CategoryModel({
    required super.id,
    required super.title,
    required super.image,
  });
  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        id: json['id'],
        title: json['title'],
        image: json['image'],
      );
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'image': image,
      };
}
