import 'package:clothesshop/features/products/domain/entity/subcategory.dart';

class SubCategoryModel extends SubCategory {
  const SubCategoryModel({
    required super.id,
    required super.title,
    required super.categoryId,
    required super.image,
  });

  factory SubCategoryModel.fromJson(Map<String, dynamic> json) =>
      SubCategoryModel(
        id: json['id'],
        title: json['title'],
        categoryId: json['categoryId'],
        image: json['image'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'categoryId': categoryId,
        'image': image,
      };
}
