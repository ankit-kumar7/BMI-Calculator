import 'package:flutter/material.dart';
import 'mainpage.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI Calculator",
      theme: ThemeData.dark(),
      home: MainPage(),
      );
  }
}


