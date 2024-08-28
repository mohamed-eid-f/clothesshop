import 'package:flutter/material.dart';
import '../widgets/app_title_widget.dart';
import '../widgets/cart_icon_widget.dart';
import '../widgets/categories_widget.dart';
import '../widgets/for_you_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset('assets/images/app_logo.jpeg', height: 64, width: 64),
            const Spacer(),
            const CartIconWidget(numItems: 3),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/images/home_banner.jpeg"),
            const AppTitleWidget(title: "Shop by category"),
            const CategoriesWidget(),
            const AppTitleWidget(title: "Curated for you"),
            const ForYouWidget(),
          ],
        ),
      ),
    );
  }
}
