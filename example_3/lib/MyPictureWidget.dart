import 'package:flutter/material.dart';

class MyPictureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Michi")),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            item("uno"),
            item("dos"),
            item("tres"),
            item("uno"),
            item("dos"),
            item("tres"),
            item("uno"),
            item("dos"),
            item("tres"),
            item("uno"),
            item("dos"),
            item("tres")
          ],
        ),
      ),
    );
  }

  Widget item(String cadena) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Text(cadena),
    );
  }
} //Fin de clase
