import 'package:flutter/material.dart';
import 'package:language_learning_app/models/item_model.dart';
import 'package:language_learning_app/services/audio_manager.dart';

class ItemInfo extends StatelessWidget {
  ItemInfo({required this.itemModel, required this.color});
  AudioManager player = AudioManager();
  final Color color;
  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 311.4,
      color: color,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemModel.jabTitle,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  itemModel.engTitle,
                  style: const TextStyle(color: Colors.white, fontSize: 17),
                ),
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            IconButton(
              onPressed: () async {
                await player.playSound(itemModel.soundPath);
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
