import 'package:flutter/material.dart';
import 'package:my_app/cart_screen.dart';
import 'AllProduct.dart';

class ShopItem extends StatefulWidget {
  final shop_item_name;

  ShopItem({
    this.shop_item_name,
  });
  @override
  _ShopItemState createState() => _ShopItemState();
}

class _ShopItemState extends State<ShopItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.redAccent,
        title: InkWell(onTap: () {}, child: Text(widget.shop_item_name)),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CartScreen()));
            },
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          // Container(
          //   color: Colors.redAccent,
          //   alignment: Alignment.topCenter,
          //   height: 35.0,
          //   child: Text(
          //     widget.shop_item_name,
          //     style: TextStyle(fontSize: 25.0, color: Colors.white),
          //   ),
          // ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Container(
              // height: 400.0,
              child: AllProduct(),
            ),
          )
        ],
      ),
    );
  }
}
