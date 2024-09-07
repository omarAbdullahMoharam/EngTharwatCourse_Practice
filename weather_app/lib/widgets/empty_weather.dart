import 'package:flutter/material.dart';

class EmptyWeatherLocation extends StatelessWidget {
  const EmptyWeatherLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'There is no weather 😞 Start Searching now🔍',
                style: TextStyle(fontSize: 24),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
