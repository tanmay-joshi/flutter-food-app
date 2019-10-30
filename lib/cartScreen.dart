import 'package:flutter/material.dart';
import 'package:food_app/cartList.dart';
import 'package:provider/provider.dart';

import './models/model.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Home screen",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Food Ordering App"),
          ),
          body: Scaffold(
            body: Consumer<Model>(
              builder: (context, cartItems, child) =>
                  CartList(cartItems.allCartItems),
            ),
          ),
        ));
  }
}
