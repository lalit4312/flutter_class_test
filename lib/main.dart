import 'package:flutter/material.dart';
import 'package:flutter_assignment/screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Name Buttons App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NameButtonsApp(),
    );
  }
}
