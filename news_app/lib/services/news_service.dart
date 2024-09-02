import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:news_app/models/news_model.dart';

class NewsService {
  final Dio _dio;
  NewsService(
    this._dio,
  );

  Future<List<NewsModel>> getLatest({required String category}) async {
    try {
      final response = await _dio.get(
          'https://api.worldnewsapi.com/search-news?source-countries=us&categories=$category&api-key=a654e5c46ea04af187a35d6de7b83535'
          // 🔻🔻Old API Link 🚨🚨🚨🚨🚨
          // 'https://newsdata.io/api/1/latest?apikey=pub_52369562ac0f19f7a74577ec9d38a1ddafe83&category=$category&country=us',
          );
      final List<dynamic> data = response.data['news'];
      List<NewsModel> newsList = [];

      for (var news in data) {
        // NewsModel newsModel = NewsModel.fromJson(news);
        newsList.add(NewsModel.fromJson(news));
      }
      log(newsList.toString());
      // log(newsList.url)
      return newsList;
    } catch (e) {
      // Handle error
      throw Exception('Failed to load news');
    }
  }
}
