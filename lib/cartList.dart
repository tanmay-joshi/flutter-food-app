import 'package:flutter/material.dart';
import 'package:food_app/foodItemCard.dart';
import 'package:food_app/models/foodItem.dart';
import 'package:provider/provider.dart';

import './models/model.dart';
import './models/foodItem.dart';

class CartList extends StatelessWidget {
  final List<FoodItem> cartList;

  CartList(this.cartList);

  @override
  Widget build(BuildContext context) {
    return Consumer<Model>(
        builder: (context, item, child) => ListView(
              children: getChildren(),
            ));
  }

  getChildren() {
    return cartList.map((item) => FoodItemCard(item)).toList();
  }
}
