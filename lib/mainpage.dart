import 'package:flutter/material.dart';
import './subpage.dart';

class MainPage extends StatelessWidget {
  
  Future navigateToSubPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => SubPage()));
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Click button to move to SubPage'),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('Go to SubPage'),
onPressed: () {
  navigateToSubPage(context);
},
            )
          ],
        ),
      ),
    );
  }
}