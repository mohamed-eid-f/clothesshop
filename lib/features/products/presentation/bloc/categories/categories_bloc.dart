import 'package:clothesshop/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clothesshop/features/products/domain/usescases/categories/get_all_categories_usecase.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/strings/failure_strings.dart';
import '../../../domain/entity/category.dart';

part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  GetAllCategoriesUsecase getAllCategoriesUsecase;

  CategoriesBloc({
    required this.getAllCategoriesUsecase,
  }) : super(CategoriesLoadingState()) {
    on<CategoriesEvent>((event, emit) async {
      if (event is GetAllCategoriesEvent) {
        emit(CategoriesLoadingState());
        final either = await getAllCategoriesUsecase();
        emit(_getState(either));
      }
    });
  }
}

CategoriesState _getState(Either<Failure, List<Category>> either) {
  return either.fold((failure) {
    return CategoriesFailureState(getErrorMessage(failure));
  }, (data) {
    return CategoriesSuccessState(data);
  });
}
