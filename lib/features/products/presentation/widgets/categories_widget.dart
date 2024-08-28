import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entity/category.dart';
import '../bloc/categories/categories_bloc.dart';
import 'package:flutter/material.dart';

import '../bloc/products/products_bloc.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<CategoriesBloc, CategoriesState>(
        builder: (context, state) {
          if (state is CategoriesSuccessState) {
            List<Category> availableCategories = state.categories;

            return ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    context.read<ProductsBloc>().add(GetProductsByCategoryEvent(
                        categoryId: availableCategories[index].id));
                  },
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                          availableCategories[index].image,
                        ),
                      ),
                      Text(
                        availableCategories[index].title,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(width: 16),
              itemCount: availableCategories.length,
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
