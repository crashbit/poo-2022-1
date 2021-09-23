import 'package:flutter/material.dart';

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Padding(
        padding: EdgeInsets.all(40.0),
        child: Container(
          color: Colors.deepPurple,
          child: Padding(
            padding: EdgeInsets.only(left: 50.0, right: 50.0, bottom: 200),
            child: Container(
              color: Colors.blue,
              child: FlatButton(
                child: Text("Hola"),
                onPressed: () => print("Hola"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
