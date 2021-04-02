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
  static const iconSize = 45.0;
  static const iconColor = Colors.blueGrey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Family & Friends"), // Was originally widget.title, but was throwing a null error.
        backgroundColor: globals.primColor,
      ),
      body: Container(
          child: Column(children: [
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                  leading:
                      Icon(Icons.account_box, size: iconSize, color: iconColor),
                  title: Text('@barbara', style: TextStyle(fontSize: 15)),
                  subtitle: Text('Family Access'),
                  trailing: Icon(Icons.chevron_right, size: iconSize))
            ],
          ),
        ),
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                  leading:
                      Icon(Icons.account_box, size: iconSize, color: iconColor),
                  title: Text('@eve', style: TextStyle(fontSize: 15)),
                  subtitle: Text('Family Access'),
                  trailing: Icon(Icons.chevron_right, size: iconSize))
            ],
          ),
        ),
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                  leading:
                      Icon(Icons.account_box, size: iconSize, color: iconColor),
                  title: Text('@ashish', style: TextStyle(fontSize: 15)),
                  subtitle: Text('Friend Access'),
                  trailing: Icon(Icons.chevron_right, size: iconSize))
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
                color: globals.primColor,
                borderRadius: BorderRadius.circular(20)),
            child: FlatButton(
              onPressed: () {},
              child: Text(
                'Manage Family & Friends',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        )
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
