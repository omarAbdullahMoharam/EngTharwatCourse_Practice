import 'package:flutter/material.dart';
import 'package:language_learning_app/models/item_model.dart';
import 'package:language_learning_app/services/audio_manager.dart';

class PhrasesItem extends StatelessWidget {
  final ItemModel statement;
  final Color color;
  // ignore: use_key_in_widget_constructors

  AudioManager player = AudioManager();

  PhrasesItem({super.key, required this.statement, required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      padding: const EdgeInsets.only(
        right: 8.0,
        top: 10,
      ),
      width: double.infinity,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                statement.JabTitle,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              // const SizedBox(
              //     // height: 5,
              //     ),
              Text(
                statement.EngTitle,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
          const Spacer(
            flex: 8,
          ),
          IconButton.outlined(
            onPressed: () async {
              await player.playSound(statement.soundPath);
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }
}
