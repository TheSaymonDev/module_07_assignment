import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  CartPage({Key? key, required this.count}) : super(key: key);

  int count;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cart'),
      ),
      body: Center(
        child: Text('You bought ${count} items', style: Theme.of(context).textTheme.bodyMedium,),
      ),
    );
  }
}
