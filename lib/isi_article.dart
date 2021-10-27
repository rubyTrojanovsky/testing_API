import 'articlelist2.dart';
import 'model_artikel.dart';
import 'package:flutter/material.dart';


class IsiArticle extends StatelessWidget{
 final String judul;
 final String isiArtikel;

  const IsiArticle({Key? key, required this.judul, required this.isiArtikel}) : super(key: key);

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