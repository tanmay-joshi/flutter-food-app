import 'package:flutter/material.dart';
import './models/model.dart';
import './models/foodItem.dart';
import 'package:provider/provider.dart';

class AddToCartButton extends StatefulWidget {
  final FoodItem foodItem;
  AddToCartButton(FoodItem foodItem) : foodItem = foodItem;

  @override
  _AddtoCartButton createState() => _AddtoCartButton(foodItem);
}

class _AddtoCartButton extends State<AddToCartButton> {
  final FoodItem foodItem;
  _AddtoCartButton(FoodItem foodItem) : foodItem = foodItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          child: FlatButton(
            padding: EdgeInsets.all(0),
            child: Text("+"),
            onPressed: () {
              Provider.of<Model>(context).addQuantity(foodItem);
              Provider.of<Model>(context)
                  .addToCart(foodItem, foodItem.quantity);
              print(foodItem.quantity);
            },
          ),
        ),
        Consumer<Model>(
            builder: (context, item, child) =>
                Container(child: Text(foodItem.quantity.toString()))),
        Container(
          child: FlatButton(
            child: Text("-"),
            onPressed: () {
              Provider.of<Model>(context).minusQuantity(foodItem);
              print(foodItem.quantity);
            },
          ),
        ),
      ],
    );
  }
}
