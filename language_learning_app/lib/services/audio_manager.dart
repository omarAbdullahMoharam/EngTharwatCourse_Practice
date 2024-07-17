import 'package:audioplayers/audioplayers.dart';

class AudioManager {
  final AudioPlayer _audioPlayer = AudioPlayer();
  playSound(String soundPath) {
    _audioPlayer.play(AssetSource(soundPath));
  }
}
