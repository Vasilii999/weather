
import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'condition.g.dart';

@JsonSerializable()
class Condition {
  Condition({required this.text, required this.icon});

  final String text;
  final String icon;


  factory Condition.fromJson(Map<String, dynamic> json) => _$ConditionFromJson(json);

  Map<String, dynamic> toJson() => _$ConditionToJson(this);


}