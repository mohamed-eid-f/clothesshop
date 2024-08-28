import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entity/subcategory.dart';

abstract class SubCategoriesRepo {
  Future<Either<Failure, List<SubCategory>>> getAllSubCategories();
}
