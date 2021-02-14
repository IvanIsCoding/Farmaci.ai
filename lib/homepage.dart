import 'globals.dart' as globals;
import 'package:flutter/material.dart';
import './login.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('My Page!')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Hospit@lity'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Friends and Family'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Log out'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => LoginStateful()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
