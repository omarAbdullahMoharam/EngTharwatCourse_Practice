import 'package:flutter/material.dart';
import 'package:weather_app/widgets/empty_weather.dart';
import 'package:weather_app/view/search_view.dart';

import '../model/weather_model.dart';
import '../widgets/weather_info.dart';

WeatherModel? weatherData;

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: const Icon(Icons.search),
              color: Colors.white,
              onPressed: () {
                Navigator.of(
                  context,
                ).push(
                  MaterialPageRoute(
                    builder: (context) => const SearchView(),
                  ),
                );
              },
            ),
          ),
        ],
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: weatherData == null
          ? const EmptyWeatherLocation()
          : const WeatherInfoBody(),
    );
  }
}
