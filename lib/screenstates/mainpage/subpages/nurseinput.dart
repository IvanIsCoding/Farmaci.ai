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

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Patient Name:"),
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Text("Summary:"),
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Text("Status:"),
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
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
