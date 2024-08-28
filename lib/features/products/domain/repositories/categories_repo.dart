import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entity/category.dart';

abstract class CategoriesRepo {
  Future<Either<Failure, List<Category>>> getAllCategories();
  Future<Either<Failure, Category>> selectCategory(String categoryId);
}
