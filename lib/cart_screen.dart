import 'package:flutter/material.dart';
import 'package:my_app/Model/Cart.dart';
import 'package:my_app/cart_item.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  // static const routeName = '/Cart';
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                itemCount: cart.items.length,
                itemBuilder: (ctx, i) => CartPdt(
                      cart.items.values.toList()[i].id,
                      cart.items.values.toList()[i].image,
                      cart.items.values.toList()[i].name,
                      cart.items.values.toList()[i].price,
                      cart.items.keys.toList()[i],
                      cart.items.values.toList()[i].quantity,
                    )),
          ),
          FlatButton(
              color: Colors.redAccent,
              onPressed: () {},
              child: Text(
                "Chechout",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ))
        ],
      ),
    );
  }
}
