import '../../domain/entity/product.dart';
import 'package:http/http.dart' as http;

import 'testing/testing_products.dart';

abstract class ProductsRemoteDataSource {
  Future<List<Product>> getAllProducts({required String categoryId});
}

const baseUrl = ""; // paste api url here

class ProductsRemoteDatasourceWithHttp implements ProductsRemoteDataSource {
  final http.Client client;

  ProductsRemoteDatasourceWithHttp({required this.client});

  @override
  Future<List<Product>> getAllProducts({required String categoryId}) async {
    return getProductsDummyData(categoryId: categoryId); //! TESTING

    // String productsUrl = "$baseUrl/products";
    // if (categoryId.isNotEmpty) {
    //   productsUrl = "$baseUrl/products?categoryId=$categoryId";
    // }
    // final response = await client.get(
    //   Uri.parse(productsUrl),
    //   headers: {
    //     "content-type": "application/json",
    //     "Authorization": "Bearer token" // paste your token here
    //   },
    // );
    // if (response.statusCode >= 200) {
    //   final List decodedJson = json.decode(response.body);
    //   List<ProductModel> productModels = decodedJson
    //       .map((jsonModel) => ProductModel.fromJson(jsonModel))
    //       .toList();
    //   return productModels;
    // } else {
    //   throw ServerException();
    // }
  }
}
