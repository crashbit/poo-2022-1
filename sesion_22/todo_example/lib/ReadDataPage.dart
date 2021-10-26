import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_example/Album.dart';
import 'package:http/http.dart' as http;

class ReadDataPage extends StatefulWidget {
  ReadDataPage({Key? key}) : super(key: key);

  @override
  _ReadDataPageState createState() => _ReadDataPageState();
}

class _ReadDataPageState extends State<ReadDataPage> {
  var contenido = "Hola FES Acatlán Despierten";
  var urlImage = "";
  var isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadFile().then((value) {
      setState(() {
        contenido = value;
        createAlbum(contenido);
      });
    });

    _getJsonFile();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Read Data")),
      body: Container(
        child: Center(
          child: !isLoading
              ? CircularProgressIndicator()
              : Image.network(
                  urlImage,
                  height: 200,
                  width: 200,
                ),
        ),
      ),
    );
  }

  Future<String> _loadFile() async {
    return await rootBundle.loadString("assets/files/datos.txt");
  }

  void _getJsonFile() async {
    final url = "https://jsonplaceholder.typicode.com/photos/2";
    final parseUrl = Uri.parse(url);
    final response = await http.get(parseUrl);
    if (response.statusCode == 200) {
      print(response.body);
    }
  }

  void createAlbum(String jsonData) {
    final jsonMap = jsonDecode(jsonData);
    final album = Album.fromJson(jsonMap);
    setState(() {
      urlImage = album.thumbnailUrl;
      isLoading = true;
    });
  }
}
