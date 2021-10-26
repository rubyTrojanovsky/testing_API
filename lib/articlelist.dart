import 'isi_article.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'model_artikel.dart';

class ArticleList extends StatefulWidget {
  const ArticleList({Key? key}) : super(key: key);

  @override
  _ArticleListState createState() => _ArticleListState();
}

class _ArticleListState extends State<ArticleList> {
  // The list that contains information about photos
  List<ArticleDataList> articleData = [];
  var loading = false;
  // The function that fetches data from the API
  Future<void>_fetchData() async {
    setState(() {loading = true;});
    final response = await http.get(Uri.parse('https://web-kg2.herokuapp.com/api/artikel'));
    if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          for (Map i in data) {
             articleData.add(ArticleDataList.fromJson(i));
          }
         loading = false;
        });
        }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _fetchData();
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
                child: loading ? Center(child:CircularProgressIndicator()): 
              ListView.builder(
              itemCount: articleData.length,
              itemBuilder: (BuildContext ctx, i) {
                final article = articleData[i];
                return Card(
                    elevation: 5.0,
                    margin: const EdgeInsets.all(20),
                    child: ListTile(
                      leading: Container(
                        color: Colors.blue,
                        width: 150,
                      ),
                      // leading: Image.network(
                      //   article.gambar,
                      //   fit: BoxFit.cover,
                      // ),
                      title: Text(article.judul),
                      subtitle: Text(article.deskripsi),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => IsiArticle(judul: article.judul, isiArtikel:article.deskripsi ,)));
                      },
                    ));
              },
            ))));
  }
}