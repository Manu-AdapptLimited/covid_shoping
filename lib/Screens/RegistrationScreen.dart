import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  final _emailController=TextEditingController();
  final _passController=TextEditingController();
  final _nameController=TextEditingController();
  final _imageController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
              child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(32),
            child: Form(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Registration",
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.all(Radius.circular(15.0))),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.greenAccent),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      // prefixIcon: Icon(
                      //   Icons.email,
                      //   size: 30.0,
                      // ),
                      hintText: "Email",
                      filled: true,
                      fillColor: Colors.grey[200]),
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: _passController,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.all(Radius.circular(15.0))),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.greenAccent),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      // prefixIcon: Icon(
                      //   Icons.enhanced_encryption,
                      //   size: 30.0,
                      // ),
                      hintText: "Password",
                      filled: true,
                      fillColor: Colors.grey[200]),
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.all(Radius.circular(15.0))),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.greenAccent),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      // prefixIcon: Icon(
                      //   Icons.person,
                      //   size: 30.0,
                      // ),
                      hintText: "Display Name",
                      filled: true,
                      fillColor: Colors.grey[200]),
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: _imageController,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.all(Radius.circular(15.0))),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.greenAccent),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      // prefixIcon: Icon(
                      //   Icons.photo,
                      //   size: 30.0,
                      // ),
                      hintText: "Photo URL",
                      filled: true,
                      fillColor: Colors.grey[200]),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: double.infinity,
                  child: FlatButton(
                    onPressed: () {},
                    child: Text("Register"),
                    textColor: Colors.white,
                    padding: EdgeInsets.all(16.0),
                    color: Colors.blue,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                )
              ],
            )),
          ),
        ),
      ),
    );
  }
}
