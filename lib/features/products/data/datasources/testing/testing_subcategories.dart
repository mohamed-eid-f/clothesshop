// this file for testing purposes only
// DUMMY DATA

import '../../../../../core/data/testing_data/dummy_data.dart';
import '../../../domain/entity/subcategory.dart';

Future<List<SubCategory>> getSubCategoriesDummyData() async {
  await Future.delayed(const Duration(milliseconds: 300));
  return Future.value(availableSubCategories);
}
