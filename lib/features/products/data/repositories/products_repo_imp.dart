import 'package:clothesshop/core/errors/failure.dart';
import 'package:clothesshop/core/network/internet_info.dart';
import 'package:clothesshop/features/products/data/datasources/products_remote_datasource.dart';

import 'package:clothesshop/features/products/domain/entity/product.dart';

import 'package:dartz/dartz.dart';

import '../../domain/repositories/products_repo.dart';

class ProductsRepoImp implements ProductsRepo {
  final ProductsRemoteDataSource remoteDataSource;
  final InternetInfo internetInfo;

  ProductsRepoImp({
    required this.remoteDataSource,
    required this.internetInfo,
  });

  @override
  Future<Either<Failure, List<Product>>> getAllProducts(
      {required String categoryId}) async {
    // get products from remote data source
    try {
      if (await internetInfo.isConnected) {
        final remoteProducts =
            await remoteDataSource.getAllProducts(categoryId: categoryId);
        return Right(remoteProducts);
      } else {
        //todo: get products from local data source

        return Left(NoDataFailure()); //! testing
      }
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
