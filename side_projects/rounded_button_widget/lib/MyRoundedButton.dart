import 'package:flutter/material.dart';

class MyRoundedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Rounded Button"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildRoundedButton("Click on #1", Colors.red),
            buildRoundedButton("Click on #2", Colors.green),
            buildRoundedButton("Click on #3", Colors.blue)
          ],
        ),
      ),
    );
  }

  Widget buildRoundedButton(String title, Color color) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: color,
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Text(
        title,
        style: TextStyle(fontSize: 20),
      ),
      onPressed: () {
        print("Click, click on $title");
      },
    );
  }
} // Fin de clase
