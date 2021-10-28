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
  List<Album>? albums;

  @override
  void initState() {
    super.initState();
    getListAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Read Data")),
      body: Container(
        child: Center(
          child: !isLoading
              ? CircularProgressIndicator()
              : ListView.builder(
                  itemCount: albums!.length,
                  itemBuilder: (context, index) {
                    return Image.network(albums![index].thumbnailUrl);
                  },
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
  }

  void createAlbum(String jsonData) {
    final jsonMap = jsonDecode(jsonData);
    final album = Album.fromJson(jsonMap);
    setState(() {
      urlImage = album.thumbnailUrl;
      isLoading = true;
    });
  }

  void getListAlbum() async {
    final url = "https://jsonplaceholder.typicode.com/albums/1/photos";
    final parseUrl = Uri.parse(url);
    final response = await http.get(parseUrl);
    if (response.statusCode == 200) {
      final jsonMap = jsonDecode(response.body) as List;
      setState(() {
        albums = jsonMap.map((e) => Album.fromJson(e)).toList();
        isLoading = true;
      });
    }
  }
}
