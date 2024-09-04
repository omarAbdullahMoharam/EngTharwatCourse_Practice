import 'package:flutter/material.dart';

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
          },
        ),
        title: const Text(
          'Search a City',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Center(
          child: TextFormField(
        decoration: const InputDecoration(
          hintText: 'Enter a city',
          fillColor: Colors.white,
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide.none,
          ),
        ),
        style: const TextStyle(color: Colors.orange, fontSize: 24),
        textAlign: TextAlign.center,
      )),
    );
  }
}
