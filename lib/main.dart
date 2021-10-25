import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
// import 'Article.dart'; // for using json.decode()

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Testing',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

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
  List _articleData = [];

  // The function that fetches data from the API
  Future<void> _fetchData() async {
    final response =
        await http.get(Uri.parse('https://web-kg2.herokuapp.com/api/artikel'));
    final data = jsonDecode(response.body);

    setState(() {
      _articleData = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: const Color(0xFF2995B2),
                leading: GestureDetector(
                    onTap: () {
                      print("asd");
                    },
                    child: const Icon(Icons.arrow_back_ios)),
                actions: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.more_vert,
                        ),
                      )),
                ]),
            body: SafeArea(
                child: ListView.builder(
              itemCount: _articleData.length,
              itemBuilder: (BuildContext ctx, index) {
                return Card(
                    elevation: 5.0,
                    margin: const EdgeInsets.all(20),
                    child: ListTile(
                      // leading: Container(
                      //   color: Colors.blue,
                      //   width: 150,
                      // ),
                      leading: Image.network(
                        _articleData[index]["gambar"],
                        
                        fit: BoxFit.cover,
                      ),
                      title: Text(_articleData[index]['judul']),
                      subtitle: Text(_articleData[index]["deskripsi"]),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Article(judul: _articleData[index]['judul'], isiArtikel: _articleData[index]["deskripsi"],)));
                      },
                    ));
              },
            ))));
  }
}

class Article extends StatelessWidget{
 final String judul;
 final String isiArtikel;

  const Article({Key? key, required this.judul, required this.isiArtikel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF2995B2),
          leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  judul,
                ),
              ),
            ),
            Center(
              child: Text(
                isiArtikel,
              ),
            )
          ],
        ),
      ),
    );
    
  }
}

///TODO: flutter run -d chrome --web-renderer html