import 'package:flutter/material.dart';

import 'widgets.dart';
import '../providers/providers.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({Key? key, this.showFavs}) : super(key: key);
  // ignore: prefer_typing_uninitialized_variables
  final bool? showFavs;

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products =
        showFavs! ? productsData.favoriteItems : productsData.items;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, idx) {
        return ChangeNotifierProvider.value(
          value: products[idx],
          child: ProductItem(),
        );
      },
    );
  }
}
