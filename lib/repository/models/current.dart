
import 'package:json_annotation/json_annotation.dart';
import 'package:weather/repository/models/condition.dart';

part 'current.g.dart';

@JsonSerializable()
class Current {
  Current({
    required this.tempC,
    required this.windKph,
    required this.cloud,
    required this.condition,
  });

  @JsonKey(name: 'temp_c')
  final double tempC;

  @JsonKey(name: 'wind_kph')
  final double windKph;

  final double cloud;

  final Condition condition;

  factory Current.fromJson(Map<String, dynamic> json) => _$CurrentFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentToJson(this);
}
