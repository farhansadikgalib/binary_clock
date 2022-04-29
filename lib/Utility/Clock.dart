import 'dart:async';
import 'package:binary_clock/Model/ClockColumn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';



class Clock extends StatefulWidget {
  Clock({Key key}) : super(key: key);

  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  BinaryTime _binaryTime = BinaryTime();

  // Tick the clock
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (v) {
      setState(() {
        _binaryTime = BinaryTime();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(50),
        // decoration: new BoxDecoration(
        //   color: Colors.black
        //
        // ),

        child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [

            Column(

              children: [

                Text("Binary Clock",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.orangeAccent),),
                SizedBox(height: 15,),
                Text("01101101 01100101 01110111",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.lightGreen),),


              ],

            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [


                // Columns for the clock
                ClockColumn(
                  binaryInteger: _binaryTime.hourTens,
                  title:'H',
                  color: Colors.blue,
                  rows: 2,

                ),
                ClockColumn(
                  binaryInteger: _binaryTime.hourOnes,
                  title: 'H',
                  color: Colors.lightBlue,
                ),
                ClockColumn(
                  binaryInteger: _binaryTime.minuteTens,
                  title: 'M',
                  color: Colors.green,
                  rows: 3,
                ),
                ClockColumn(
                  binaryInteger: _binaryTime.minuteOnes,
                  title: 'M',
                  color: Colors.lightGreen,
                ),
                ClockColumn(
                  binaryInteger: _binaryTime.secondTens,
                  title: 'S',
                  color: Colors.orange,
                  rows: 3,
                ),
                ClockColumn(
                  binaryInteger: _binaryTime.secondOnes,
                  title: 'S',
                  color: Colors.orangeAccent,
                ),
              ],
            ),

            Text(" 👨‍💻 Developed by Farhan",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),


          ],
        ),
      ),
    );
  }
}



class BinaryTime{

  List<String> binaryIntegers;

  BinaryTime(){

    DateTime now = DateTime.now();
    String hhmmss = DateFormat("Hms").format(now).replaceAll(':', '');

    binaryIntegers = hhmmss.split('').map((str) => int.parse(str).toRadixString(2).padLeft(4,'0')).toList();


  }

  get hourTens => binaryIntegers[0];
  get hourOnes => binaryIntegers[1];
  get minuteTens => binaryIntegers[2];
  get minuteOnes => binaryIntegers[3];
  get secondTens => binaryIntegers[4];
  get secondOnes => binaryIntegers[5];



}


//
// class Clock extends StatefulWidget {
//   Clock({Key key}) : super(key: key);
//   @override
//   _ClockState createState() => _ClockState();
// }
//
// class _ClockState extends State<Clock> {
//
//   DateTime _now = DateTime.now();
//
//
//   @override
//   void initState() {
//     Timer.periodic(Duration(seconds: 1),(v){
//       setState(() {
//         _now = DateTime.now();
//       });
//
//     });
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//
//       padding: EdgeInsets.all(50) ,
//
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//
//           ClockColumn(
//             binaryInteger: _binaryTime.hourTens,
//             title: 'H',
//             color: Colors.blue,
//             rows: 2,
//           ),
//           ClockColumn(
//             binaryInteger: _binaryTime.hourOnes,
//             title: 'H',
//             color: Colors.lightBlue,
//           ),
//           ClockColumn(
//             binaryInteger: _binaryTime.minuteTens,
//             title: 'M',
//             color: Colors.green,
//             rows: 3,
//           ),
//           ClockColumn(
//             binaryInteger: _binaryTime.minuteOnes,
//             title: 'M',
//             color: Colors.lightGreen,
//           ),
//           ClockColumn(
//             binaryInteger: _binaryTime.secondTens,
//             title: 'S',
//             color: Colors.deepOrangeAccent,
//             rows: 3,
//           ),
//           ClockColumn(
//             binaryInteger: _binaryTime.secondOnes,
//             title: 'S',
//             color: Colors.orangeAccent,
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
//
//
//
//
//
//
