import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:language_learning_app/components/custom_number_component.dart';
import 'package:language_learning_app/models/number.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({super.key});
  // inintalize a list to store objects as a group
  List<Number> numbers = const [
    Number(
        image: 'assets/images/numbers/one.png',
        Jabanies: 'ichi',
        English: 'One'),
    Number(
        image: 'assets/images/numbers/two.png', Jabanies: 'Ni', English: 'Two'),
    Number(
        image: 'assets/images/numbers/three.png',
        Jabanies: 'San',
        English: 'Three'),
    Number(
        image: 'assets/images/numbers/four.png',
        Jabanies: 'Shi',
        English: 'Four'),
    Number(
        image: 'assets/images/numbers/five.png',
        Jabanies: 'Go',
        English: 'Five'),
    Number(
        image: 'assets/images/numbers/six.png',
        Jabanies: 'Roku',
        English: 'Six'),
    Number(
        image: 'assets/images/numbers/seven.png',
        Jabanies: 'Sebun',
        English: 'Seven'),
    Number(
        image: 'assets/images/numbers/eight.png',
        Jabanies: 'hachi',
        English: 'Eight'),
    Number(
        image: 'assets/images/numbers/nine.png',
        Jabanies: 'Kyuu',
        English: 'Nine'),
    Number(
        image: 'assets/images/numbers/ten.png', Jabanies: 'Juu', English: 'Ten')
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
      //==>🚨🚨Hard coded Example to show how to make a dynamic listview builder
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
          log('$index times');
          // returns each widget item of the passed list
          return CustomNumberComponent(number: numbers[index]);
        },
      ),
    );
  }
}

// 🤷‍♂️How Listview.builder works🤔
//the logic of how Listview.builder works
List<Widget> callItemsBuilder(List<Number> numbers) {
  //empty list to fill the built widgets in the builder iterates on it to show
  //on the Numbers Screen
  List<Widget> filledList = [];
  for (int i = 0; i < numbers.length; i++) {
    filledList.add(CustomNumberComponent(number: numbers[i]));
  }
  return filledList;
}
