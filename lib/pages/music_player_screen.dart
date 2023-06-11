import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:songsbyweather/provider/music_player_provider.dart';
import 'package:songsbyweather/widgets/common_widget/custom_text.dart';

import '../helper/audio_format_time.dart';

class MusicPlayerScreen extends StatefulWidget {
  const MusicPlayerScreen({super.key});

  @override
  State<MusicPlayerScreen> createState() => _MusicPlayerScreenState();
}

class _MusicPlayerScreenState extends State<MusicPlayerScreen> {
  @override
  void initState() {
    final player = Provider.of<MusicPlayerProvider>(context, listen: false);
    player.setUrl('a.mp3');
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer<MusicPlayerProvider>(
          builder: (context, value, child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    padding: EdgeInsets.all(32.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black45,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      "assets/images/musical-note.png",
                      width: MediaQuery.of(context).size.width / 2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 32.0,
                ),
                CustomText(
                  text: "Someone hold my hand",
                  isBold: false,
                  fontSize: 18.0,
                ),
                SizedBox(
                  height: 12.0,
                ),
                Slider(
                  min: 0,
                  max: 1,
                  value: 0.5,
                  onChanged: (double value) {},
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomText(
                      text: "${formatTime(value.position)}",
                      isBold: true,
                    ),
                    CustomText(
                      text: "${formatTime(value.duration - value.position)}",
                      isBold: true,
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    value.isPlaying ? value.pauseMusic() : value.playMusic();
                  },
                  icon: Icon(value.isPlaying
                      ? Icons.play_arrow_outlined
                      : Icons.pause_outlined),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
