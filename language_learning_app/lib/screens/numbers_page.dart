import 'package:flutter/material.dart';
import 'package:language_learning_app/components/custom_number_component.dart';
import 'package:language_learning_app/models/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  // => initalizing objects
  final Number one = const Number(
      image: 'assets/images/numbers/one.png', Jabanies: 'ichi', English: 'One');
  final Number two = const Number(
      image: 'assets/images/numbers/two.png', Jabanies: 'Ni', English: 'Two');
  final Number three = const Number(
      image: 'assets/images/numbers/three.png',
      Jabanies: 'San',
      English: 'Three');
  final Number four = const Number(
      image: 'assets/images/numbers/four.png',
      Jabanies: 'Shi',
      English: 'Four');
  final Number five = const Number(
      image: 'assets/images/numbers/five.png', Jabanies: 'Go', English: 'Five');
  final Number six = const Number(
      image: 'assets/images/numbers/six.png', Jabanies: 'Roku', English: 'Six');
  final Number seven = const Number(
      image: 'assets/images/numbers/seven.png',
      Jabanies: 'Sebun',
      English: 'Seven');
  final Number eight = const Number(
      image: 'assets/images/numbers/eight.png',
      Jabanies: 'hachi',
      English: 'Eight');
  final Number nine = const Number(
      image: 'assets/images/numbers/nine.png',
      Jabanies: 'Kyuu',
      English: 'Nine');
  final Number ten = const Number(
      image: 'assets/images/numbers/ten.png', Jabanies: 'Juu', English: 'Ten');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Numbers',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.brown,
      ),
      body: Container(
        color: const Color(0xFFF09135),
        child: ListView(
          children: [
            CustomNumberComponent(
              number: one,
              // image: one.image,
              // jabanies: one.Jabanies,
              // english: one.English,
            ),
            CustomNumberComponent(
              number: two,
              // image: two.image,
              // jabanies: two.Jabanies,
              // english: two.English,
            ),
            CustomNumberComponent(
              number: three,
              // image: three.image,
              // jabanies: three.Jabanies,
              // english: three.English,
            ),
            CustomNumberComponent(
              number: four,
              // image: four.image,
              // jabanies: four.Jabanies,
              // english: four.English,
            ),
            CustomNumberComponent(
              number: five,
              // image: five.image,
              // jabanies: five.Jabanies,
              // english: five.English,
            ),
            CustomNumberComponent(
              number: six,
              // image: six.image,
              // jabanies: six.Jabanies,
              // english: six.English,
            ),
            CustomNumberComponent(
              number: seven,
              // image: seven.image,
              // jabanies: seven.Jabanies,
              // english: seven.English,
            ),
            CustomNumberComponent(
              number: eight,
              // image: eight.image,
              // jabanies: eight.Jabanies,
              // english: eight.English,
            ),
            CustomNumberComponent(
              number: nine,
              // image: nine.image,
              // jabanies: nine.Jabanies,
              // english: nine.English,
            ),
            CustomNumberComponent(
              number: ten,
              // image: ten.image,
              // jabanies: ten.Jabanies,
              // english: ten.English,
            ),
          ],
        ),
      ),
    );
  }
}
