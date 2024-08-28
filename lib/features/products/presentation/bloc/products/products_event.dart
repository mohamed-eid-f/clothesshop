part of 'products_bloc.dart';

sealed class ProductsEvent extends Equatable {
  const ProductsEvent();

  @override
  List<Object> get props => [];
}

class GetAllProductsEvent extends ProductsEvent {}

class GetProductsByCategoryEvent extends ProductsEvent {
  final String categoryId;

  const GetProductsByCategoryEvent({required this.categoryId});

  @override
  List<Object> get props => [categoryId];
}
