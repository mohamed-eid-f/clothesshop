import 'package:flutter/material.dart';

class ColorPickerWidget extends StatefulWidget {
  const ColorPickerWidget({super.key, required this.colors});
  final List<String> colors;

  @override
  State<ColorPickerWidget> createState() => _ColorPickerWidgetState();
}

class _ColorPickerWidgetState extends State<ColorPickerWidget> {
  String selectedColor = "";
  @override
  Widget build(BuildContext context) {
    double radius = 12;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Color",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        Row(
          children: [
            for (var color in widget.colors)
              InkWell(
                onTap: () {
                  setState(() {
                    selectedColor = color;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CircleAvatar(
                    radius: radius,
                    backgroundColor: selectedColor == color
                        ? Colors.black
                        : Colors.transparent,
                    child: CircleAvatar(
                      radius: radius - 2,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: radius - 3,
                        backgroundColor: getColor(color),
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

  Color getColor(String color) {
    switch (color) {
      case "red":
        return (Colors.red);
      case "green":
        return (Colors.green);
      case "blue":
        return (Colors.blue);
      case "yellow":
        return (Colors.yellow);
      case "purple":
        return (Colors.purple);
      case "orange":
        return (Colors.orange);
      case "pink":
        return (Colors.pink);
      case "brown":
        return (Colors.brown);
      case "black":
        return (Colors.black);
      case "white":
        return (Colors.white);
      default:
        return (Colors.black);
    }
  }
}
