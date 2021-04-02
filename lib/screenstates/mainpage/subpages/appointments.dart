/* AppointmentsPage.dart - screenstate
 *
 * The scaffold for the mainview of the app.
 * subpages are dynamically loaded to the body
 * 
 * TO-DO:
 * -The system for switching to subpages should likely be implemented using
 * something other than an index. Enumerator?
 * 
 * -There are no VoidCallBacks! There's no current way for subpages to send
 * data back to AppointmentsPage.dart. This is a problem, no?
 * 
 * -General overhaul of the UI. Many of the buttons don't do anything.🤷
 * */

import 'package:atsclepius/globals.dart' as globals;
import 'package:atsclepius/screenstates/mainpage/subpages/medications.dart';
import 'package:atsclepius/data/patient.dart';
import 'package:atsclepius/screenstates/mainpage/subpages/patients/listofpatients.dart';
import 'package:atsclepius/screenstates/mainpage/subpages/patientview.dart';
import 'package:flutter/material.dart';
import 'package:atsclepius/screenstates/login.dart';
import 'package:atsclepius/screenstates/mainpage/subpages/nurseinput.dart';
import 'package:atsclepius/screenstates/mainpage/subpages/patientSearch.dart';

class AppointmentsPage extends StatefulWidget {
  final String title;
  AppointmentsPage({Key key, this.title}) : super(key: key);

  @override
  _AppointmentsPageState createState() => _AppointmentsPageState();
}

class _AppointmentsPageState extends State<AppointmentsPage> {
  @override
  static const iconSize = 35.0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Appointments"), // Was originally widget.title, but was throwing a null error.
        backgroundColor: globals.primColor,
      ),
      body: Container(
          child: Column(children: [
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                  leading: Icon(Icons.local_hospital,
                      size: iconSize, color: Colors.redAccent),
                  title: Text('Blood Pressure Measurement',
                      style: TextStyle(fontSize: 15)),
                  subtitle: Text('@alice'),
                  trailing: Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Text("April 2nd, 2021",
                          style: TextStyle(fontSize: 12)))),
            ],
          ),
        ),
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                  leading: Icon(Icons.local_hospital,
                      size: iconSize, color: Colors.redAccent),
                  title: Text('Moved to Floor 2, Room A',
                      style: TextStyle(fontSize: 15)),
                  subtitle: Text('@hospital'),
                  trailing: Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Text("April 2nd, 2021",
                          style: TextStyle(fontSize: 12)))),
            ],
          ),
        ),
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                  leading: Icon(Icons.local_hospital,
                      size: iconSize, color: Colors.redAccent),
                  title: Text('Checked in at Hospital',
                      style: TextStyle(fontSize: 15)),
                  subtitle: Text('@hospital'),
                  trailing: Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Text("April 2nd, 2021",
                          style: TextStyle(fontSize: 12)))),
            ],
          ),
        ),
      ])),
      backgroundColor: globals.primBgdColor,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 50,
              child: DrawerHeader(
                child: Text('@sclepius'),
                decoration: BoxDecoration(
                  color: globals.primColor,
                ),
              ),
            ),
            ListTile(
              title: Text('Log out'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => LoginStateful()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
