/* main.dart - root file
 *
 * Currenty navigates to the login-screen by default.
 */

import 'package:atsclepius/globals.dart' as globals;
import 'package:flutter/material.dart';
import 'package:atsclepius/screenstates/login.dart';
import 'package:atsclepius/screenstates/mainpage/subpages/patients/patientDetails.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
    '/patientDetails': (context) => PatientDetails(),
  },
      theme: globals.theme,
      title: 'Flutter Navigation',
      home: LoginStateful(),
    );
  }
}
