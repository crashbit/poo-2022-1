import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("mi primera app")),
      body: ListView(children: [
        buildCard("objeto 1"),
        buildCard("objeto 2"),
        buildCard("objeto 3"),
        buildCard("objeto 3")
      ]),
    );
  }

  Widget buildCard(String title) {
    return Card(
      child: Text(
        title,
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
      elevation: 2.0,
      color: Colors.red,
    );
  }
} //Fin de la clase
