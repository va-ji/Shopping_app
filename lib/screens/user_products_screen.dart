import 'package:flutter/material.dart';
import 'package:shopping_app/screens/edit_product_screen.dart';

import '../providers/providers.dart';
import '../widgets/widgets.dart';

class UserProductsScreen extends StatelessWidget {
  const UserProductsScreen({Key? key}) : super(key: key);
  static const route = '/userProducts';
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your products'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(EditProductScreen.route);
            },
          )
        ],
      ),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: productsData.items.length,
          itemBuilder: (context, idx) => Column(children: [
            UserProductItem(
                id: productsData.items[idx].id!,
                imageurl: productsData.items[idx].imageUrl,
                title: productsData.items[idx].title),
            const Divider(
              color: Colors.transparent,
            ),
          ]),
        ),
      ),
    );
  }
}
