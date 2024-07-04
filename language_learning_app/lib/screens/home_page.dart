import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:language_learning_app/components/custom_slice.dart';
import 'package:language_learning_app/screens/colors_page.dart';
import 'package:language_learning_app/screens/family_page.dart';
import 'package:language_learning_app/screens/numbers_page.dart';
import 'package:language_learning_app/screens/phrases_page.dart';

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
            // 🚨🚨the most Important Explanation until now 🚨🚨
            // جزء ال navigation عباره عن
            // context ----> To know the place and the available space and widget details
            // MaterialPageRouter takes Builder ( context ) ===> anonymous function parameters
            // anonymous function Body as follows :
            //{
            // the body of the anonymous function is the needed return widget page to Navigate for
            // }

            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return const NumbersPage();
                }),
              );
              log('Number page navigator');
            },
            text: 'Numbers',
            color: const Color(0xFFF99531),
          ),
          CustomSlice(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return const FamilyMembersPage();
                }),
              );
              log('Family Members');
            },
            text: 'Family Members',
            color: const Color(0xff528032),
          ),
          CustomSlice(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return const ColorsPage();
                }),
              );
              log('Colors');
            },
            text: 'Colors',
            color: const Color(0xFF7D40A2),
          ),
          CustomSlice(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return const PhrasesPage();
                }),
              );
              log('Phrases');
            },
            text: 'Phrases',
            color: const Color(0xFF47A5CB),
          ),
        ],
      ),
    );
  }
}
