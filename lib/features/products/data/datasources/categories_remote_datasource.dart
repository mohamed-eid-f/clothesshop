import 'package:clothesshop/features/products/data/datasources/testing/testing_categories.dart';

import '../../domain/entity/category.dart';
import 'package:http/http.dart' as http;

abstract class CategoriesRemoteDataSource {
  Future<List<Category>> getAllCategories();
  Future<Category> selectCategory({required String categoryId});
}

const baseUrl = ""; // paste api url here

class CategoriesRemoteDatasourceWithHttp implements CategoriesRemoteDataSource {
  final http.Client client;

  CategoriesRemoteDatasourceWithHttp({required this.client});

  @override
  Future<List<Category>> getAllCategories() async {
    return getCategoriesDummyData(); //! TESTING

    // final response = await client.get(Uri.parse("$baseUrl/categories"), headers: {
    //   "content-type": "application/json",
    //   "Authorization": "Bearer token" // paste your token here
    // });
    // if (response.statusCode >= 200) {
    //   final List decodedJson = json.decode(response.body);
    //   List<CategoryModel> categoryModels = decodedJson
    //       .map((jsonModel) => CategoryModel.fromJson(jsonModel))
    //       .toList();
    //   return categoryModels;
    // } else {
    //   throw ServerException();
    // }
  }

  @override
  Future<Category> selectCategory({required String categoryId}) async {
    return selectCategoryDummyData(categoryId: categoryId); //! TESTING

    // final response = await client.get(Uri.parse("$baseUrl/categories"), headers: {
    //   "content-type": "application/json",
    //   "Authorization": "Bearer token" // paste your token here
    // });
    // if (response.statusCode >= 200) {
    //   final List decodedJson = json.decode(response.body);
    //   List<CategoryModel> categoryModels = decodedJson
    //       .map((jsonModel) => CategoryModel.fromJson(jsonModel))
    //       .toList();
    //   return categoryModels;
    // } else {
    //   throw ServerException();
    // }
  }
}
