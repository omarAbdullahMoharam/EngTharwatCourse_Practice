import 'package:audioplayers/audioplayers.dart';

class AudioManager {
  String soundPath;
  AudioManager({required this.soundPath});
  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(soundPath));
  }
}
