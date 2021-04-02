/* FamilyPage.dart - screenstate
 *
 * The scaffold for the mainview of the app.
 * subpages are dynamically loaded to the body
 * 
 * TO-DO:
 * -The system for switching to subpages should likely be implemented using
 * something other than an index. Enumerator?
 * 
 * -There are no VoidCallBacks! There's no current way for subpages to send
 * data back to FamilyPage.dart. This is a problem, no?
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

class FamilyPage extends StatefulWidget {
  final String title;
  FamilyPage({Key key, this.title}) : super(key: key);

  @override
  _FamilyPageState createState() => _FamilyPageState();
}

class _FamilyPageState extends State<FamilyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(globals
            .name), // Was originally widget.title, but was throwing a null error.
        backgroundColor: globals.primColor,
      ),
      body: Text("FamilyPage"),
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
