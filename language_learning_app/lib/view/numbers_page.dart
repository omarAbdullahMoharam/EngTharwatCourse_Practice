// ignore_for_file: must_be_immutable

import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:language_learning_app/components/custom_item_component.dart';
import 'package:language_learning_app/models/item_model.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({super.key});
  // initialize a list to store objects as a group
  List<ItemModel> numbers = const [
    ItemModel(
        image: 'assets/images/numbers/one.png',
        JabTitle: 'ichi',
        EngTitle: 'One',
        soundPath: 'sounds/numbers/one_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/two.png',
        JabTitle: 'Ni',
        EngTitle: 'Two',
        soundPath: 'sounds/numbers/two_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/three.png',
        JabTitle: 'San',
        EngTitle: 'Three',
        soundPath: 'sounds/numbers/three_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/four.png',
        JabTitle: 'Shi',
        EngTitle: 'Four',
        soundPath: 'sounds/numbers/four_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/five.png',
        JabTitle: 'Go',
        EngTitle: 'Five',
        soundPath: 'sounds/numbers/five_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/six.png',
        JabTitle: 'Roku',
        EngTitle: 'Six',
        soundPath: 'sounds/numbers/six_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/seven.png',
        JabTitle: 'Sebun',
        EngTitle: 'Seven',
        soundPath: 'sounds/numbers/seven_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/eight.png',
        JabTitle: 'hachi',
        EngTitle: 'Eight',
        soundPath: 'sounds/numbers/eight_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/nine.png',
        JabTitle: 'Kyū',
        EngTitle: 'Nine',
        soundPath: 'sounds/numbers/nine_sound.mp3'),
    ItemModel(
      image: 'assets/images/numbers/ten.png',
      JabTitle: 'Jū',
      EngTitle: 'Ten',
      soundPath: 'sounds/numbers/ten_sound.mp3',
    )
  ];

//=> Hint 🚨
// ListView ==>  بتبني كل الليست مره واحده وده بيقلل من البيرفورمانس ومش لازم يكونو زي بعض ممكن تبني ويدجتس مختلفه عادي
// listView.builder ==>  بيبني على قد الاسكرين وبس ولو احتاجت تاني اما تعمل اسكرول بيبدأ يبني الباقي ولازم الويدجتس تكون متكرره يعني كلهم نفس الديزاين

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
      //==>🚨🚨Hard coded Example to show how to make a dynamic listView builder
      //this is the calling to start the widget building by:
      //Passing the callItemsBuilder function as a children of listview
      // body: ListView(
      //   children: getItems(numbers),
      // ),

      // 👌👌👌👌👌

      //🔻🔻built in builder catalog for ListView.builder
      body: ListView.builder(
        //number of built items on the screen
        itemCount: numbers.length,
        //pointer and context to recognize the widget
        //iterator index to iterate on the passed list
        itemBuilder: (context, index) {
          log('\nSlice number $index _______________________');
          // returns each widget item of the passed list

          return CustomItemComponent(
            numbers[index],
            const Color(
              0xFFF09135,
            ),
          );
        },
      ),
    );
  }
}

// 🤷‍♂️How Listview.builder works 🤔
//the logic of how Listview.builder works
List<Widget> callItemsBuilder(List<ItemModel> numbers) {
  //empty list to fill the built widgets in the builder iterates on it to show
  //on the Numbers Screen
  List<Widget> filledList = [];
  for (int i = 0; i < numbers.length; i++) {
    filledList.add(
      CustomItemComponent(
        numbers[i],
        const Color(0xFFF09135),
      ),
    );
  }
  return filledList;
}
