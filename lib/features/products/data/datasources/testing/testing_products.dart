// this file for testing purposes only
// DUMMY DATA

import '../../../../../core/data/testing_data/dummy_data.dart';
import '../../../domain/entity/product.dart';

Future<List<Product>> getProductsDummyData({categoryId}) async {
  await Future.delayed(const Duration(milliseconds: 300));
  List<Product> categoryProducts;
  if (categoryId.isEmpty) {
    categoryProducts = availableProducts;
  } else {
    categoryProducts = availableProducts
        // .where((product) => product.categories.contains("k")) //! TESTING
        .where((product) => product.categories.contains(categoryId))
        .toList();
  }
  return Future.value(categoryProducts);
}

// Future<List<Product>> getProductsByCategoryDummyData(
//     {required String categoryId}) async {
//   await Future.delayed(const Duration(milliseconds: 300));
//   List<Product> categoryProducts = availableProducts
//       .where((product) => product.categories.contains(categoryId))
//       .toList();
//   return Future.value(categoryProducts);
// }
