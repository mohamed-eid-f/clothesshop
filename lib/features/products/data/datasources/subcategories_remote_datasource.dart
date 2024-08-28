import 'package:clothesshop/features/products/data/datasources/testing/testing_subcategories.dart';
import 'package:clothesshop/features/products/domain/entity/subcategory.dart';
import 'package:http/http.dart' as http;

abstract class SubCategoriesRemoteDataSource {
  Future<List<SubCategory>> getAllSubCategories();
}

const baseUrl = ""; // paste api url here

class SubCategoriesRemoteDatasourceWithHttp
    implements SubCategoriesRemoteDataSource {
  final http.Client client;

  SubCategoriesRemoteDatasourceWithHttp({required this.client});

  @override
  Future<List<SubCategory>> getAllSubCategories() async {
    return getSubCategoriesDummyData(); //! TESTING
    // final response = await client.get(Uri.parse("$baseUrl/categories"), headers: {
    //   "content-type": "application/json",
    //   "Authorization": "Bearer token" // paste your token here
    // });
    // if (response.statusCode >= 200) {
    //   final List decodedJson = json.decode(response.body);
    //   List<CategoryModel> subcategoryModels = decodedJson
    //       .map((jsonModel) => CategoryModel.fromJson(jsonModel))
    //       .toList();
    //   return subcategoryModels;
    // } else {
    //   throw ServerException();
    // }
  }
}
