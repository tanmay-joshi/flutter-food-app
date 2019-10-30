import 'package:flutter/cupertino.dart';

class FoodItem {
  String name;
  String type;
  Color image;
  int quantity = 0;

  FoodItem({this.image, this.name, this.type, this.quantity});
}
