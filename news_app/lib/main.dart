import 'package:flutter/material.dart';
import 'package:news_app/views/home_page.dart';

void main() {
  // NewsService(Dio()).getLatest();
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      home: HomePage(),
    );
  }
}
