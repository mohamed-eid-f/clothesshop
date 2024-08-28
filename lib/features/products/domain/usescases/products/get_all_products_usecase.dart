import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failure.dart';
import '../../entity/product.dart';
import '../../repositories/products_repo.dart';

class GetAllProductsUsecase {
  final ProductsRepo repository;
  final String categoryId;

  GetAllProductsUsecase({required this.repository, this.categoryId = ""});
  Future<Either<Failure, List<Product>>> call({categoryId = ""}) async {
    return await repository.getAllProducts(categoryId: categoryId);
  }
}
