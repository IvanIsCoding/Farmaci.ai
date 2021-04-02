import 'package:flutter/cupertino.dart';
import 'package:atsclepius/globals.dart' as globals;
import 'package:flutter/material.dart';

class PatientView extends StatefulWidget {
  PatientView({Key key}) : super(key: key);

  @override
  _PatientViewState createState() => _PatientViewState();
}

class _PatientViewState extends State<PatientView> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        children: List.generate(4, //this is the total number of cards
            (index) {
          return Container(
              child: Column(children: [
            Card(
              color: globals.primColor,
              child: Icon(
                Icons.donut_large,
                color: Colors.white,
                size: 170.0,
              ),
            ),
            Text(
              'Hello',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ]));
        }),
      ),
    );
  }
}
