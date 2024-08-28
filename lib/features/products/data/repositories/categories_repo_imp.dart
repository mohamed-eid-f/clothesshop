import 'package:clothesshop/core/errors/failure.dart';
import 'package:clothesshop/core/network/internet_info.dart';

import 'package:dartz/dartz.dart';

import '../../domain/entity/category.dart';
import '../../domain/repositories/categories_repo.dart';
import '../datasources/categories_remote_datasource.dart';

class CategoriesRepoImp implements CategoriesRepo {
  final CategoriesRemoteDataSource remoteDataSource;
  final InternetInfo internetInfo;

  CategoriesRepoImp({
    required this.remoteDataSource,
    required this.internetInfo,
  });

  @override
  Future<Either<Failure, List<Category>>> getAllCategories() async {
    // get all categories from remote data source
    try {
      if (await internetInfo.isConnected) {
        final remoteCategories = await remoteDataSource.getAllCategories();
        return Right(remoteCategories);
      } else {
        //todo: get categories from local data source

        return Left(NoDataFailure()); //! testing
      }
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Category>> selectCategory(String categoryId) async {
    // get all categories from remote data source
    try {
      if (await internetInfo.isConnected) {
        final remoteCategories =
            await remoteDataSource.selectCategory(categoryId: categoryId);
        return Right(remoteCategories);
      } else {
        //todo: get categories from local data source

        return Left(NoDataFailure()); //! testing
      }
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
