import 'package:clothesshop/features/products/domain/entity/product.dart';
import 'package:flutter/material.dart';

class ProductPriceWidget extends StatelessWidget {
  const ProductPriceWidget({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          product.priceAfterDiscount == null
              ? "\$${product.price}"
              : "\$${product.priceAfterDiscount}",
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                color: product.priceAfterDiscount == null
                    ? Colors.black
                    : Colors.red,
              ),
        ),
        const SizedBox(width: 8),
        if (product.priceAfterDiscount != null)
          Text(
            "\$${product.price}",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  decoration: TextDecoration.lineThrough,
                  color: Colors.grey,
                ),
          ),
      ],
    );
  }
}
