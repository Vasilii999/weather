

import 'package:weather/repository/models/weather_location.dart';

class WeatherState {}

class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherLoaded extends WeatherState {

  final WeatherLocation weatherLocation;

  WeatherLoaded({required this.weatherLocation});
}

class WeatherFailure extends WeatherState {}