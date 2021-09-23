import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var dato = "Hola";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Convertidor de unidades")),
        body: Center(
          child: Column(
            children: [
              TextField(onChanged: (texto) {
                setState(() {
                  dato = texto;
                });
              }),
              Text(dato)
            ],
          ),
        ));
  }
}
