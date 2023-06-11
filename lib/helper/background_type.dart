backgroundType(String condition) {
  if (condition == 'Clouds') {
    return 'assets/images/cloudy.jpg';
    //return output;
  }
  if (condition == 'Rain') {
    return 'assets/images/rain_2.jpg';
  }
  if (condition == 'Clear') {
    return 'assets/images/clear_sky_sea.jpg';
  }
  if (condition == 'Mist') {
    return 'assets/images/freezing.jpg';
  }
  if (condition == 'Haze') {
    return 'assets/images/freezing.jpg';
  }
  return 'assets/images/cloudy.jpg';
  //return output;

  // switch (condition) {
  //   case "abc":
  //     output += await 'assets/images/sunny_2.jpg';
  //     break;

  //   case 'Clouds':
  //     output += await 'assets/images/cloudy.jpg';
  //     break;

  //   case 'Rain':
  //     output += await 'assets/images/rain_2.jpg';
  //     break;
  //   case 'Clear':
  //     output += await 'assets/images/clear_sky_sea.jpg';
  //     break;

  //   case 'Sunny':
  //     output += await 'assets/images/sunny_2.jpg';
  //     break;

  //   case 'Haze':
  //     output += await 'assets/images/freezing.jpg';
  //     break;

  //   default:
  //     output += await 'assets/images/sunny_2.jpg';
  //     break;
  // }

  // return output;
}
