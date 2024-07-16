import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language_learning_app/models/phrases.dart';

class PhrasesItem extends StatelessWidget {
  final Phrases statement;
  final Color color;
  // ignore: use_key_in_widget_constructors

  AudioPlayer player = AudioPlayer();

  PhrasesItem({required this.statement, required this.color});
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
                statement.Jabphrase,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              const SizedBox(
                  // height: 5,
                  ),
              Text(
                statement.Engphrase,
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
            flex: 9,
          ),
          IconButton.outlined(
            onPressed: () async {
              player.play(AssetSource(statement.soundPath));
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
