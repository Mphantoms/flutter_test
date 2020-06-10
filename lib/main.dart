import 'package:flutter/material.dart';
import 'package:testApp/pages/detail.dart';
import 'pages/login.dart';
import 'pages/home.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {
        "Login": (BuildContext context)=>new MyHomePage(),
        "Home": (BuildContext context)=>new Home(),
        "Detail": (BuildContext context)=>new Detail(),
      },
    );
  }
}

