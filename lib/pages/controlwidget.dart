import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class PositionData {
  final Duration position;
  final Duration bufferedPosition;
  final Duration duration;
  const PositionData(
    this.position,
    this.bufferedPosition,
    this.duration,
  );
}

class Controls extends StatelessWidget {
  final AudioPlayer audioPlayer;
  const Controls({
    Key? key,
    required this.audioPlayer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: audioPlayer.seekToPrevious,
          icon: Icon(Icons.skip_previous),
        ),
        StreamBuilder<PlayerState>(
          stream: audioPlayer.playerStateStream,
          builder: (context, snapshot) {
            final playerState = snapshot.data;
            final processingState = playerState?.processingState;
            final playing = playerState?.playing;
            if (!(playing ?? true)) {
              return IconButton(
                onPressed: audioPlayer.play,
                iconSize: 50,
                color: Colors.black,
                icon: const Icon(Icons.play_arrow_rounded),
              );
            } else if (processingState != ProcessingState.completed) {
              return IconButton(
                onPressed: audioPlayer.pause,
                color: Colors.black,
                iconSize: 50,
                icon: Icon(Icons.pause_circle_filled_rounded),
              );
            }
            return const Icon(
              Icons.play_arrow_rounded,
              size: 60,
              color: Colors.black,
            );
          },
        ),
        IconButton(
          onPressed: audioPlayer.seekToNext,
          icon: Icon(Icons.skip_next),
        ),
      ],
    );
  }
}
