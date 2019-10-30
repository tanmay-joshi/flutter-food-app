import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './models/model.dart';

import './cartScreen.dart';
import './homeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        builder: (context) => Model(),
        child: MaterialApp(
          initialRoute: "/",
          routes: {
            '/': (context) => HomeScreen(),
            '/cart': (context) => CartScreen(),
          },
        ));
  }
}
