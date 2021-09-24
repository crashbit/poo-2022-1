import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var dato = "";
  var dato2 = "";
  var resultado = "0";
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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  onChanged: (texto) {
                    setState(() {
                      dato2 = texto;
                    });
                  },
                  decoration: InputDecoration(
                      labelText: "Mete un dato",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(),
                      )),
                ),
              ),
              Text(dato),
              TextButton(
                  onPressed: () {
                    setState(() {
                      resultado = "$dato - $dato2";
                    });
                  },
                  child: Text("Calcular")),
              Text(
                resultado,
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
        ));
  }
}
