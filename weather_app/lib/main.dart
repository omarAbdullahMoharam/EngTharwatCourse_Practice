import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/view/home_view.dart';

import 'cubits/get_weather_cubit/get_weather_cubit.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    // بحدد المكان الى هحتاج انادي ال الاستيت فيه على اساس المكان الى شامل الاتنين مع بعض
    // عشان انفذ فكره ال shared state اللى هيها الاستيت بتاعتي بعد كل مرة
    // this done Using BlocProvider and BlocListener
    // applying the approch of InheritedWidgets
    // to find the shared widget that will be used in multiple places as
    //  the same scope concept
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Weather App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
          useMaterial3: true,
        ),
        home: const HomeView(),
      ),
    );
  }
}
