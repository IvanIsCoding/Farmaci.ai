import 'package:flutter/material.dart';
//import './mainpage.dart';
import './login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation',
      home: LoginStateful(),
    );
  }
}
