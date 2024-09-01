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
          'https://api.worldnewsapi.com/search-news?source-countries=us&categories=$category&api-key=5d37f64c2bd24ce6aa759d435b93bcce'
          // 🔻🔻Old API Link 🚨🚨🚨🚨🚨
          // 'https://newsdata.io/api/1/latest?apikey=pub_52369562ac0f19f7a74577ec9d38a1ddafe83&category=$category&country=us',
          );
      final List<dynamic> data = response.data['news'];
      List<NewsModel> newsList = [];

      for (var news in data) {
        newsList.add(
          NewsModel(
            title: news['title'],
            //  configuration for the old API Link🎯👌👌
            // description: news['description'],
            description: news['summary'] ?? '',
            // urlToImage: news['image_url'],
            urlToImage: news['image'],
          ),
        );
      }
      log(newsList.toString());
      return newsList;
    } catch (e) {
      // Handle error
      throw Exception('Failed to load news');
    }
  }
}
