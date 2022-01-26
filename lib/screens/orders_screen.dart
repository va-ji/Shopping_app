import 'package:flutter/material.dart';

import '../providers/providers.dart' show Orders;
import 'package:provider/provider.dart';
import '../widgets/widgets.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);
  static const route = 'orders';

  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Orders'),
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
        itemCount: orderData.orders.length,
        itemBuilder: (context, idx) => OrderItem(
          order: orderData.orders[idx],
        ),
      ),
    );
  }
}
