import 'package:flutter/material.dart';
import 'services/client_sdk_service.dart';
import 'package:at_commons/at_commons.dart';
import 'globals.dart' as globals;
import 'dart:convert';

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

  String _otherAtSign;
  String _summary;
  String _status;
  ClientSdkService clientSdkService = ClientSdkService.getInstance();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Patient Name:"),
          TextFormField(validator: (value) {
            if (value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          }, onChanged: (value) {
            setState(() {
              _otherAtSign = value + '🛠';
            });
          }),
          Text("Summary:"),
          TextFormField(validator: (value) {
            if (value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          }, onChanged: (value) {
            setState(() {
              _summary = value;
            });
          }),
          Text("Status:"),
          TextFormField(validator: (value) {
            if (value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          }, onChanged: (value) {
            setState(() {
              _status = value;
            });
          }),
          Padding(padding: const EdgeInsets.symmetric(vertical: 16.0)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false
                // otherwise.
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a Snackbar.
                  _update(context);
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

  _update(BuildContext context) async {
    print("DEBUG update");
    AtKey atKey = AtKey();
    atKey.key = "test_${globals.testCount}";
    atKey.sharedWith = _otherAtSign;
    Map<String, String> mapValues = {"status": _status, "summary": _summary};
    var _value = jsonEncode(mapValues);
    setState(() {
      globals.testCount = globals.testCount + 1;
    });
    await clientSdkService.put(atKey, _value);
  }
}
