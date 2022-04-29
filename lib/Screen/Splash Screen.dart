import 'dart:async';

import 'package:binary_clock/Screen/ClockScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class Splash_Screen extends StatefulWidget {

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}



class _Splash_ScreenState extends State<Splash_Screen> {


  Future<void> moveToNext() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Get.toNamed('/clock');
  }


  @override
  void initState() {
    moveToNext();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Spacer(),
          Image.asset(
            "assets/splash.png",
            height: MediaQuery
                .of(context)
                .size
                .height / 3,
            width: MediaQuery
                .of(context)
                .size
                .width / 3,
          ),
          Text(
            "Binary Clock",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.orangeAccent),
          ),
          Spacer(),
          SpinKitFadingCube(
            color: Colors.orange,
            size: 25,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "01101101 01100101 01110111",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.lightGreen),
          ),

          Spacer()
        ],
      ),
    );
  }
}
// SplashScreen(
//
//
// seconds: 4,
// navigateAfterSeconds: ClockScreen(),
//
//
//
//
// );
