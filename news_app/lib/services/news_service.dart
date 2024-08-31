import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:news_app/models/news_model.dart';

class NewsService {
  Dio dio = Dio();

  NewsService(this.dio);

  // create gitNews response 🔻
  Future<List<NewsModel>> getNews() async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/everything?q=bitcoin&apiKey=bfac70098f3e46ec86b785ec82e7dbdf');
      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      log(jsonData['status']);
      List<NewsModel> newsList = [];
      for (var article in articles) {
        NewsModel news = NewsModel(
          title: article['title'],
          description: article['description'],
          urlToImage: article['urlToImage'],
        );
        log(article['urlToImage'] ?? 'no image');

        newsList.add(news);
      }
      return newsList;
    } catch (e) {
      log(e.toString());
      return [];
    }
  }
}
