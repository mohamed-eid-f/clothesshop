import 'package:clothesshop/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

import '../../../domain/entity/subcategory.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/strings/failure_strings.dart';
import '../../../domain/usescases/subcategories/get_all_subcategories.dart';

part 'subcategories_event.dart';
part 'subcategories_state.dart';

class SubCategoriesBloc extends Bloc<SubCategoriesEvent, SubCategoriesState> {
  GetAllSubCategoriesUsecase getAllSubCategoriesUsecase;

  SubCategoriesBloc({required this.getAllSubCategoriesUsecase})
      : super(SubCategoriesLoadingState()) {
    on<SubCategoriesEvent>((event, emit) async {
      emit(SubCategoriesLoadingState());
      final either = await getAllSubCategoriesUsecase();
      emit(_getState(either));
    });
  }
}

SubCategoriesState _getState(Either<Failure, List<SubCategory>> either) {
  return either.fold((failure) {
    return SubCategoriesFailureState(getErrorMessage(failure));
  }, (data) {
    return SubCategoriesSuccessState(data);
  });
}
