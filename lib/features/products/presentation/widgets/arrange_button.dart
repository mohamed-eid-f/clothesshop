import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArrangeButtonWidget extends StatefulWidget {
  final String title;
  final IconData? iconData;
  const ArrangeButtonWidget({
    super.key,
    required this.title,
    this.iconData = CupertinoIcons.chevron_down,
  });

  @override
  State<ArrangeButtonWidget> createState() => _ArrangeButtonWidgetState();
}

class _ArrangeButtonWidgetState extends State<ArrangeButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: Row(
        children: [
          Text(
            widget.title,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          Icon(
            widget.iconData,
            size: 18,
          ),
        ],
      ),
    );
  }
}
