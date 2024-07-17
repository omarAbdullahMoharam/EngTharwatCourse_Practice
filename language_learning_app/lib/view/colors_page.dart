import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:language_learning_app/components/custom_item_component.dart';
import 'package:language_learning_app/models/item_model.dart';

// ignore: use_key_in_widget_constructors, must_be_immutable
class ColorsPage extends StatelessWidget {
  List<ItemModel> colorsItem = const [
    ItemModel(
      image: 'assets/images/colors/red.png',
      JabTitle: 'Aka',
      EngTitle: 'Red',
      soundPath: 'sounds/colors/red.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/white.png',
      JabTitle: 'Shiro',
      EngTitle: 'White',
      soundPath: 'sounds/colors/white.wav',
    ),
    ItemModel(
        image: 'assets/images/colors/green.png',
        JabTitle: 'Midori',
        EngTitle: 'Green',
        soundPath: 'assets/sounds/colors/green.wav'),
    ItemModel(
        image: 'assets/images/colors/black.png',
        JabTitle: 'Kuro',
        EngTitle: 'Black',
        soundPath: 'sounds/colors/black.wav'),
    ItemModel(
        image: 'assets/images/colors/yellow.png',
        JabTitle: 'Ki-iro',
        EngTitle: 'Yellow',
        soundPath: 'sounds/colors/yellow.wav'),
    ItemModel(
        image: 'assets/images/colors/gray.png',
        JabTitle: 'Haiiro',
        EngTitle: 'Gray',
        soundPath: 'sounds/colors/gray.wav'),
    ItemModel(
        image: 'assets/images/colors/dusty_yellow.png',
        JabTitle: 'Kusunda-iro',
        EngTitle: 'Dusty',
        soundPath: 'sounds/colors/dusty_yellow.wav'),
    ItemModel(
        image: 'assets/images/colors/brown.png',
        JabTitle: 'Chairo',
        EngTitle: 'Brown',
        soundPath: 'sounds/colors/brown.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Colors',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xFF7D40A2),
        ),
        body: ListView.builder(
            itemCount: colorsItem.length,
            itemBuilder: (context, index) {
              log('\nSlice number $index _______________________');
              return CustomItemComponent(
                  colorsItem[index], Colors.indigoAccent);
            }));
  }
}
