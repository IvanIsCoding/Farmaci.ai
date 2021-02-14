import 'globals.dart' as globals;
import 'package:flutter/material.dart';
import './homepage.dart';

class MainPage extends StatelessWidget {
  final appTitle = 'Hi, ' + globals.name;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}
