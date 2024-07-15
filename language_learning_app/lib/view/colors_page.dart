import 'package:flutter/material.dart';
import 'package:language_learning_app/components/custom_item_component.dart';
import 'package:language_learning_app/models/colors.dart';

// ignore: use_key_in_widget_constructors, must_be_immutable
class ColorsPage extends StatelessWidget {
  List<colors> colorsItem = const [
    colors(
        JabColor: 'Aka',
        EngColor: 'Red',
        image: 'assets/images/colors/red.png',
        soundPath: 'sounds/colors/red.wav'),
    colors(
        JabColor: 'Shiro',
        EngColor: 'White',
        image: 'assets/images/colors/white.png',
        soundPath: 'sounds/colors/white.wav'),
    colors(
        JabColor: 'Midori',
        EngColor: 'Green',
        image: 'assets/images/colors/green.png',
        soundPath: 'assets/sounds/colors/green.wav'),
    colors(
        JabColor: 'Kuro',
        EngColor: 'Black',
        image: 'assets/images/colors/black.png',
        soundPath: 'sounds/colors/black.wav'),
    colors(
        JabColor: 'Ki-iro',
        EngColor: 'Yellow',
        image: 'assets/images/colors/yellow.png',
        soundPath: 'sounds/colors/yellow.wav'),
    colors(
        JabColor: 'Haiiro',
        EngColor: 'Gray',
        image: 'assets/images/colors/gray.png',
        soundPath: 'sounds/colors/gray.wav'),
    colors(
        JabColor: 'Kusunda-iro',
        EngColor: 'Dusty',
        image: 'assets/images/colors/dusty_yellow.png',
        soundPath: 'sounds/colors/dusty_yellow.wav'),
    colors(
        JabColor: 'Chairo',
        EngColor: 'Brown',
        image: 'assets/images/colors/brown.png',
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
              return CustomItemComponent.colors(
                  colorsStyle: colorsItem[index], color: Colors.indigoAccent);
            }));
  }
}
