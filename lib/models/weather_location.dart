class weatherlocation {
  final String city;
  final String dateTime;
  final String temperature;
  String weatherType;
  final String iconUrl;
  final int wind;
  final int rain;
  final int humidity;

  weatherlocation({
    required this.city,
    required this.dateTime,
    required this.temperature,
    required this.weatherType,
    required this.iconUrl,
    required this.wind,
    required this.rain,
    required this.humidity,
  });
}

final Locationslist = [
  weatherlocation(
    city: 'Kathmandu',
    dateTime: '09:04 PM - Sunday, 5 Feb 2023',
    temperature: '22\u2103',
    weatherType: 'Cloudy',
    iconUrl: 'assets/icons/cloudy.png',
    wind: 17,
    rain: 3,
    humidity: 12,
  ),
  weatherlocation(
    city: 'Raleigh, NC',
    dateTime: '10:04 AM - Sunday, 5 Feb 2023',
    temperature: '6\u2103',
    weatherType: 'Rain',
    iconUrl: 'assets/icons/rain.png',
    wind: 6,
    rain: 15,
    humidity: 48,
  ),
  weatherlocation(
    city: 'Tokyo, Japan',
    dateTime: '00:00 AM - Monday, 6 Feb 2023',
    temperature: '4\u2103',
    weatherType: 'Clear',
    iconUrl: 'assets/icons/clear.png',
    wind: 6,
    rain: 15,
    humidity: 48,
  ),
  weatherlocation(
    city: 'Buenos Aires',
    dateTime: '12:31 PM - Monday, 6 Feb 2023',
    temperature: '25\u2103',
    weatherType: 'Sunny',
    iconUrl: 'assets/icons/sunny.png',
    wind: 13,
    rain: 2,
    humidity: 23,
  ),
  weatherlocation(
    city: 'Toronto',
    dateTime: '02:31 AM - Monday, 6 Feb 2023',
    temperature: '-5\u2103',
    weatherType: 'Freezing',
    iconUrl: 'assets/icons/snowflake.png',
    wind: 18,
    rain: 15,
    humidity: 75,
  ),
];
