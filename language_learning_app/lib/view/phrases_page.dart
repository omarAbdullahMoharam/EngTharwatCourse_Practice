import 'package:flutter/material.dart';
import 'package:language_learning_app/components/phrasesItem.dart';
import 'package:language_learning_app/models/colors.dart';
import 'package:language_learning_app/models/phrases.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({super.key});
  List<Phrases> phraseItem = const [
    Phrases(
      Jabphrase: "Kōdoku suru koto o wasurenaide kudasai",
      Engphrase: "don't forget to subscribe",
      soundPath: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    Phrases(
      Jabphrase: "Watashi wa puroguramingu ga daisukidesu ",
      Engphrase: "i love programming",
      soundPath: 'sounds/phrases/i_love_programming.wav',
    ),
    Phrases(
      Jabphrase: "Puroguramingu wa kantandesu",
      Engphrase: "programming is easy",
      soundPath: 'sounds/phrases/programming_is_easy.wav',
    ),
    Phrases(
      Jabphrase: "Doko ni iku no",
      Engphrase: "where are you going",
      soundPath: 'sounds/phrases/where_are_you_going.wav',
    ),
    Phrases(
      Jabphrase: "Namae wa nandesu ka",
      Engphrase: "what is your name?",
      soundPath: 'sounds/phrases/what_is_your_name.wav',
    ),
    Phrases(
      Jabphrase: "Watashi wa anime ga daisukidesu",
      Engphrase: "I love anime",
      soundPath: 'sounds/phrases/i_love_anime.wav',
    ),
    Phrases(
      Jabphrase: "Go kibun wa ikagadesu ka",
      Engphrase: "how are you feeling?",
      soundPath: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    Phrases(
      Jabphrase: "Kimasu ka",
      Engphrase: "Are you coming?",
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
          return PhrasesItem(
            statement: phraseItem[index],
            color: const Color(0xFF2D2994),
          );
        },
      ),
    );
  }
}
