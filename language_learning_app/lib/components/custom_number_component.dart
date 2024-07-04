import 'package:flutter/material.dart';
import 'package:language_learning_app/models/number.dart';

class CustomNumberComponent extends StatelessWidget {
  // CustomNumberComponent(
  //     {required this.image, required this.jabanies, required this.english});

  const CustomNumberComponent({required this.number, super.key});
  final Number number;
  // String jabanies;
  // String english;
  // String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF09135),
      child: Container(
        padding: const EdgeInsets.only(right: 8.0),
        width: double.infinity,
        child: Row(
          children: [
            Container(
              width: 100,
              height: 95,
              color: const Color(0xFFFFF3DF),
              child: Image.asset(number.image),
            ),
            Container(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    number.Jabanies,
                    style: const TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  Text(
                    number.English,
                    style: const TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 32,
            ),
          ],
        ),
      ),
    );
  }
}
