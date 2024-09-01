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
        'https://newsdata.io/api/1/latest?apikey=pub_52369562ac0f19f7a74577ec9d38a1ddafe83&category=$category&country=us',
      );
      final List<dynamic> data = response.data['results'];
      List<NewsModel> newsList = [];
      for (var news in data) {
        newsList.add(
          NewsModel(
            title: news['title'],
            description: news['description'] ?? '',
            urlToImage: news['image_url'],
          ),
        );
      }

      return newsList;
    } catch (e) {
      // Handle error
      throw Exception('Failed to load news');
    }
  }
}
