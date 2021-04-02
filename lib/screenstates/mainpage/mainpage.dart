/* mainpage.dart - screenstate
 *
 * The scaffold for the mainview of the app.
 * subpages are dynamically loaded to the body
 * 
 * TO-DO:
 * -The system for switching to subpages should likely be implemented using
 * something other than an index. Enumerator?
 * 
 * -There are no VoidCallBacks! There's no current way for subpages to send
 * data back to mainpage.dart. This is a problem, no?
 * 
 * -General overhaul of the UI. Many of the buttons don't do anything.🤷
 * */

import 'package:atsclepius/globals.dart' as globals;
import 'package:atsclepius/screenstates/mainpage/subpages/medications.dart';
import 'package:atsclepius/data/patient.dart';
import 'package:atsclepius/screenstates/mainpage/subpages/patients/listofpatients.dart';
import 'package:flutter/material.dart';
import 'package:atsclepius/screenstates/login.dart';
import 'package:atsclepius/screenstates/mainpage/subpages/nurseinput.dart';
import 'package:atsclepius/screenstates/mainpage/subpages/patientSearch.dart';

class MainPage extends StatefulWidget {
  final String title;
  MainPage({Key key, this.title}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  Widget serveBody() {
    if (index == 1) return ListOfPatients();
    if (index == 2) return Medications();
    if (index == 3) return MyCustomForm();

    return PatientSearch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(globals
            .name), // Was originally widget.title, but was throwing a null error.
        backgroundColor: globals.primColor,
      ),
      body: serveBody(),
      backgroundColor: globals.primBgdColor,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
                icon: Icon(Icons.healing_sharp),
                onPressed: () {
                  setState(() {
                    index = 2;
                  });
                }),
            Spacer(),
            IconButton(icon: Icon(Icons.pending_actions), onPressed: () {}),
            Spacer(),
            IconButton(icon: Icon(Icons.add_alert), onPressed: () {}),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('@sclepius'),
              decoration: BoxDecoration(
                color: globals.primColor,
              ),
            ),
            ListTile(
                title: Text('Friends and Family'),
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                }),
            ListTile(
                title: Text('Input Patient Data'),
                onTap: () {
                  setState(() {
                    index = 3;
                  });
                }),
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
