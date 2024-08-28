import 'package:equatable/equatable.dart';

class Category extends Equatable {
  const Category({
    required this.id,
    required this.title,
    required this.image,
  });
  final String id;
  final String title;
  final String image;

  @override
  List<Object?> get props => [id, title, image];
}
