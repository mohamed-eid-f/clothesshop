import 'package:clothesshop/features/products/presentation/widgets/arrange_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SortingWidget extends StatelessWidget {
  const SortingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(16.0),
        children: const [
          ArrangeButtonWidget(title: "Filter", iconData: Icons.sort),
          ArrangeButtonWidget(title: "Ratings"),
          ArrangeButtonWidget(title: "Size"),
          ArrangeButtonWidget(title: "Color"),
          ArrangeButtonWidget(title: "Price"),
        ],
      ),
    );
  }
}
