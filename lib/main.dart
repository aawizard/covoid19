import 'package:flutter/material.dart';
import 'screens/loading_screen.dart';
//import 'package:covoid19/screens/main_screen.dart';
//import 'package:covoid19/screens/MakeMask.dart';
import 'screens/symptoms.dart';
import 'screens/Wash_Hands.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.redAccent,
      ),
//        (
//        primarySwatch: Colors.blue,
//
//        visualDensity: VisualDensity.adaptivePlatformDensity,
//      ),
      initialRoute: '/' ,
      routes: {
        '/':(context)=>LoadingScreen(),

        '/symptoms':(context)=>Symptoms(),
        '/washHands':(context)=>WashHands(),

      },
    );
  }
}

