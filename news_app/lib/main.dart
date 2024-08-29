import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/views/home_page.dart';

void main() {
  getNews();
  runApp(const NewsApp());
}

// TODO: add splash screen Flutter native splash

// create gitNews response 🔻
final dio = Dio();

void getNews() async {
  final reponse = await dio.get(
      'https://newsapi.org/v2/everything?q=bitcoin&apiKey=6c4b419554ee41059dfd9bf0381ee1c8#');
  log(reponse.toString());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      home: HomePage(),
    );
  }
}
