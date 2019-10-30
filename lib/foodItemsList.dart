import 'package:flutter/material.dart';
import 'package:food_app/foodItemCard.dart';
import 'package:food_app/models/foodItem.dart';

import './foodItemCard.dart';

class FoodItemsList extends StatelessWidget {
  final List<FoodItem> foodItemList;

  FoodItemsList(this.foodItemList);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: getChildren(),
    );
  }

  getChildren() {
    return foodItemList.map((item) => FoodItemCard(item)).toList();
  }
}
