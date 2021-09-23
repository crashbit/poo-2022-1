import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Alert")),
        body: Center(
          child: Column(
            children: [
              Text("Lanzar boton"),
              ElevatedButton(
                  child: Text("Alerta"), onPressed: () => showAlert(context))
            ],
          ),
        ));
  }

  void showAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Mi titulo"),
            content: Text("Este es un contenido"),
            actions: [
              TextButton(
                  child: Text("Cerrar"),
                  onPressed: () => Navigator.of(context).pop()),
            ],
          );
        });
  }
} // Fin Clase