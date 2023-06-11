import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:songsbyweather/models/weather.dart';

class WeatherService {
  Future<weather> fetchWeatherData(String location) async {
    try {
      final queryParameters = {
        'key': 'daa3be5a24fe48da82942641233001',
        'q': 'location',
      };

      final uri =
          Uri.http('api.weatherapi.com', '/v1/current.json  ', queryParameters);
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        return weather.fromjson(jsonDecode(response.body));
      } else {
        throw Exception('Could not load weather information!!');
      }
    } catch (e) {
      rethrow;
    }
  }
}
