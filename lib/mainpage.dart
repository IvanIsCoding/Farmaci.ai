import 'globals.dart' as globals;
import 'package:flutter/material.dart';
import './homepage.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    String title = '';
    setState(() {
      title = globals.atSign;
    });
    return MaterialApp(
      title: globals.appName,
      home: MyHomePage(title: "Welcome back, " + title),
    );
  }
}
