// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
            // Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Search a City',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: TextField(
          // will be triggered when the user is typing in the text field....
          // onChanged: (value) {},
          // will be triggered when the user finishes typing and submits the text field using  presses enter...
          // onSubmitted: (value) {},
          onSubmitted: (cityName) async {
            log(cityName.toString());
            var weatherData = BlocProvider.of<GetWeatherCubit>(context);
            await weatherData.getWeather(cityName);
            Navigator.pop(context, weatherData);
          },
          decoration: InputDecoration(

              // labelText: 'City',
              label: const Text(
                'Search 🌍',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              alignLabelWithHint: true,
              floatingLabelAlignment: FloatingLabelAlignment.start,
              labelStyle: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              suffixIcon: const Padding(
                padding: EdgeInsets.only(right: 12.0),
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              hintText: 'Enter City Name',
              fillColor: Colors.white,
              hintStyle: const TextStyle(color: Colors.grey),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                borderSide: BorderSide(
                  width: 2.0,
                ),
              ),
              filled: true,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 25.0,
                vertical: 16.0,
              )
              // enabledBorder: const OutlineInputBorder(
              //   borderRadius: BorderRadius.all(
              //     Radius.circular(10.0),
              //   ),
              //   borderSide: BorderSide(color: Colors.red, width: 2.0),
              // ),
              // focusedBorder: OutlineInputBorder(
              //   borderRadius: BorderRadius.all(
              //     Radius.circular(10.0),
              //   ),
              //   borderSide: BorderSide(
              //       color: Color.fromARGB(255, 0, 255, 17), width: 2.0),
              // ),
              ),
          style: const TextStyle(
            color: Colors.orange,
            fontSize: 24,
          ),
          textAlign: TextAlign.justify,
        ),
      )),
    );
  }
}
