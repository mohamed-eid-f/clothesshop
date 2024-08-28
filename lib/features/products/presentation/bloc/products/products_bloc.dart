import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clothesshop/features/products/domain/usescases/products/get_all_products_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/errors/failure.dart';
import '../../../../../core/strings/failure_strings.dart';
import '../../../domain/entity/product.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final GetAllProductsUsecase getAllProductsUsecase;

  ProductsBloc({required this.getAllProductsUsecase})
      : super(ProductsLoadingState()) {
    on<ProductsEvent>((event, emit) async {
      // we use if condition to handle all events of type GetAllProducts
      if (event is GetAllProductsEvent) {
        emit(ProductsLoadingState());
        final either = await getAllProductsUsecase();
        emit(_getState(either));
      } else if (event is GetProductsByCategoryEvent) {
        emit(ProductsLoadingState());
        final either =
            await getAllProductsUsecase(categoryId: event.categoryId);
        emit(_getState(either));
      }
    });
  }
}

ProductsState _getState(Either<Failure, List<Product>> either) {
  return either.fold((failure) {
    return ProductsFailureState(getErrorMessage(failure));
  }, (data) {
    return ProductsSuccessState(data);
  });
}
