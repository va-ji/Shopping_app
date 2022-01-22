import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widgets.dart';
import '../providers/providers.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;
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
        return ProductItem(
          id: products[idx].id,
          title: products[idx].title,
          imageUrl: products[idx].imageUrl,
        );
      },
    );
  }
}
