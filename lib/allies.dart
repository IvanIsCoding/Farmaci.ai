import 'globals.dart' as globals;
import 'package:flutter/material.dart';
//import './mainpage.dart';

/* Widget for Friends & Family Page */

class Allies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.person_sharp),
          title: Text('Samantha Bengle'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: Icon(Icons.person_sharp),
          title: Text('Rosemarie Watson'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: Icon(Icons.person_sharp),
          title: Text('Tina Sanders'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
      ],
    );
  }
}
