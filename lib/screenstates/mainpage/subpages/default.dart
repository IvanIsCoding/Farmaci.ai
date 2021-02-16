/* default.dart - subpage of mainpage.dart
 *
 * INCOMPLETE
 * 
 * The default subpage of mainpage.dart. Currently displays a
 * welcome message, but has no further functionality. May be replaced
 * with alerts.dart in the future.
 */

import 'package:atsclepius/globals.dart' as globals;
import 'package:flutter/material.dart';
import 'package:atsclepius/screenstates/mainpage/mainpage.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    String title = '';
    setState(() {
      title = globals.name;
    });
    return Text("Welcome back, " + title);
  }
}
