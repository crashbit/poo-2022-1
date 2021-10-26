import 'package:flutter/material.dart';
import 'package:todo_example/ReadDataPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ReadDataPage(),
    );
  }
}
