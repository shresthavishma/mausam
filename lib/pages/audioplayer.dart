// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:songsbyweather/helper/weather_type.dart';
import 'package:songsbyweather/models/weather_location.dart';
import 'controlwidget.dart';

class AudioPlayerScreen extends StatefulWidget {
  const AudioPlayerScreen({super.key});

  @override
  State<AudioPlayerScreen> createState() => _AudioPlayerState();
}

class _AudioPlayerState extends State<AudioPlayerScreen> {
  late AudioPlayer _audioPlayer;
  int _currentpage = 0;
  final _cloudyplaylist = ConcatenatingAudioSource(
    children: [
      AudioSource.uri(Uri.parse("asset:///assets/audio/cloudy/a.mp3"),
          tag: 'song 1'),
      AudioSource.uri(Uri.parse("asset:///assets/audio/cloudy/b.mp3"),
          tag: 'song 2'),
      AudioSource.uri(Uri.parse("asset:///assets/audio/cloudy/c.mp3"),
          tag: 'song 3'),
      AudioSource.uri(Uri.parse("asset:///assets/audio/cloudy/d.mp3"),
          tag: 'song 4'),
      AudioSource.uri(Uri.parse("asset:///assets/audio/cloudy/e.mp3"),
          tag: 'song 5'),
      AudioSource.uri(Uri.parse("asset:///assets/audio/cloudy/f.mp3"),
          tag: 'song 6'),
      AudioSource.uri(Uri.parse("asset:///assets/audio/cloudy/g.mp3"),
          tag: 'song 7'),
    ],
  );
  final _rainyplaylist = ConcatenatingAudioSource(
    children: [
      AudioSource.uri(Uri.parse("asset:///assets/audio/rain/a.mp3"),
          tag: 'song 1'),
      AudioSource.uri(Uri.parse("asset:///assets/audio/rain/b.mp3"),
          tag: 'song 2'),
      AudioSource.uri(Uri.parse("asset:///assets/audio/rain/c.mp3"),
          tag: 'song 3'),
      AudioSource.uri(Uri.parse("asset:///assets/audio/rain/d.mp3"),
          tag: 'song 4'),
      AudioSource.uri(Uri.parse("asset:///assets/audio/rain/e.mp3"),
          tag: 'song 5'),
      AudioSource.uri(Uri.parse("asset:///assets/audio/rain/f.mp3"),
          tag: 'song 6'),
      AudioSource.uri(Uri.parse("asset:///assets/audio/rain/g.mp3"),
          tag: 'song 7')
    ],
  );
  final _clearplaylist = ConcatenatingAudioSource(
    children: [
      AudioSource.uri(Uri.parse("asset:///assets/audio/clear/a.mp3"),
          tag: 'song 1'),
      AudioSource.uri(Uri.parse("asset:///assets/audio/clear/b.mp3"),
          tag: 'song 2'),
      AudioSource.uri(Uri.parse("asset:///assets/audio/clear/c.mp3"),
          tag: 'song 3'),
      AudioSource.uri(Uri.parse("asset:///assets/audio/clear/d.mp3"),
          tag: 'song 4'),
      AudioSource.uri(Uri.parse("asset:///assets/audio/clear/e.mp3"),
          tag: 'song 5'),
      AudioSource.uri(Uri.parse("asset:///assets/audio/clear/f.mp3"),
          tag: 'song 6'),
      AudioSource.uri(Uri.parse("asset:///assets/audio/clear/g.mp3"),
          tag: 'song 7')
    ],
  );
  final _sunnyplaylist = ConcatenatingAudioSource(
    children: [
      AudioSource.uri(Uri.parse("asset:///assets/audio/sunny/a.mp3"),
          tag: 'song 1'),
      AudioSource.uri(Uri.parse("asset:///assets/audio/sunny/b.mp3"),
          tag: 'song 2'),
      AudioSource.uri(Uri.parse("asset:///assets/audio/sunny/c.mp3"),
          tag: 'song 3'),
      AudioSource.uri(Uri.parse("asset:///assets/audio/sunny/d.mp3"),
          tag: 'song 4'),
      AudioSource.uri(Uri.parse("asset:///assets/audio/sunny/e.mp3"),
          tag: 'song 5'),
      AudioSource.uri(Uri.parse("asset:///assets/audio/sunny/f.mp3"),
          tag: 'song 6'),
      AudioSource.uri(Uri.parse("asset:///assets/audio/sunny/g.mp3"),
          tag: 'song 7')
    ],
  );
  final _freezingplaylist = ConcatenatingAudioSource(
    children: [
      AudioSource.uri(Uri.parse("asset:///assets/audio/freezing/a.mp3"),
          tag: 'song 1'),
      AudioSource.uri(Uri.parse("asset:///assets/audio/freezing/b.mp3"),
          tag: 'song 2'),
      AudioSource.uri(Uri.parse("asset:///assets/audio/freezing/c.mp3"),
          tag: 'song 3'),
      AudioSource.uri(Uri.parse("asset:///assets/audio/freezing/d.mp3"),
          tag: 'song 4'),
      AudioSource.uri(Uri.parse("asset:///assets/audio/freezing/e.mp3"),
          tag: 'song 5'),
      AudioSource.uri(Uri.parse("asset:///assets/audio/freezing/f.mp3"),
          tag: 'song 6'),
      AudioSource.uri(Uri.parse("asset:///assets/audio/freezing/g.mp3"),
          tag: 'song 7')
    ],
  );

  Stream<PositionData> get _positionDataStream =>
      Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
          _audioPlayer.positionStream,
          _audioPlayer.bufferedPositionStream,
          _audioPlayer.durationStream,
          (position, bufferedPosition, duration) => PositionData(
                position,
                bufferedPosition,
                duration ?? Duration.zero,
              ));
  @override
  void initState() {
    super.initState();
    // _audioPlayer = AudioPlayer()..setAsset('assets/audio/a.mp3');
    _audioPlayer = AudioPlayer();
    _init();
  }

  Future<void> _init() async {
    await _audioPlayer.setLoopMode(LoopMode.all);
    final condition = Locationslist[_currentpage].weatherType;

    weatherType(condition, _audioPlayer, playList: _cloudyplaylist);
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Colors.grey,
        width: _width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder<PositionData>(
                stream: _positionDataStream,
                builder: (context, snapshot) {
                  final PositionData = snapshot.data;
                  return Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: ProgressBar(
                      barHeight: 2,
                      timeLabelTextStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      thumbGlowColor: Colors.blue.withOpacity(0.4),
                      progressBarColor: Color.fromARGB(255, 169, 199, 255),
                      progress: PositionData?.position ?? Duration.zero,
                      buffered: PositionData?.bufferedPosition ?? Duration.zero,
                      total: PositionData?.duration ?? Duration.zero,
                      onSeek: _audioPlayer.seek,
                    ),
                  );
                }),
            SizedBox(
              height: 2,
            ),
            Controls(audioPlayer: _audioPlayer),

            // SizedBox(
            //   height: 15,
            //   child: Text("Everything I wanted - Billie Eilish"),
            // )
          ],
        ),
      ),
    );
  }
}

//control widget
