import 'package:equatable/equatable.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/quests/rewards/reputations/reward/reward.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reputations.g.dart';
@JsonSerializable()
// ignore: must_be_immutable
class Reputations extends Equatable
{
  @JsonKey(name: 'reward')
  Reward reward;
  @JsonKey(name: 'value')
  int reputationValue;

  Reputations({this.reward, this.reputationValue});
  factory Reputations.fromJson(Map<String,dynamic> json) => _$ReputationsFromJson(json);
  Map<String,dynamic> toJson() => _$ReputationsToJson(this);

  @override
  List<Object> get props {
    return [reward, reputationValue];
  }
}