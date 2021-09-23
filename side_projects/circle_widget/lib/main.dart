import 'package:flutter/material.dart';
import 'MyOwnCircleWidget.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: MyOwnCircleWidget(),
      ),
    );
  }
}
