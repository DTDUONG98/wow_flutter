import 'package:equatable/equatable.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/quests/rewards/reputations/reputations.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rewards.g.dart';
@JsonSerializable()
// ignore: must_be_immutable
class Rewards extends Equatable
{
  @JsonKey(name: 'experience')
  int experience;
  @JsonKey(name: 'reputations')
  List<Reputations> reputations;

  Rewards({this.experience, this.reputations});
  factory Rewards.fromJson(Map<String,dynamic> json) => _$RewardsFromJson(json);
  Map<String,dynamic> toJson() => _$RewardsToJson(this);

  @override
  List<Object> get props {
    return [experience, reputations];
  }
}