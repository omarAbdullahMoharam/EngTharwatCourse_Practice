import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/view/home_view.dart';

import 'cubits/get_weather_cubit/get_weather_cubit.dart';
import 'cubits/get_weather_cubit/get_weather_state.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: BlocListener<GetWeatherCubit, WeatherState>(
        listener: (context, state) {
          if (state is WeatherLoadedState) {
            // Log to confirm state change
            log('Weather condition: ${state.weatherData.weatherState}');
          }
        },
        child: Builder(
          builder: (context) => BlocBuilder<GetWeatherCubit, WeatherState>(
            builder: (context, state) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  primarySwatch: getThemeColor(
                    BlocProvider.of<GetWeatherCubit>(context)
                        .weatherData
                        ?.weatherState,
                  ),
                ),
                title: 'Weather App',
                home: const HomeView(),
              );
            },
          ),
        ),
      ),
    );
  }
}

MaterialColor getThemeColor(String? weatherCondition) {
  if (weatherCondition == null) {
    return Colors.blue;
  } else {
    // Trim spaces and convert to lowercase for case-insensitive matching
    weatherCondition = weatherCondition.trim().toLowerCase();

    switch (weatherCondition) {
      case 'sunny':
      case 'clear':
        return Colors.orange;
      case 'partly cloudy':
        return Colors.lightBlue;
      case 'cloudy':
      case 'overcast':
        return Colors.grey;
      case 'mist':
      case 'fog':
      case 'freezing fog':
        return Colors.blueGrey;
      case 'patchy rain possible':
      case 'light rain':
      case 'moderate rain':
      case 'heavy rain':
      case 'light rain shower':
      case 'moderate or heavy rain shower':
      case 'torrential rain shower':
        return Colors.blue;
      case 'patchy snow possible':
      case 'light snow':
      case 'moderate snow':
      case 'heavy snow':
      case 'light snow showers':
      case 'moderate or heavy snow showers':
      case 'patchy light snow':
        return Colors.lightBlue;
      case 'thundery outbreaks possible':
      case 'moderate or heavy rain with thunder':
        return Colors.purple;
      case 'patchy sleet possible':
      case 'light sleet':
      case 'moderate or heavy sleet':
      case 'light sleet showers':
      case 'moderate or heavy sleet showers':
        return Colors.teal;
      case 'ice pellets':
      case 'light showers of ice pellets':
      case 'moderate or heavy showers of ice pellets':
        return Colors.cyan;
      case 'freezing drizzle':
      case 'light freezing rain':
      case 'moderate or heavy freezing rain':
        return Colors.indigo;
      default:
        log('Unhandled weather condition: $weatherCondition');
        return Colors.blue;
    }
  }
}
