import 'package:example_1/MyHomePage.dart';
import 'package:flutter/material.dart';

void main() {
  print("hola mundo adios clase");

  runApp(MiPrimerApp());
}

class MiPrimerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ejemplo no. 1",
      theme: ThemeData(primaryColor: Colors.white, accentColor: Colors.black),
      home: MyHomePage(),
    );
  }
}
