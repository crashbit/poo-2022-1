import 'package:flutter/material.dart';
import 'package:image_widget/MyImageWidget.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyImageWidget(),
    );
  }
}
