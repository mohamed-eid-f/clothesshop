part of 'categories_bloc.dart';

sealed class CategoriesState extends Equatable {
  const CategoriesState();

  @override
  List<Object> get props => [];
}

final class CategoriesLoadingState extends CategoriesState {}

final class CategoriesSuccessState extends CategoriesState {
  final List<Category> categories;

  const CategoriesSuccessState(this.categories);

  @override
  List<Object> get props => [categories];
}

final class CategoriesFailureState extends CategoriesState {
  final String message;

  const CategoriesFailureState(this.message);

  @override
  List<Object> get props => [message];
}
