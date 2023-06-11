Future<void> weatherType(var condition, var audioPlayer, {var playList}) async{
  switch (condition) {
      case "Cloudy":
        await audioPlayer.setAudioSource(playList);
        break;
      case "Rain":
        await audioPlayer.setAudioSource(playList);
        break;
      case "":
        await audioPlayer.setAudioSource(playList);
        break;
      case "Cloudy":
        await audioPlayer.setAudioSource(playList);
        break;
      case "Cloudy":
        await audioPlayer.setAudioSource(playList);
        break;

      default:
        await audioPlayer.setAudioSource(playList);
    }
}