import 'package:just_audio/just_audio.dart';

final rainyplaylist = ConcatenatingAudioSource(
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

// final _clearplaylist = ConcatenatingAudioSource(
//   children: [
//     AudioSource.uri(Uri.parse("asset:///assets/audio/clear/a.mp3"),
//         tag: 'song 1'),
//     AudioSource.uri(Uri.parse("asset:///assets/audio/clear/b.mp3"),
//         tag: 'song 2'),
//     AudioSource.uri(Uri.parse("asset:///assets/audio/clear/c.mp3"),
//         tag: 'song 3'),
//     AudioSource.uri(Uri.parse("asset:///assets/audio/clear/d.mp3"),
//         tag: 'song 4'),
//     AudioSource.uri(Uri.parse("asset:///assets/audio/clear/e.mp3"),
//         tag: 'song 5'),
//     AudioSource.uri(Uri.parse("asset:///assets/audio/clear/f.mp3"),
//         tag: 'song 6'),
//     AudioSource.uri(Uri.parse("asset:///assets/audio/clear/g.mp3"),
//         tag: 'song 7')
//   ],
// );
// final _freezingplaylist = ConcatenatingAudioSource(
//   children: [
//     AudioSource.uri(Uri.parse("asset:///assets/audio/freezing/a.mp3"),
//         tag: 'song 1'),
//     AudioSource.uri(Uri.parse("asset:///assets/audio/freezing/b.mp3"),
//         tag: 'song 2'),
//     AudioSource.uri(Uri.parse("asset:///assets/audio/freezing/c.mp3"),
//         tag: 'song 3'),
//     AudioSource.uri(Uri.parse("asset:///assets/audio/freezing/d.mp3"),
//         tag: 'song 4'),
//     AudioSource.uri(Uri.parse("asset:///assets/audio/freezing/e.mp3"),
//         tag: 'song 5'),
//     AudioSource.uri(Uri.parse("asset:///assets/audio/freezing/f.mp3"),
//         tag: 'song 6'),
//     AudioSource.uri(Uri.parse("asset:///assets/audio/freezing/g.mp3"),
//         tag: 'song 7')
//   ],
// );
