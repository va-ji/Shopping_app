import 'package:flutter/material.dart';
import 'package:shopping_app/screens/product_detail_screen.dart';

import '../models/models.dart';
import '../screens/screens.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key? key,
    required this.id,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);
  final String id;
  final String title;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .pushNamed(ProductDetailScreen.route, arguments: id);
        },
        child: GridTile(
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black87,
            title: Text(
              title,
              textAlign: TextAlign.center,
            ),
            leading: IconButton(
              icon: const Icon(
                Icons.favorite_rounded,
              ),
              color: Theme.of(context).colorScheme.secondary,
              onPressed: () {},
            ),
            trailing: IconButton(
              icon: const Icon(Icons.shopping_cart_rounded),
              color: Theme.of(context).colorScheme.secondary,
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
