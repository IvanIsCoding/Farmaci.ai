import 'globals.dart' as globals;
import 'package:flutter/material.dart';
//import './mainpage.dart';
import './login.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation',
      home: LoginStateful(),
    );
  }
}
