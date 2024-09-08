import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';
import 'get_weather_state.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(WeatherInitialState());
  late WeatherModel weatherData;

  Future<void> getWeather(String city) async {
    try {
      // ignore: unused_local_variable
      weatherData = await WeatherService(dio: Dio()).getWeatherData(city: city);
      emit(WeatherLoadedState());
    } catch (e) {
      log(e.toString());
      emit(WeatherFailedState());
    }
  }
}
