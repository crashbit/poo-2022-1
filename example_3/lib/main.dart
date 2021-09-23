import 'package:example_3/MyPictureWidget.dart';
import 'package:flutter/material.dart';

void main() {
  print("Hola mundo");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPictureWidget(),
    );
  }
}
