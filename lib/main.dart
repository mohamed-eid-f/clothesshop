import 'package:clothesshop/features/products/presentation/bloc/products/products_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/theme/app_theme.dart';
import 'features/products/presentation/bloc/categories/categories_bloc.dart';
import 'features/products/presentation/bloc/subcategories/subcategories_bloc.dart';
import 'features/products/presentation/screens/navigation_page.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) => di.sl<ProductsBloc>()..add(GetAllProductsEvent())),
        BlocProvider(
            create: (_) =>
                di.sl<CategoriesBloc>()..add(GetAllCategoriesEvent())),
        BlocProvider(
            create: (_) =>
                di.sl<SubCategoriesBloc>()..add(GetAllSubCategories())),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: appThemeData,
        home: const NavigationPage(),
      ),
    );
  }
}
