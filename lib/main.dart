import 'package:flutter/material.dart';

import './screens/screens.dart';
import './providers/providers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Products()),
        ChangeNotifierProvider(create: (context) => Cart()),
        ChangeNotifierProvider(create: (contect) => Orders()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.purple,
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
                .copyWith(secondary: Colors.deepOrange),
            fontFamily: 'Lato',
            primaryTextTheme:
                const TextTheme(bodyText1: TextStyle(color: Colors.white))),
        home: const ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.route: (context) => const ProductDetailScreen(),
          CartScreen.route: (context) => const CartScreen(),
          OrdersScreen.route: (context) => const OrdersScreen(),
          UserProductsScreen.route: (context) => const UserProductsScreen(),
        },
      ),
    );
  }
}
