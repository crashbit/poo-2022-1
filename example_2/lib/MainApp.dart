import 'package:example_2/MainWidget.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Mi app"),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.edit),
          ),
        ],
      ),
      body: Center(child: AspectRatio(aspectRatio: 1.0, child: MainWidget())),
      drawer: Drawer(
        child: Container(
            color: Colors.lightBlue,
            child: Center(
              child: Text("Soy MAC"),
            )),
      ),
    );
  }
}
