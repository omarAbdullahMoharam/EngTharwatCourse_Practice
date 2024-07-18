import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/models/tune_model.dart';
import 'package:music_notes_player_app_setup/services/audio_manager.dart';

// ignore: must_be_immutable
class TuneItem extends StatelessWidget {
  final TuneModel tune;
  AudioManager audioManager = AudioManager();
  TuneItem({
    super.key,
    required this.tune,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          audioManager.playSound(tune.sound);
        },
        child: Container(
          color: tune.color,
        ),
      ),
    );
  }
}
