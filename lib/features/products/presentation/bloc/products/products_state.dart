part of 'products_bloc.dart';

sealed class ProductsState extends Equatable {
  const ProductsState();

  @override
  List<Object> get props => [];
}

final class ProductsLoadingState extends ProductsState {}

final class ProductsSuccessState extends ProductsState {
  final List<Product> products;

  const ProductsSuccessState(this.products);

  @override
  List<Object> get props => [products];
}

final class ProductsFailureState extends ProductsState {
  final String message;

  const ProductsFailureState(this.message);

  @override
  List<Object> get props => [message];
}

final class ProductsChangeCategoryState extends ProductsState {
  final String categoryId;

  const ProductsChangeCategoryState(this.categoryId);

  @override
  List<Object> get props => [categoryId];
}
