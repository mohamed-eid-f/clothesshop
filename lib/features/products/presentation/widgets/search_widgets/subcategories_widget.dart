import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entity/subcategory.dart';
import '../../bloc/subcategories/subcategories_bloc.dart';
import 'package:flutter/material.dart';

class SubCategoriesWidget extends StatelessWidget {
  const SubCategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<SubCategoriesBloc, SubCategoriesState>(
        builder: (context, state) {
          if (state is SubCategoriesSuccessState) {
            List<SubCategory> availableSubCategories = state.subCategories;
            return ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        availableSubCategories[index].image,
                      ),
                    ),
                    Text(
                      availableSubCategories[index].title,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) => const SizedBox(width: 16),
              itemCount: availableSubCategories.length,
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
