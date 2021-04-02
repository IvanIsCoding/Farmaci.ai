import 'package:flutter/cupertino.dart';
import 'package:atsclepius/globals.dart' as globals;
import 'package:flutter/material.dart';
import 'package:atsclepius/screenstates/mainpage/subpages/appointments.dart';
import 'package:atsclepius/screenstates/mainpage/subpages/medications.dart';
import 'package:atsclepius/screenstates/mainpage/subpages/family.dart';

class PatientView extends StatefulWidget {
  PatientView({Key key}) : super(key: key);

  @override
  _PatientViewState createState() => _PatientViewState();
}

class _PatientViewState extends State<PatientView> {
  static const iconSize = 100.0;
  static const buttonSize = 170.0;
  static const buttonFontSize = 14.0;

  @override
  Widget build(BuildContext context) {
    final medicationButton = new Container(
        child: Column(children: [
      Card(
        color: globals.primColor,
        child: Container(
          width: buttonSize,
          height: buttonSize,
          child: FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => (MedicationsPage())));
            },
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

    final appointmentsButton = new Container(
        child: Column(children: [
      Card(
        color: globals.primColor,
        child: Container(
          width: buttonSize,
          height: buttonSize,
          child: FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => (AppointmentsPage())));
            },
            child: Icon(
              Icons.event_busy,
              color: Colors.white,
              size: iconSize,
            ),
          ),
        ),
      ),
      Text(
        'Appointments',
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
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => (FamilyPage())));
            },
            child: Icon(
              Icons.family_restroom,
              color: Colors.white,
              size: iconSize,
            ),
          ),
        ),
      ),
      Text(
        'Family & Friends',
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

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 30),
        child: GridView.count(shrinkWrap: true, crossAxisCount: 2, children: [
          medicationButton,
          appointmentsButton,
          familyButton,
          notificationsButton
        ]),
      ),
    );
  }
}
