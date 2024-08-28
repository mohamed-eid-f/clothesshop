import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failure.dart';
import '../../entity/category.dart';
import '../../repositories/categories_repo.dart';

class GetAllCategoriesUsecase {
  final CategoriesRepo repository;

  GetAllCategoriesUsecase({required this.repository});
  Future<Either<Failure, List<Category>>> call() async {
    return await repository.getAllCategories();
  }
}
