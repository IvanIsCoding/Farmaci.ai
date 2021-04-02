/* nurseinput.dart - subpage of mainpage.dart
 *
 * NONFUNCTIONAL
 * 
 * A form which allows a nurse to input information about a patient.
 * Since our app currently doesn't have separate views, it's kind of just
 * shoved into the top-bar expanding menu. It doesn't currently work, and it's
 * based on a *very* simple boilerplate.
 * 
 * TO-DO:
 * -We need to concretely figure out what kind of information a nurse can put
 * into a status update.abstract
 * 
 * -It needs to be rebuilt, since it's just boilerplate code. 
 * 
 * -Needs to interface with @Company API.
 */

import 'package:flutter/material.dart';
import 'dart:ffi';
import 'package:atsclepius/globals.dart' as globals;

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  String dropdownValue = null; // debug
  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Container(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: globals.primColor)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: globals.primColor)),
                    labelText: 'Patient\'s @sign',
                    labelStyle: TextStyle(
                      color: globals.primColor,
                      fontSize: 22,
                    ),
                    hintText: 'Please enter the patient\'s @sign login.'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: globals.primColor)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: globals.primColor)),
                  labelText: 'Summary of changes',
                  labelStyle: TextStyle(
                    color: globals.primColor,
                    fontSize: 22,
                  ),
                  hintText: 'Summary of changes made to patient\'s profile'),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: DropdownButton<String>(
              value: dropdownValue,
              icon: Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String newValue) {
                setState(() {
                  dropdownValue = newValue;
                });
              },
              items: <String>['One', 'Two', 'Free', 'Four']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          Padding(padding: const EdgeInsets.symmetric(vertical: 16.0)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false
                // otherwise.
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a Snackbar.
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
