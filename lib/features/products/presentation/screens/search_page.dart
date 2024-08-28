import 'package:clothesshop/core/data/testing_data/dummy_data.dart';
import 'package:clothesshop/features/products/presentation/widgets/product_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../domain/entity/product.dart';
import '../widgets/search_widget.dart';
import '../widgets/search_widgets/sorting_widget.dart';
import '../widgets/search_widgets/subcategories_widget.dart';
import 'navigation_page.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> menProducts = availableProducts
        .where((product) => product.categories.contains('m'))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            BackButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (_) => const NavigationPage(index: 0),
                  ),
                );
              },
            ),
            const Expanded(child: SearchWidget()),
          ],
        ),
      ),
      body: Column(
        children: [
          const SortingWidget(),
          const SubCategoriesWidget(),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 3 / 4,
              children: [
                for (var i = 0; i < menProducts.length; i++)
                  ProductCard(product: menProducts[i], onTap: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
