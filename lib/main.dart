import 'package:flutter/material.dart';
import 'article_list.dart';

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
      title: 'Artikel',
      home: DiscussPage(),
    );
  }
}


///TODO: flutter run -d chrome --web-renderer html