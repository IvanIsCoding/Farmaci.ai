import 'package:atsclepius/globals.dart' as globals;
import 'package:atsclepius/screenstates/mainpage/subpages/medications.dart';
import 'package:atsclepius/data/patient.dart';
import 'package:atsclepius/screenstates/mainpage/subpages/patients/listofpatients.dart';
import 'package:flutter/material.dart';
import 'package:atsclepius/screenstates/login.dart';
import 'package:atsclepius/screenstates/mainpage/subpages/nurseinput.dart';

class PatientSearch extends StatefulWidget {
  PatientSearch({Key key}) : super(key: key);

  @override
  _PatientSearchState createState() => _PatientSearchState();
}

class _PatientSearchState extends State<PatientSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: globals.primColor)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: globals.primColor)),
                labelText: 'Search for Patient',
                labelStyle: TextStyle(
                  color: globals.primColor,
                  fontSize: 22,
                ),
                hintText: 'Please enter the name of a patient.'),
          )),
    );
  }
}
