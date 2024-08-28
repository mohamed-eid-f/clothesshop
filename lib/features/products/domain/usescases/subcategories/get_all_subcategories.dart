import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failure.dart';
import '../../entity/subcategory.dart';
import '../../repositories/subcategories_repo.dart';

class GetAllSubCategoriesUsecase {
  final SubCategoriesRepo repository;

  GetAllSubCategoriesUsecase({required this.repository});
  Future<Either<Failure, List<SubCategory>>> call() async {
    return await repository.getAllSubCategories();
  }
}
