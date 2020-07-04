import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './Model/Cart.dart';

class CartPdt extends StatelessWidget {
  final String id;
  final String productid;
  final double price;
  final int quantity;
  final String name;
  final image;

  CartPdt(
    this.id,
    this.image,
    this.name,
    this.price,
    this.productid,
    this.quantity,
  );
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      direction: DismissDirection.horizontal,
      background: Container(
        color: Colors.red,
      ),
      onDismissed: (direction) {
        Provider.of<Cart>(context, listen: false).removeItem(productid);
      },
      child: Card(
        child: ListTile(
            leading: Image.asset(image),
            title: Text(
              name,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 20.0,
              ),
            ),
            subtitle: Text('Total: \$${(price * quantity)}'),
            trailing: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Text('$quantity x'),
                  IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        Provider.of<Cart>(context, listen: false)
                            .removeSingleItem(productid);

                      },
                      color:Colors.red
                      ),
                ],
              ),
            )),
      ),
    );
  }
}
