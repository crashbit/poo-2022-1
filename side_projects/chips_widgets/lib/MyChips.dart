import 'package:flutter/material.dart';

class MyChips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chips"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [chipList()],
        ),
      ),
    );
  }

  Widget chipList() {
    return Wrap(
      spacing: 10.0,
      runSpacing: 1.0,
      children: <Widget>[
        buildChip("uno", Colors.amber),
        buildChip("dos", Colors.blueAccent),
        buildChip("tres", Colors.red),
        buildChip("cuatro", Colors.orange),
        buildChip("cinco", Colors.yellowAccent),
      ],
    );
  }

  Widget buildChip(String label, Color color) {
    return Chip(
      labelPadding: EdgeInsets.all(2.0),
      avatar: CircleAvatar(
        backgroundColor: Colors.white70,
        child: Text(label[0].toUpperCase()),
      ),
      label: Text(
        label,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      backgroundColor: color,
      elevation: 6.0,
      shadowColor: Colors.grey[60],
      padding: EdgeInsets.all(8.0),
    );
  }
} // Fin de Class

