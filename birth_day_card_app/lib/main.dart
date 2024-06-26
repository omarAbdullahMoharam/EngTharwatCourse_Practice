import 'package:flutter/material.dart';

void main() {
  runApp(const BirthDayCard());
}

class BirthDayCard extends StatelessWidget {
  const BirthDayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Color.fromARGB(255, 210, 188, 213),
        backgroundColor: Color(0xffD2BCD5),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Center(
              child: Image(
                image: AssetImage(
                  "Assets/BirthDayCard.png",
                ),
                repeat: ImageRepeat.repeat,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
