import 'package:flutter/material.dart';

class CartIconWidget extends StatelessWidget {
  const CartIconWidget({
    super.key,
    required this.numItems,
  });
  final int numItems;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 16.0),
      child: Badge(
        backgroundColor: Colors.red,
        label: Text(numItems.toString()),
        child: InkWell(
          onTap: () {
            // Navigator.pushNamed(context, "cart_page");
          },
          child: const Icon(
            Icons.shopping_cart,
          ),
        ),
      ),
    );
  }
}
