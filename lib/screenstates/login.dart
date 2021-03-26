/* login.dart - screenstate
 * 
 * Login page which authenticates with @Company API
 * 
 * TO-DO:
 * -This is based on a boiler-plate. It should likely be completely rebuilt, 
 * but the very least, the username-field should be removed. @Company doesn't need
 * a username and password.
 * 
 * -The login image needs to be replaced. It's outdated, and improperly sized.
 */

import 'package:atsclepius/globals.dart' as globals;
import 'package:flutter/material.dart';
import 'package:atsclepius/screenstates/mainpage/mainpage.dart';

/* Login Boilerplate Credit to https://morioh.com/p/0c57f60b9571 */

class LoginStateful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: globals.primBgdColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 120.0),
              child: Center(
                child: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
                        left:
                            BorderSide(width: 1.0, color: Color(0xFFFF000000)),
                        right:
                            BorderSide(width: 1.0, color: Color(0xFFFF000000)),
                        bottom:
                            BorderSide(width: 1.0, color: Color(0xFFFF000000)),
                      ),
                    ),
                    width: 380,
                    height: 190,
                    child: Image.asset('asset/images/logo.png')),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: globals.primColor)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: globals.primColor)),
                    labelText: '@sign',
                    labelStyle: TextStyle(
                      color: globals.primColor,
                      fontSize: 22,
                    ),
                    hintText: 'Please enter your @sign login.'),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                    color: globals.primColor,
                    borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => MainPage()));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
