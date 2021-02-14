import 'globals.dart' as globals;
import './medications.dart';
import 'allies.dart';
import 'package:flutter/material.dart';
import './login.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  Widget serveBody() {
    if (index == 1) return Allies();
    if (index == 2) return Medications();

    return Text('Default Page');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(child: serveBody()),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
                icon: Icon(Icons.healing_sharp),
                onPressed: () {
                  setState(() {
                    index = 2;
                  });
                }),
            Spacer(),
            IconButton(icon: Icon(Icons.pending_actions), onPressed: () {}),
            Spacer(),
            IconButton(icon: Icon(Icons.add_alert), onPressed: () {}),
          ],
        ),
      ),
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
                  setState(() {
                    index = 1;
                  });
                }),
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
