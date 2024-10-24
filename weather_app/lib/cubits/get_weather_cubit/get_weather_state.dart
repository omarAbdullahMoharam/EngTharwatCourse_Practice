import 'package:weather_app/model/weather_model.dart';

class WeatherState {}

class WeatherInitialState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  final WeatherModel weatherData;
  WeatherLoadedState({required this.weatherData});
}

class WeatherFailedState extends WeatherState {}
