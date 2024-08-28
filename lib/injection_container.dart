import 'package:clothesshop/features/products/data/repositories/products_repo_imp.dart';
import 'package:clothesshop/features/products/domain/repositories/products_repo.dart';
import 'package:clothesshop/features/products/domain/usescases/products/get_all_products_usecase.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'core/network/internet_info.dart';
import 'features/products/data/datasources/categories_remote_datasource.dart';
import 'features/products/data/datasources/products_remote_datasource.dart';
import 'features/products/data/datasources/subcategories_remote_datasource.dart';
import 'features/products/data/repositories/categories_repo_imp.dart';
import 'features/products/data/repositories/subcategories_repo_imp.dart';
import 'features/products/domain/repositories/categories_repo.dart';
import 'features/products/domain/repositories/subcategories_repo.dart';
import 'features/products/domain/usescases/categories/get_all_categories_usecase.dart';
import 'features/products/domain/usescases/subcategories/get_all_subcategories.dart';
import 'features/products/presentation/bloc/categories/categories_bloc.dart';
import 'features/products/presentation/bloc/products/products_bloc.dart';
import 'features/products/presentation/bloc/subcategories/subcategories_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
//! FEATURE: products
// bloc
  sl.registerFactory(
    () => ProductsBloc(getAllProductsUsecase: sl()),
  );
  sl.registerFactory(
    () => CategoriesBloc(getAllCategoriesUsecase: sl()),
  );
  sl.registerFactory(
    () => SubCategoriesBloc(getAllSubCategoriesUsecase: sl()),
  );

// usecase
  sl.registerLazySingleton(() => GetAllProductsUsecase(repository: sl()));
  sl.registerLazySingleton(() => GetAllCategoriesUsecase(repository: sl()));
  sl.registerLazySingleton(() => GetAllSubCategoriesUsecase(repository: sl()));

// repository
  sl.registerLazySingleton<ProductsRepo>(
    () => ProductsRepoImp(
      remoteDataSource: sl(),
      internetInfo: sl(),
    ),
  );
  sl.registerLazySingleton<CategoriesRepo>(
    () => CategoriesRepoImp(
      remoteDataSource: sl(),
      internetInfo: sl(),
    ),
  );
  sl.registerLazySingleton<SubCategoriesRepo>(
    () => SubCategoriesRepoImp(
      remoteDataSource: sl(),
      internetInfo: sl(),
    ),
  );

// datasource
  sl.registerLazySingleton<ProductsRemoteDataSource>(
      () => ProductsRemoteDatasourceWithHttp(client: sl()));
  sl.registerLazySingleton<CategoriesRemoteDataSource>(
      () => CategoriesRemoteDatasourceWithHttp(client: sl()));
  sl.registerLazySingleton<SubCategoriesRemoteDataSource>(
      () => SubCategoriesRemoteDatasourceWithHttp(client: sl()));

  //! CORE
  sl.registerLazySingleton<InternetInfo>(
      () => InternetInfoImp(connectionChecker: sl()));

  //! EXTERNAL
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
