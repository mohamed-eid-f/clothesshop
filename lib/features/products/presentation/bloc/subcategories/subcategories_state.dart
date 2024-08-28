part of 'subcategories_bloc.dart';

sealed class SubCategoriesState extends Equatable {
  const SubCategoriesState();

  @override
  List<Object> get props => [];
}

final class SubCategoriesLoadingState extends SubCategoriesState {}

final class SubCategoriesSuccessState extends SubCategoriesState {
  final List<SubCategory> subCategories;

  const SubCategoriesSuccessState(this.subCategories);

  @override
  List<Object> get props => [subCategories];
}

final class SubCategoriesFailureState extends SubCategoriesState {
  final String message;

  const SubCategoriesFailureState(this.message);

  @override
  List<Object> get props => [message];
}
