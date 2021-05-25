import 'package:binary_clock/Screen/ClockScreen.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key key}) : super(key: key);

  @override
  _Splash_ScreenState createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(


      seconds: 4,
      navigateAfterSeconds: ClockScreen(),
      image: Image.asset("assets/splash.png"),photoSize: 125,
      loaderColor: Colors.blue[300],
      title:Text("Binary Clock",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.orangeAccent),),
      loadingText:Text("01101101 01100101 01110111",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.lightGreen),),




    );
  }
}
