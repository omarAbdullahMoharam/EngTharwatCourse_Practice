import 'package:flutter/material.dart';
import 'package:language_learning_app/core/custom_slice.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF4D9),
      appBar: AppBar(
        title: const Text(
          'Toku',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF6B4226),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSlice(
            text: 'Numbers',
            color: const Color(0xFFF99531),
          ),
          // Container(
          //   padding: const EdgeInsets.only(left: 20),
          //   height: 70,
          //   width: double.infinity,
          //   color: const Color(0xFFF99531),
          //   alignment: Alignment.centerLeft,
          //   child: const Text(
          //     'Numbers',
          //     style: TextStyle(color: Colors.white, fontSize: 25),
          //   ),
          // ),
          CustomSlice(
            text: 'Family Members',
            color: const Color(0xff528032),
          ),
          // Container(
          //   width: double.infinity,
          //   height: 70,
          //   padding: const EdgeInsets.only(left: 20),
          //   color:  const Color(0xff528032),
          //   alignment: Alignment.centerLeft,
          //   child: const Text(
          //    'Family Members' ,
          //     style: TextStyle(
          //       color: Colors.white,
          //       fontSize: 25,
          //     ),
          //   ),
          // ),
          CustomSlice(
            text: 'Colors',
            color: const Color(0xFF7D40A2),
          ),
          // Container(
          //   padding: const EdgeInsets.only(left: 20),
          //   width: double.infinity,
          //   height: 70,
          //   alignment: Alignment.centerLeft,
          //   color: const Color(0xFF7D40A2),
          //   child: const Text(
          //     'Colors',
          //     style: TextStyle(
          //       fontSize: 25,
          //       color: Colors.white,
          //     ),
          //   ),
          // ),
          CustomSlice(
            text: 'Phrases',
            color: const Color(0xFF47A5CB),
          ),
          // Container(
          //   width: double.infinity,
          //   height: 70,
          //   alignment: Alignment.centerLeft,
          //   padding: const EdgeInsets.only(left: 20),
          //   color: const Color(0xFF47A5CB),
          //   child: const Text(
          //     'Phrases',
          //     style: TextStyle(
          //       color: Colors.white,
          //       fontSize: 25,
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
