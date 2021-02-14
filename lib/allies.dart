import 'globals.dart' as globals;
import 'homepage.dart';
import 'patient.dart';
import 'package:flutter/material.dart';
//import './mainpage.dart';

/* Widget for Friends & Family Page */
class Allies extends StatefulWidget {
  @override
  _AlliesState createState() => _AlliesState();
}

class _AlliesState extends State<Allies> {
  State<MyHomePage> homePageRef;
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
  }
}
