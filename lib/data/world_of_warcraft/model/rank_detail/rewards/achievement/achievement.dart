import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';


part 'achievement.g.dart';
@JsonSerializable()
// ignore: must_be_immutable
class Achievement extends Equatable {
  @JsonKey(name: 'name')
  String achievementName;


  Achievement({this.achievementName});
  factory Achievement.fromJson(Map<String,dynamic> json) => _$AchievementFromJson(json);
  Map<String, dynamic> toJson() => _$AchievementToJson(this);

  @override
  List<Object> get props {
    return [achievementName];

  }
}