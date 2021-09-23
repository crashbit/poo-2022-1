import 'package:example_2/MainApp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MySecondApp());
}

class MySecondApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainApp(),
    );
  }
}
