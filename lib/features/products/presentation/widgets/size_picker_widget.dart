import 'package:flutter/material.dart';

class SizePickerWidget extends StatefulWidget {
  const SizePickerWidget({super.key, required this.sizes});
  final List<String> sizes;

  @override
  State<SizePickerWidget> createState() => _SizePickerWidgetState();
}

class _SizePickerWidgetState extends State<SizePickerWidget> {
  String selectedSize = "";
  double radius = 12;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Size",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        Row(
          children: [
            for (var size in widget.sizes)
              InkWell(
                onTap: () {
                  setState(() {
                    selectedSize = size;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CircleAvatar(
                    radius: radius,
                    backgroundColor: selectedSize == size
                        ? Colors.black
                        : Colors.transparent,
                    child: CircleAvatar(
                      radius: radius - 2,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 12,
                        child: Text(size),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
