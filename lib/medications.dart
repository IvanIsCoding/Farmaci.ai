import 'globals.dart' as globals;
import 'package:flutter/material.dart';
//import './mainpage.dart';

/* Widget for Friends & Family Page */

class Medications extends StatefulWidget {
  @override
  _MedicationsState createState() => _MedicationsState();
}

class _MedicationsState extends State<Medications> {
  @override
  Widget build(BuildContext context) {
    int index = 0;
    return ListView(
      children: <Widget>[
        ListTile(
            leading: Icon(Icons.medical_services),
            title: Text('IBUPROFEN 800 MG - 60 TABLETS '),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {}),
        ListTile(
            leading: Icon(Icons.medical_services),
            title: Text('VERAPAMIL 180 MG - 120 TABLETS'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {}),
        ListTile(
            leading: Icon(Icons.medical_services),
            title: Text('HYDROCHLOROTHIAZIDE 25 MG - 60 TABLETS'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {}),
      ],
    );
  }
}
