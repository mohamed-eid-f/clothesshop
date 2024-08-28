import 'package:flutter/material.dart';

class AppTitleWidget extends StatelessWidget {
  const AppTitleWidget({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(title, style: Theme.of(context).textTheme.displayMedium),
          const Spacer(),
          TextButton(
            style: TextButton.styleFrom(
              shape: const RoundedRectangleBorder(
                // borderRadius: BorderRadius.all(Radius.circular(16)),
                side: BorderSide.none,
              ),
            ),
            onPressed: () {},
            child: Text(
              "See All",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Colors.black54,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
