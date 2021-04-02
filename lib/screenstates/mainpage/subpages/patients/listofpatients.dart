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
class ListOfPatients extends StatelessWidget {
  String searchString = '';
  final VoidCallback updatePatientList;
  ListOfPatients({this.updatePatientList});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.all(8),
      itemCount: globals.patientList.list.length,
      // ignore: missing_return
      itemBuilder: (context, index) {
        if (globals.patientList.list[index].name.startsWith(searchString)) {
          print(searchString);
          return ListTile(
              leading: Icon(Icons.person_sharp),
              title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(globals.patientList.list[index].name),
                    Text(globals.patientList.list[index].dob)
                  ]),
              trailing: Icon(Icons.keyboard_arrow_right));
        }
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    ));
  }
}
