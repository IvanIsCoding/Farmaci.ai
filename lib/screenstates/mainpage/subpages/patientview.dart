import 'package:flutter/cupertino.dart';
import 'package:atsclepius/globals.dart' as globals;
import 'package:flutter/material.dart';

class PatientView extends StatefulWidget {
  PatientView({Key key}) : super(key: key);

  @override
  _PatientViewState createState() => _PatientViewState();
}

class _PatientViewState extends State<PatientView> {
  static const iconSize = 100.0;
  static const buttonSize = 170.0;
  static const buttonFontSize = 20.0;
  final medicationButton = new Container(
      child: Column(children: [
    Card(
      color: globals.primColor,
      child: Container(
        width: buttonSize,
        height: buttonSize,
        child: FlatButton(
          onPressed: () {},
          child: Icon(
            Icons.local_pharmacy,
            color: Colors.white,
            size: iconSize,
          ),
        ),
      ),
    ),
    Text(
      'Medication',
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: buttonFontSize),
    )
  ]));

  final procedureButton = new Container(
      child: Column(children: [
    Card(
      color: globals.primColor,
      child: Container(
        width: buttonSize,
        height: buttonSize,
        child: FlatButton(
          onPressed: () {},
          child: Icon(
            Icons.event_busy,
            color: Colors.white,
            size: iconSize,
          ),
        ),
      ),
    ),
    Text(
      'Procedures',
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: buttonFontSize),
    )
  ]));

  final familyButton = new Container(
      child: Column(children: [
    Card(
      color: globals.primColor,
      child: Container(
        width: buttonSize,
        height: buttonSize,
        child: FlatButton(
          onPressed: () {},
          child: Icon(
            Icons.family_restroom,
            color: Colors.white,
            size: iconSize,
          ),
        ),
      ),
    ),
    Text(
      'Family',
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: buttonFontSize),
    )
  ]));

  final notificationsButton = new Container(
      child: Column(children: [
    Card(
      color: globals.primColor,
      child: Container(
        width: buttonSize,
        height: buttonSize,
        child: FlatButton(
          onPressed: () {},
          child: Icon(
            Icons.notifications,
            color: Colors.white,
            size: iconSize,
          ),
        ),
      ),
    ),
    Text(
      'Notifications',
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: buttonFontSize),
    )
  ]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 30),
        child: GridView.count(shrinkWrap: true, crossAxisCount: 2, children: [
          medicationButton,
          procedureButton,
          familyButton,
          notificationsButton
        ]),
      ),
    );
  }
}
