// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherLocation _$WeatherLocationFromJson(Map<String, dynamic> json) =>
    WeatherLocation(
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      current: Current.fromJson(json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherLocationToJson(WeatherLocation instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
    };
