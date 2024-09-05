import 'package:dio/dio.dart';
import 'package:weather_app/model/weather_model.dart';

class WeatherService {
  final Dio dio;
  WeatherService({required this.dio});
  Future<WeatherModel> getWeatherData({required String city}) async {
    Response response = await dio.get(
        'https://api.weatherapi.com/v1/forecast.json?key=c4a735134fa1473cb52173141240509&q=$city&days=1&');
    WeatherModel weatherData = WeatherModel.fromJson(response.data);
    return weatherData;
  }
}
