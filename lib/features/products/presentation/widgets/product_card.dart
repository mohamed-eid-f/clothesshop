import 'package:clothesshop/features/products/domain/entity/product.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
    required this.onTap,
  });
  final Product product;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // width: 200,
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: onTap,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 150,
                    width: 150,
                    child: Image.asset(
                      product.images[0],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      product.brand,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(width: 4),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 20,
                    ),
                    Text(
                      "4.8 [136]",
                      style: Theme.of(context).textTheme.bodyMedium,
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
                Row(
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
                ),
              ],
            ),
          ),
        ),
        PositionedDirectional(
          end: 8,
          top: 8,
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border,
                size: 30,
              )),
        ),
      ],
    );
  }
}
