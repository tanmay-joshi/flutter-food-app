import 'package:flutter/material.dart';
import './foodItemsList.dart';
import './models/model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home screen",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Food Ordering App"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.pushNamed(context, '/cart');
              },
            )
          ],
        ),
        body: Consumer<Model>(
          builder: (context, foodItems, child) =>
              FoodItemsList(foodItems.allFoodItems),
        ),
      ),
    );
  }
}
