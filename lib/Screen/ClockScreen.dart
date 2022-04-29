
import 'package:flutter/material.dart';
import 'dart:async';
import '../Utility/Clock.dart';

class ClockScreen extends StatelessWidget {



  Future<bool> _onWillPop() async {
    return (await showDialog(
      builder: (context) =>
      new AlertDialog(
        // title: new Text('Are you sure?'),
        backgroundColor: Colors.white,
        content: new Text('Do you want to exit Binary Calculator'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text(
              'No',
              style: TextStyle(color: Colors.green[800]),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: new Text(
              'Yes',
              style: TextStyle(color: Colors.red[800]),
            ),
          ),
        ],
      ),
    )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,

      child: Scaffold(

        body: Clock(),


      ),
    );
  }
}
