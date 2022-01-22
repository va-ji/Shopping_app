import 'package:flutter/material.dart';

import '../providers/providers.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);
  static const route = '/productDetailScreen';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    Provider.of<Products>(context)
        .items
        .firstWhere((product) => product.id == productId);
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
