import 'package:clothesshop/features/products/domain/entity/product.dart';
import 'package:clothesshop/features/products/presentation/screens/product_details_page.dart';
import 'package:clothesshop/features/products/presentation/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/products/products_bloc.dart';

class ForYouWidget extends StatelessWidget {
  const ForYouWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: BlocBuilder<ProductsBloc, ProductsState>(
        builder: (context, state) {
          if (state is ProductsSuccessState) {
            List<Product> availableProducts = state.products;
            return ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Product product = availableProducts[index];
                return ProductCard(
                  product: product,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => ProductDetailsPage(product: product),
                      ),
                    );
                  },
                );
              },
              separatorBuilder: (context, index) => const SizedBox(width: 16),
              itemCount: availableProducts.length,
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
