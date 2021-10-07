import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String texto = "";
  int contador = 0;
  var color = Colors.amber;

  @override
  void initState() {
    super.initState();
    texto = "Hola mundo flutter ";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Con estado")),
      body: Container(
        child: Center(
            child: Text(
          texto,
          style: TextStyle(fontSize: 30),
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            contador = contador + 1;
            texto = "$contador";
            color = Colors.primaries[contador % Colors.primaries.length];
          });
        },
        backgroundColor: color,
        child: Icon(Icons.add),
      ),
    );
  }
}
