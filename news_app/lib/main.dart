import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/views/home_page.dart';

void main() {
  NewsService(Dio()).getNews();
  runApp(const NewsApp());
}

// TODO: add splash screen Flutter native splash

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
