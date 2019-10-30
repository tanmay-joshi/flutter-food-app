import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './models/model.dart';
import './models/foodItem.dart';
import './addToCartButton.dart';

class FoodItemCard extends StatelessWidget {
  final FoodItem foodItem;

  FoodItemCard(this.foodItem);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(children: <Widget>[
      Container(
        color: foodItem.image,
        height: 64,
        width: 64,
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.all(16),
      ),
      Container(
        child: Text(
          foodItem.name,
          style: TextStyle(fontSize: 18),
        ),
      ),
      Container(
        child: Text(foodItem.quantity.toString()),
      ),
      Container(
        child: AddToCartButton(foodItem),
      )
    ]));
  }
}
