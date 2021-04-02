/* NotificationsPage.dart - screenstate
 *
 * The scaffold for the mainview of the app.
 * subpages are dynamically loaded to the body
 * 
 * TO-DO:
 * -The system for switching to subpages should likely be implemented using
 * something other than an index. Enumerator?
 * 
 * -There are no VoidCallBacks! There's no current way for subpages to send
 * data back to NotificationsPage.dart. This is a problem, no?
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
import 'package:atsclepius/data/patientlist.dart';

class NotificationsPage extends StatefulWidget {
  final String title;
  NotificationsPage({Key key, this.title}) : super(key: key);

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  String searchString = "";
  TextEditingController searchController = new TextEditingController();
  VoidCallback updatePatientList;
  _NotificationsPageState({this.searchString, this.updatePatientList});
  @override
  static const iconSize = 35.0;
  Widget build(BuildContext context) {
    PatientList patientList = new PatientList();
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Notifications"), // Was originally widget.title, but was throwing a null error.
        backgroundColor: globals.primColor,
      ),
      body: Container(
          child: Column(children: <Widget>[
        Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: TextField(
              controller: searchController,
              onChanged: (value) {
                print(value);
                setState(() {});
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: globals.primColor)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: globals.primColor)),
                labelText: 'Search for Notifications',
                labelStyle: TextStyle(
                  color: globals.primColor,
                  fontSize: 22,
                ),
              ),
            )),
        ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.all(8),
          itemCount: patientList.list.length,
          itemBuilder: (context, index) {
            if (patientList.list[index].name
                    .startsWith(searchController.text) ||
                searchController.text == null) {
              print(searchController.text);
              return ListTile(
                  onTap: () => {
                        Navigator.pushNamed(context, '/patientDetails',
                            arguments: index)
                      },
                  leading: Icon(Icons.notifications, size: 30),
                  title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          patientList.list[index].name,
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(patientList.list[index].dob,
                                style: TextStyle(
                                  fontSize: 12,
                                )))
                      ]),
                  trailing: Icon(Icons.keyboard_arrow_right));
            }
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
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
