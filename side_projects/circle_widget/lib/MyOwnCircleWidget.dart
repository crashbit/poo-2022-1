import 'package:flutter/material.dart';

class MyOwnCircleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.blue, boxShadow: [
        BoxShadow(blurRadius: 20),
      ]),
    );
  }
}
