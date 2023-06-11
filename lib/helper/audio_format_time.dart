String formatTime(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, '0');
  final hours = twoDigits(duration.inHours);
  final minutes = twoDigits(duration.inMinutes);
  final seconds = twoDigits(duration.inSeconds);

  return [
    if (duration.inHours > 0) hours,
    minutes,
    seconds,
  ].join(':');
}
