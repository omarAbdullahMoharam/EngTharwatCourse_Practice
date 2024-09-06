import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/model/weather_model.dart';

class WeatherService {
  final Dio dio;
  // final String domain = 'api.weatherapi.com';
  final String apiKey = 'c4a735134fa1473cb52173141240509';
  final String baseUrl = 'https://api.weatherapi.com/v1';

  WeatherService({required this.dio});
  Future<WeatherModel> getWeatherData({required String city}) async {
    try {
      Response response =
          await dio.get('$baseUrl/forecast.json?key=$apiKey&q=$city&days=1');
      WeatherModel weatherModelData = WeatherModel.fromJson(response.data);
      return weatherModelData;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          'DIOOOO OOPs something went wrong, try again later ';
      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('EXCEPTION OOOPs something went wrong, try again later');
    }
  }
}
