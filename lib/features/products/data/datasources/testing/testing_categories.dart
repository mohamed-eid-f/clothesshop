// this file for testing purposes only
// DUMMY DATA

import '../../../../../core/data/testing_data/dummy_data.dart';
import '../../../domain/entity/category.dart';

Future<List<Category>> getCategoriesDummyData() async {
  await Future.delayed(const Duration(milliseconds: 300));
  return Future.value(availableCategories);
}

Future<Category> selectCategoryDummyData({required String categoryId}) async {
  await Future.delayed(const Duration(milliseconds: 300));
  Category selectedCategory =
      availableCategories.firstWhere((category) => category.id == categoryId);

  return Future.value(selectedCategory);
}
