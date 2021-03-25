/* listofpatients.dart - subpage of mainpage.dart
 *
 * NONFUNCTIONAL
 * 
 * Currently displays a rudimentary summary of a patient's status, based
 * on hard-coded data.
 * 
 * TO-DO: 
 * -Implement a view which shows the patients which the user has access to.
 * -From the list-view, the user can tap a profile, which will serve the
 * appropriate patient.dart page.
 * -Remove hard-coded data, and separate out anything patient-specific.
 */

import 'package:atsclepius/globals.dart' as globals;
import 'package:atsclepius/screenstates/mainpage/subpages/default.dart';
import 'package:atsclepius/data/patient.dart';
import 'package:flutter/material.dart';

/* Widget for Friends & Family Page */
class ListOfPatients extends StatefulWidget {
  @override
  _ListOfPatientsState createState() => _ListOfPatientsState();
}

class _ListOfPatientsState extends State<ListOfPatients> {
  State<MainPage> homePageRef;
  @override
  Widget build(BuildContext context) {
    var friendList;
    int patientIndex = 0;
    friendList = new List<Patient>(5);
    friendList[0] = new Patient(
        "Sally Fields", // name
        "Friend", // relationship
        "January 20th, 2021",
        "She's feeling much better, and will be discharged soon. She ate a full breakfast, walked around the ward several times, and was very talkative and cheerful.",
        "Very Good");

    friendList[1] = new Patient(
        "Gary Doe", // name
        "Relative", // relationship
        "January 9th, 2021",
        "His breathing and appetite has improved. His spirits are up.",
        "Good, and Improving");

    friendList[2] = new Patient(
        "Samantha Smith", // name
        "Friend", // relationship
        "February 4th, 2021",
        "Her surgery went very well, and she's recovering very well.",
        "Very Good");

    //Widget showPatient() {
    return Column(children: <Widget>[
      ListTile(
          leading: Icon(Icons.person_sharp),
          title: Text(friendList[patientIndex].name),
          trailing: Text(friendList[patientIndex].relationship)),
      ListTile(
        leading: Text(
          friendList[patientIndex].date,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      ListTile(
        leading: Text("\"" + friendList[patientIndex].summary + "\""),
      ),
      ListTile(
        leading: Text("Status Given By Nurse: "),
      ),
      ListTile(
          leading: Text(
        "\"" + friendList[patientIndex].status + "\"",
        style: TextStyle(fontWeight: FontWeight.bold),
      ))
    ]);
    //}

    patientIndex = 0;

    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.person_sharp),
          title: Text(friendList[0].name),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            patientIndex = 0;
            setState(() {});
          },
        ),
        ListTile(
          leading: Icon(Icons.person_sharp),
          title: Text(friendList[1].name),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            patientIndex = 1;
            setState(() {});
          },
        ),
        ListTile(
          leading: Icon(Icons.person_sharp),
          title: Text(friendList[2].name),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            patientIndex = 2;
            setState(() {});
          },
        ),
      ],
    );
  }
}
