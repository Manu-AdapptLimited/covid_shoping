import 'package:flutter/material.dart';
import 'package:my_app/Model/Products.dart';
import 'package:my_app/cart_screen.dart';
import 'package:provider/provider.dart';
import 'HomePage.dart';
import 'Model/Cart.dart';
void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider.value(
        value:Products()
      ),
      ChangeNotifierProvider.value(
        value:Cart()
      )
    ],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      title: 'ShopApp',
      home: HomePage(),
      // routes: {
      //   CartScreen.routeName:(ctx)=>CartScreen(),
      // },
    ),
  ));
}

