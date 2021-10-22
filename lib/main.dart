import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert'; 
import 'second.dart';// for using json.decode()

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Testing',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //inisiasi data
  @override
  void initState() {
    _fetchData();
    super.initState();
  }

  // The list that contains information about photos
  List _loadedPhotos = [];

  // The function that fetches data from the API
  Future<void> _fetchData() async {

    final response = await http.get(Uri.parse('https://web-kg2.herokuapp.com/api/artikel'));
    final data = json.decode(response.body);

    setState(() {
      _loadedPhotos = data;
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF2995B2),
          leading: GestureDetector(
          onTap: (){
            print("asd");
          },
          child: const Icon(Icons.arrow_back_ios)
        ),
        actions: <Widget>[
    Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: () {},
        child: const Icon(
            Icons.more_vert,
          ),
      )
    ),]
      ),
      
        body: SafeArea(
            child:ListView.builder(
                    itemCount: _loadedPhotos.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return ListTile(
                        leading: Container(
                          color: Colors.blue,
                          width: 150,
                          
                        ),
                        // leading: Image.network(
                        //   _loadedPhotos[index]["gambar"],
                        //   width: 150,
                        //   fit: BoxFit.cover,
                        // ),
                        title: Text(_loadedPhotos[index]['judul']),
                        subtitle:
                            Text(_loadedPhotos[index]["deskripsi"]),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Second()));
                        },
                      );
                    },
                  ))));
  }
}

///TODO: flutter run -d chrome --web-renderer html