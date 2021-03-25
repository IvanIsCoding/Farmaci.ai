/* main.dart - root file
 *
 * Currenty navigates to the login-screen by default.
 */

import 'package:atsclepius/globals.dart' as globals;
import 'package:flutter/material.dart';
import 'package:atsclepius/screenstates/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: globals.theme,
      title: 'Flutter Navigation',
      home: LoginStateful(),
    );
  }
}
