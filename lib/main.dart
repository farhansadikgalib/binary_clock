import 'package:binary_clock/Screen/ClockScreen.dart';
import 'package:binary_clock/Screen/Splash%20Screen.dart';
import 'package:binary_clock/Utility/Clock.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:home_widget/home_widget.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight
  ]);
  WidgetsFlutterBinding.ensureInitialized();
  HomeWidget.registerBackgroundCallback(backgroundCallback);
  runApp(MyApp());
}

Future<void> backgroundCallback(Uri uri) async {
  // if (uri.host == 'updatecounter') {
  //   int _counter;
  //   await HomeWidget.getWidgetData<int>('_counter', defaultValue: 0).then((value) {
  //     _counter = value;
  //     _counter++;
  //   });
  //   await HomeWidget.saveWidgetData<int>('_counter', _counter);
  //   await HomeWidget.updateWidget(name: 'AppWidgetProvider', iOSName: 'AppWidgetProvider');
  // }
  Clock();
}



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Binary Clock',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //
      // ),
      initialRoute: '/',
      getPages: [

        GetPage(name: '/', page: ()=>Splash_Screen()),
        GetPage(name: '/clock', page: ()=>ClockScreen())

      ],

      home: Splash_Screen(),
    );
  }
}
