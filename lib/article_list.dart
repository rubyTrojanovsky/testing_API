import 'isi_article.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'model_artikel.dart';

class ArticleList extends StatelessWidget {
  const ArticleList({Key? key}) : super(key: key);

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
          child: FutureBuilder<List<ArticleDataList>>(
            future: _fetchData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemExtent: 120,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 5.0,
                        margin: const EdgeInsets.all(10),
                        child: ListTile(
                          // leading: Image.network(
                          //   snapshot.data![index].gambar,
                          //   fit: BoxFit.cover,
                          // ),
                          title: Text(snapshot.data![index].judul,
                          style: const TextStyle(fontSize: 18),),
                          subtitle: Text(snapshot.data![index].deskripsi),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => IsiArticle(
                                          judul: snapshot.data![index].judul,
                                          isiArtikel:
                                              snapshot.data![index].deskripsi,
                                        )));
                          },
                        ),
                      );
                    });
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }

  Future<List<ArticleDataList>> _fetchData() async {
    final response =
        await http.get(Uri.parse('https://web-kg2.herokuapp.com/api/artikel'));
    Map<String, dynamic> map = jsonDecode(response.body);
    List<dynamic> data = map['data'];
    List<ArticleDataList> articleData = createArticleList(data);
    return articleData;
  }

  List<ArticleDataList> createArticleList(List data) {
    List<ArticleDataList> daftarArticle = [];
    for (int i = 0; i < data.length; i++) {
      String judul = data[i]['judul'];
      String deskripsi = data[i]['deskripsi'];
      String gambar = data[i]['gambar'];

      ArticleDataList konten =
          ArticleDataList(judul: judul, gambar: gambar, deskripsi: deskripsi);
      daftarArticle.add(konten);
    }
    return daftarArticle;
  }
}
