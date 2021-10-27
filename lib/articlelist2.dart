import 'isi_article.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'model_artikel.dart';

class ArticleList extends StatelessWidget{
  const ArticleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Network Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Network Example'),
        ),
        body: Container(
          child: FutureBuilder<List<ArticleDataList>> (
            future: _fetchData(),
            builder: (context, snapshot) {

              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                           Text(snapshot.data![index].judul,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold)
                            ),
                           Divider()
                          ],
                      );
                    }
                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }


Future<List<ArticleDataList>>_fetchData() async {
    final response = await http.get(Uri.parse('https://web-kg2.herokuapp.com/api/artikel'));
        Map<String, dynamic> map = jsonDecode(response.body);
        List<dynamic> data = map['data'];
        List<ArticleDataList> articleData = createArticleList(data);
        return articleData;
  }

List<ArticleDataList> createArticleList(List data) {
    List<ArticleDataList> daftarArticle = [];
      for (int i = 0; i<data.length; i++) {
             String judul = data[i]['judul'];
             String deskripsi = data[i]['deskripsi'];
             String gambar = data[i]['gambar'];

             ArticleDataList konten = ArticleDataList(
               judul: judul, gambar: gambar, deskripsi: deskripsi);
               daftarArticle.add(konten);
          }
    return daftarArticle;
  }
}
