import 'package:atsclepius/globals.dart' as globals;
import 'package:atsclepius/screenstates/mainpage/subpages/medications.dart';
import 'package:atsclepius/data/patient.dart';
import 'package:atsclepius/screenstates/mainpage/subpages/patients/listofpatients.dart';
import 'package:flutter/material.dart';
import 'package:atsclepius/screenstates/login.dart';
import 'package:atsclepius/screenstates/mainpage/subpages/nurseinput.dart';
import 'package:atsclepius/data/patientList.dart';
import 'package:atsclepius/screenstates/mainpage/subpages/patients/patientDetails.dart';

class PatientSearch extends StatefulWidget {
  PatientSearch({Key key}) : super(key: key);

  @override
  _PatientSearchState createState() => _PatientSearchState();
}

class _PatientSearchState extends State<PatientSearch> {
  String searchString = "";
  TextEditingController searchController = new TextEditingController();
  VoidCallback updatePatientList;
  _PatientSearchState({this.searchString, this.updatePatientList});

  @override
  Widget build(BuildContext context) {
    PatientList patientList = new PatientList();

    return Container(
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
                labelText: 'Search for Patient',
                labelStyle: TextStyle(
                  color: globals.primColor,
                  fontSize: 22,
                ),
                hintText: 'Please enter the name of a patient.'),
          )),
      ListView.separated(
        shrinkWrap: true,
        padding: const EdgeInsets.all(8),
        itemCount: patientList.list.length,
        itemBuilder: (context, index) {
          if (patientList.list[index].name.startsWith(searchController.text) ||
              searchController.text == null) {
            print(searchController.text);
            return ListTile(
                onTap: () => {
                      Navigator.pushNamed(context, '/patientDetails',
                          arguments: index)
                    },
                leading: Icon(Icons.person_sharp),
                title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(patientList.list[index].name),
                      Text(patientList.list[index].dob)
                    ]),
                trailing: Icon(Icons.keyboard_arrow_right));
          }
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      )
    ]));
  }
}
