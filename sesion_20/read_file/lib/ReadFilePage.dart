import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ReadFilePage extends StatefulWidget {
  ReadFilePage({Key? key}) : super(key: key);

  @override
  _ReadFilePageState createState() => _ReadFilePageState();
}

class _ReadFilePageState extends State<ReadFilePage> {
  var contenido = "";

  @override
  void initState() {
    super.initState();
    _loadFile().then((value) {
      setState(() {
        contenido = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Read File"),
      ),
      //body: imprimeContenido(context),
      body: Text(contenido),
    );
  }

  // ignore: unused_element
  Future<String> _loadFile() async {
    return await rootBundle.loadString("assets/files/datos.txt");
  }

  Widget imprimeContenido(BuildContext context) {
    return FutureBuilder<String>(
        future: _loadFile(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Text(snapshot.data!);
          } else if (snapshot.hasError) {
            return Text("$snapshot.error");
          }
          return CircularProgressIndicator();
        });
  }
} //fin de clase
