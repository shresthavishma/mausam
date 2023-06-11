import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class MusicPlayerProvider extends ChangeNotifier {
  AudioPlayer player = AudioPlayer();
  bool _isPlaying = false;
  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;

  get setUrl => _setUrl;
  get isPlaying => _isPlaying;
  get duration => _duration;
  get position => _position;

  void _setUrl(String url) async {
    final res = await player.setAsset("assets/audio/clear/$url");
    _duration = res!;
    notifyListeners();
  }

  void playMusic() async {
    await player.play();

    _isPlaying = true;
    notifyListeners();
  }

  void pauseMusic() async {
    await player.pause();
    notifyListeners();
    _isPlaying = false;
    notifyListeners();
  }

  void stopPusic() async {
    await player.stop();
    notifyListeners();
  }

  void close() async {
    await player.dispose();
  }
}
