import 'package:dio/dio.dart';

import 'models/weather_location.dart';

class WeatherRepository {
  Future<WeatherLocation> getWeather() async {
    final dio = Dio();
    final response = await dio.get(
      'http://api.weatherapi.com/v1/current.json?key=86a1de68dadd4c8389d94419250308 &q=Bishkek&aqi=yes',
    );
    final data = response.data as Map<String, dynamic>;

    final weatherLocation = WeatherLocation.fromJson(data);

    return weatherLocation;
  }
}
