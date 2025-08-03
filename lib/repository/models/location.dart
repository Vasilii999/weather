

import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()
class Location {
  Location({
    required this.name,
    required this.region,
    required this.country,
    required this.tzId,
    required this.localtime,
  });

  final String name;
  final String region;
  final String country;
  @JsonKey(name: 'tz_id')
  final String tzId;
  final String localtime;

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
