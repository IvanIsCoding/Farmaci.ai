import 'globals.dart' as globals;
import 'patient.dart';
import 'package:flutter/material.dart';
//import './mainpage.dart';

/* Widget for Friends & Family Page */

class Allies extends StatefulWidget {
  @override
  _AlliesState createState() => _AlliesState();
}

class _AlliesState extends State<Allies> {
  @override
  Widget build(BuildContext context) {
    var friendList;
    friendList = new List<Patient>(5);
    friendList[0] = new Patient(
        "Sally Fields", // name
        "Friend", // relationship
        DateTime(2021, 01, 06),
        "She's feeling much better, and will be discharged soon",
        "Very Good");

    friendList[1] = new Patient(
        "Gary Doe", // name
        "Relative", // relationship
        DateTime(2021, 01, 02),
        "His breathing and appetite has improved. His spirits are up.",
        "Good, and Improving");

    friendList[2] = new Patient(
        "Samantha Smith", // name
        "Friend", // relationship
        DateTime(2021, 02, 05),
        "Her surgery went very well, and she's recovering very well.",
        "Very Good");

    Widget showPatient(int patientIndex) {
      return Column(children: <Widget>[
        ListTile(
            leading: Icon(Icons.person_sharp),
            title: Text(friendList[patientIndex].name),
            trailing: Text(friendList[patientIndex].relationship)),
        ListTile(
          leading: Text(friendList[patientIndex].date),
        ),
        ListTile(
          title: Text(friendList[patientIndex].summary),
        ),
        ListTile(
          leading: Text("Status Given By Nurse: "),
          title: Text(friendList[patientIndex].status),
        )
      ]);
    }

    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.person_sharp),
          title: Text(friendList[0].name),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            setState(() => showPatient(0));
          },
        ),
        ListTile(
          leading: Icon(Icons.person_sharp),
          title: Text(friendList[1].name),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            setState(() => showPatient(1));
          },
        ),
        ListTile(
          leading: Icon(Icons.person_sharp),
          title: Text(friendList[2].name),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            setState(() => showPatient(2));
          },
        ),
      ],
    );
  }
}
