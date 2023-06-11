class weather {
  final double temperature;
  final double wind;
  final double humidity;
  final String weatherType;

  weather({
    this.temperature = 0,
    this.wind = 1,
    this.humidity = 2,
    this.weatherType = 'Cloudy',
  });

  factory weather.fromjson(Map<String, dynamic> json) {
    return weather(
      temperature: json['current']['temp_c'],
      wind: json['current']['wind_kph'],
      humidity: json['current']['humidity'],
      weatherType: json['current']['condition']['text'],
    );
  }
}
