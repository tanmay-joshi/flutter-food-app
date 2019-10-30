import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:food_app/models/foodItem.dart';

class Model extends ChangeNotifier {
  final List<FoodItem> _foodItems = [
    FoodItem(name: "PBM", image: Colors.blueGrey, quantity: 0),
    FoodItem(name: "Butter Naam", image: Colors.deepOrange, quantity: 0)
  ];

  final List<FoodItem> _cartItems = [];

  UnmodifiableListView<FoodItem> get allFoodItems =>
      UnmodifiableListView(_foodItems);
  UnmodifiableListView<FoodItem> get allCartItems =>
      UnmodifiableListView(_cartItems);

  void addQuantity(FoodItem foodItem) {
    foodItem.quantity++;
    notifyListeners();
  }

  void minusQuantity(FoodItem foodItem) {
    foodItem.quantity == 0 ? _cartItems.remove(foodItem) : foodItem.quantity--;
    notifyListeners();
  }

  void addToCart(FoodItem foodItem, int quantity) {
    int index = _foodItems.indexWhere((item) => item.name == foodItem.name);
    print(" index $index");
    _foodItems[index].quantity = quantity;
    print(" quantity in list" + _foodItems[index].quantity.toString());
    if (_foodItems[index].quantity == 1) {
      _cartItems.add(_foodItems[index]);
    } else {
      int index2 = _cartItems.indexWhere((item) => item.name == foodItem.name);
      _cartItems[index2].quantity = quantity;
    }
  }

  void removeFromCart(FoodItem foodItem) {
    print(foodItem.name);
  }
}
