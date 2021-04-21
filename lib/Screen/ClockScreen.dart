import 'package:flutter/material.dart';

import '../Utility/Clock.dart';

class ClockScreen extends StatefulWidget {
  @override
  _ClockScreenState createState() => _ClockScreenState();
}

class _ClockScreenState extends State<ClockScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Clock(),


    );
  }
}
