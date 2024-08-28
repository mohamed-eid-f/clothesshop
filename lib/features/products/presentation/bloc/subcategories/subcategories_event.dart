part of 'subcategories_bloc.dart';

sealed class SubCategoriesEvent extends Equatable {
  const SubCategoriesEvent();

  @override
  List<Object> get props => [];
}

class GetAllSubCategories extends SubCategoriesEvent {}
