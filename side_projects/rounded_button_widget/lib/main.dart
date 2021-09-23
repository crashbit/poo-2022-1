import 'package:flutter/material.dart';
import 'package:rounded_button_widget/MyRoundedButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyRoundedButton(),
    );
  }
}
