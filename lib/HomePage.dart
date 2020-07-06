import 'package:flutter/material.dart';
import 'package:my_app/Cart_header.dart';
import 'package:my_app/EmptyCart.dart';
import 'package:my_app/cart_screen.dart';
import 'ShopPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.redAccent,
          title: Text('ShopApp'),
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
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen()));
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CartHeader()));
              },
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Manu Singh'),
                accountEmail: Text('manu.singh8437@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: BoxDecoration(color: Colors.redAccent),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Home'),
                  leading: Icon(
                    Icons.home,
                    color: Colors.redAccent,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('My Account'),
                  leading: Icon(
                    Icons.person,
                    color: Colors.redAccent,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('My Order'),
                  leading: Icon(
                    Icons.shopping_basket,
                    color: Colors.redAccent,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Favourites'),
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.redAccent,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Setting'),
                  leading: Icon(
                    Icons.settings,
                    color: Colors.redAccent,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('About'),
                  leading: Icon(
                    Icons.help_outline,
                    color: Colors.redAccent,
                  ),
                ),
              )
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Container(
                color: Colors.blue,
                alignment: Alignment.topCenter,
                child: Text(
                  "SHOPS",
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              //shop body
              child: Container(
                // height: 400.0, 
                child: ShopPage()),
            ),
          ],
        ));
  }
}
