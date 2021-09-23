import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("El michi"),
      ),
      body: Column(
        children: [
          Image.asset("assets/images/cat.jpg"),
          Text(
            "ia stoy hartooo!! ",
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}
