import 'package:equatable/equatable.dart';

class SubCategory extends Equatable {
  const SubCategory({
    required this.id,
    required this.title,
    required this.categoryId,
    required this.image,
  });
  final String id;
  final String title;
  final String categoryId;
  final String image;

  @override
  List<Object?> get props => [id, title, categoryId, image];
}
