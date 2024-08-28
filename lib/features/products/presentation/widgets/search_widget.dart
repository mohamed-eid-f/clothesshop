import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Men's Fashion",
        border: InputBorder.none,
        prefixIcon: const Icon(CupertinoIcons.search),
        fillColor: Colors.grey.shade300,
        filled: true,
      ),
    );
  }
}
