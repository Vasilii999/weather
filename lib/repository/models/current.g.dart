// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Current _$CurrentFromJson(Map<String, dynamic> json) => Current(
  tempC: (json['temp_c'] as num).toDouble(),
  windKph: (json['wind_kph'] as num).toDouble(),
  cloud: (json['cloud'] as num).toDouble(),
  condition: Condition.fromJson(json['condition'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CurrentToJson(Current instance) => <String, dynamic>{
  'temp_c': instance.tempC,
  'wind_kph': instance.windKph,
  'cloud': instance.cloud,
  'condition': instance.condition,
};
