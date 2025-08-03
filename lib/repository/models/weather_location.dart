import 'package:json_annotation/json_annotation.dart';

import 'current.dart';
import 'location.dart';

part 'weather_location.g.dart';

@JsonSerializable()
class WeatherLocation {
  WeatherLocation({
    required this.location,
    required this.current,
  });

  final Location location;

  final Current current;


  factory WeatherLocation.fromJson(Map<String, dynamic> json) => _$WeatherLocationFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherLocationToJson(this);

}

