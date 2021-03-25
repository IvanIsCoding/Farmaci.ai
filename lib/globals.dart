/* globals.dart
 *
 * Holds global variables for purposes of prototyping/demonstration
 * 
 * This is a bad thing. This whole file is a bad thing. But we need it for now.
 */

library my_prj.globals;
import 'package:flutter/material.dart';

String name = 'John Doe';
String appName = "Health.loop";
int friendCount = 0;
Color primColor = Colors.orange;
Color altColor;
Color primBgdColor = Colors.white;
Color altBgdColor;

ThemeData theme = ThemeData(
    // Define the default brightness and colors.
    brightness: Brightness.dark,
    primaryColor: Colors.orange,
    accentColor: Colors.green,
    backgroundColor: Colors.black,

    // Define the default font family.
    fontFamily: 'Georgia',

    // Define the default TextTheme. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    ),
  );
