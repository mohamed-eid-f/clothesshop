import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entity/product.dart';

abstract class ProductsRepo {
  Future<Either<Failure, List<Product>>> getAllProducts(
      {required String categoryId});
}
