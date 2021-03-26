import 'package:atsclepius/globals.dart' as globals;
import 'package:flutter/material.dart';
import 'package:atsclepius/data/patient.dart';
import 'package:atsclepius/data/patientList.dart';

class PatientDetails extends StatelessWidget {
  
  static const routeName = '/patientDetails';
  const PatientDetails({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final int args = ModalRoute.of(context).settings.arguments;
    return Column(children: <Widget>[
      ListTile(
          leading: Icon(Icons.person_sharp),
          title: Text(globals.patientList.list.name),
          trailing: Text(globals.patientList.list.relationship)),
      ListTile(
        leading: Text(
          globals.patientList.list.date,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      ListTile(
        leading: Text("\"" + globals.patientList.list.summary + "\""),
      ),
      ListTile(
        leading: Text("Status Given By Nurse: "),
      ),
      ListTile(
          leading: Text(
        "\"" + globals.patientList.list.status + "\"",
        style: TextStyle(fontWeight: FontWeight.bold),
      ))
    ]);
  }
}
