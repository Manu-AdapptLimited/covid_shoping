import 'package:flutter/material.dart';
import 'package:my_app/Model/Products.dart';
import 'package:provider/provider.dart';
import './Model/Cart.dart';

class PdtItem extends StatelessWidget {
  final String name;
  final String image;

  PdtItem({
    this.image,
    this.name,
  });
  @override
  Widget build(BuildContext context) {
    final pdt = Provider.of<Product>(context);
    final cart = Provider.of<Cart>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridTile(
        child: Image.asset(image),
        footer: GridTileBar(
          title: Text(
            name,
            style: TextStyle(color: Colors.white),
          ),
          trailing: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                cart.addItem(pdt.id, pdt.name, pdt.price, pdt.img);
              }),
              backgroundColor: Colors.black54,
        ),
      ),
    );
  }
}
