import 'package:flutter/material.dart';

import '../../domain/entity/product.dart';
import '../widgets/cart_icon_widget.dart';
import '../widgets/color_picker_widget.dart';
import '../widgets/image_slider_widget.dart';
import '../widgets/product_price_widget.dart';
import '../widgets/size_picker_widget.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Product'),
        actions: const [
          CartIconWidget(numItems: 3),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageSliderWidget(product: product),
            Row(
              children: [
                Text(
                  product.brand,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(width: 8),
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 20,
                ),
                Text(
                  "4.8 (136 reviews)",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border,
                    size: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              product.title,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(height: 4),
            ProductPriceWidget(product: product),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                product.description,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: ColorPickerWidget(colors: product.colors),
                ),
                Expanded(
                  child: SizePickerWidget(sizes: product.sizes),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: TextButton.icon(
                    icon: const Icon(
                      Icons.shopping_cart,
                      size: 20,
                    ),
                    label: const Text("ADD TO CART"),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("BUY NOW"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
