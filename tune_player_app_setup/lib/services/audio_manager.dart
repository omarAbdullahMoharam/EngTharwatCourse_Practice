import 'package:audioplayers/audioplayers.dart';

class AudioManager {
  final player = AudioPlayer();

  playSound(String soundPath) {
    player.play(AssetSource(soundPath));
  }
}
