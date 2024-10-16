import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:language_learning_app/components/item_info.dart';
import 'package:language_learning_app/models/item_model.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({super.key});
  List<ItemModel> phraseItem = const [
    ItemModel(
      jabTitle: "Kōdoku suru koto o wasurenaide kudasai",
      engTitle: "don't forget to subscribe",
      soundPath: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    ItemModel(
      jabTitle: "Watashi wa puroguramingu ga daisukidesu ",
      engTitle: "i love programming",
      soundPath: 'sounds/phrases/i_love_programming.wav',
    ),
    ItemModel(
      jabTitle: "Puroguramingu wa kantandesu",
      engTitle: "programming is easy",
      soundPath: 'sounds/phrases/programming_is_easy.wav',
    ),
    ItemModel(
      jabTitle: "Doko ni iku no",
      engTitle: "where are you going",
      soundPath: 'sounds/phrases/where_are_you_going.wav',
    ),
    ItemModel(
      jabTitle: "Namae wa nandesu ka",
      engTitle: "what is your name?",
      soundPath: 'sounds/phrases/what_is_your_name.wav',
    ),
    ItemModel(
      jabTitle: "Watashi wa anime ga daisukidesu",
      engTitle: "I love anime",
      soundPath: 'sounds/phrases/i_love_anime.wav',
    ),
    ItemModel(
      jabTitle: "Go kibun wa ikagadesu ka",
      engTitle: "how are you feeling?",
      soundPath: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    ItemModel(
      jabTitle: "Kimasu ka",
      engTitle: "Are you coming?",
      soundPath: 'sounds/phrases/are_you_coming.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Phrases",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF46A5CB),
      ),
      body: ListView.builder(
        itemCount: phraseItem.length,
        itemBuilder: (context, index) {
          log('\nSlice number $index _______________________');
          return Container(
            color: const Color(0xFF2D2994),
            padding: const EdgeInsets.only(left: 8),
            child: ItemInfo(
              itemModel: phraseItem[index],
              color: const Color(0xFF2D2994),
            ),
          );
        },
      ),
    );
  }
}
