import 'package:flutter/cupertino.dart';
import 'package:atsclepius/globals.dart' as globals;
import 'package:flutter/material.dart';
import 'package:atsclepius/screenstates/mainpage/subpages/appointments.dart';
import 'package:atsclepius/screenstates/mainpage/subpages/medications.dart';
import 'package:atsclepius/screenstates/mainpage/subpages/family.dart';
import 'package:atsclepius/screenstates/mainpage/subpages/notifications.dart';

class FamilyView extends StatefulWidget {
  FamilyView({Key key}) : super(key: key);

  @override
  _FamilyViewState createState() => _FamilyViewState();
}

class _FamilyViewState extends State<FamilyView> {
  static const iconSize = 120.0;
  static const buttonHeight = 200.0;
  static const buttonWidth = buttonHeight;
  static const buttonFontSize = 25.0;

  @override
  Widget build(BuildContext context) {
    final bobButton = new Container(
        child: Column(children: [
      Card(
        color: globals.primColor,
        child: Container(
          width: buttonWidth,
          height: buttonHeight,
          child: FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => (NotificationsPage())));
              },
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: iconSize,
                  ),
                ),
                Text(
                  '@bob',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: buttonFontSize,
                      color: Colors.white),
                )
              ])),
        ),
      ),
    ]));

    final barbaraButton = new Container(
        child: Column(children: [
      Card(
        color: globals.primColor,
        child: Container(
          width: buttonWidth,
          height: buttonHeight,
          child: FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => (MedicationsPage())));
              },
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: iconSize,
                  ),
                ),
                Text(
                  '@barbara',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: buttonFontSize,
                      color: Colors.white),
                )
              ])),
        ),
      ),
    ]));

    return Scaffold(
      body: Column(children: [
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Container(
            child: Text(
              'Welcome, @eve!',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(top: 10),
            child: Center(
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: bobButton,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: barbaraButton,
                ),
              ]),
            ))
      ]),
    );
  }
}
