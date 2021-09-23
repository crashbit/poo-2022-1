import 'package:flutter/material.dart';

class Example4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Stack(
        children: [
          Image.asset('assets/dos.jpg'),
          Transform.translate(
            offset: Offset(0, 100),
            child: Column(
              children: [
                buildImage(),
                buildDetails(),
                buildActions(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildImage() {
    return Container(
        width: 200,
        height: 200,
        child: ClipOval(
          child: Image.asset(
            "assets/uno.jpg",
            fit: BoxFit.fitWidth,
          ),
        ));
  }

  Widget buildDetails() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Wolfram Barvich',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
          ),
          buildDetailsRow("Color:", "Rojo"),
          buildDetailsRow("Lugar:", "Quién sabe")
        ],
      ),
    );
  }

  Widget buildDetailsRow(String title1, String title2) {
    return Row(
      children: [
        Text(
          title1,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(title2)
      ],
    );
  }

  Widget buildActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildIcon(Icons.price_check, "Costo"),
        buildIcon(Icons.face, "Face"),
        buildIcon(Icons.verified_user, "user"),
      ],
    );
  }

  Widget buildIcon(IconData icon, String text) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [Icon(icon, size: 40), Text(text)],
        ));
  }
} // Fin clase