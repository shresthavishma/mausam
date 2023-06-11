import 'dart:convert';
import 'package:songsbyweather/models/weather_model.dart';
import 'package:http/http.dart' as http;

class WeatherRepo {
  String baseUrl = "https://api.openweathermap.org/data/2.5/weather";
  String appId = "2b75f918fbd660f4ecf00f50f52ecf18";
  Future<WeatherModel> fetchWeather({
    String? params,
    double? lat,
    double? lon,
  }) async {
    try {
      String parameter = "";
      if (params != null) {
        parameter += "q=$params";
      } else if (lat != null && lon != null) {
        parameter += "lat=$lat & lon=$lon";
      } else {
        parameter += "q=Kathmandu";
      }
      final response = await http.get(
        Uri.parse("$baseUrl?$parameter&appid=$appId"),
      );
      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        final data = WeatherModel.fromJson(result);
        return data;
      } else {
        throw 'Socket Problem';
      }
    } catch (exception) {
      throw '${exception}';
    }
  }
}
