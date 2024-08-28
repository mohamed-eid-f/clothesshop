import 'package:clothesshop/core/errors/failure.dart';
import 'package:clothesshop/core/network/internet_info.dart';

import 'package:dartz/dartz.dart';

import '../../domain/entity/subcategory.dart';
import '../../domain/repositories/subcategories_repo.dart';
import '../datasources/subcategories_remote_datasource.dart';

class SubCategoriesRepoImp implements SubCategoriesRepo {
  final SubCategoriesRemoteDataSource remoteDataSource;
  final InternetInfo internetInfo;

  SubCategoriesRepoImp({
    required this.remoteDataSource,
    required this.internetInfo,
  });

  @override
  Future<Either<Failure, List<SubCategory>>> getAllSubCategories() async {
    // get subcategories from remote data source
    try {
      if (await internetInfo.isConnected) {
        final remoteSubCategories =
            await remoteDataSource.getAllSubCategories();
        return Right(remoteSubCategories);
      } else {
        //todo: get subcategories from local data source

        return Left(NoDataFailure()); //! testing
      }
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
