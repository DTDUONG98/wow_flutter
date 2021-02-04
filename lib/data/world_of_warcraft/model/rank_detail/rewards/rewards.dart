import 'package:equatable/equatable.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/rank_detail/rewards/achievement/achievement.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/rank_detail/rewards/bracket/bracket.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/rank_detail/rewards/faction/faction.dart';
import 'package:json_annotation/json_annotation.dart';


part 'rewards.g.dart';
@JsonSerializable()
// ignore: must_be_immutable
class Rewards extends Equatable {
  @JsonKey(name: 'bracket')
  Bracket bracket;
  @JsonKey(name: 'achievement')
  Achievement achievement;
  @JsonKey(name: 'rating_cutoff')
  int ratingCutoff;
  @JsonKey(name: 'faction')
  Faction faction;

  Rewards({this.bracket, this.achievement, this.ratingCutoff, this.faction});
  factory Rewards.fromJson(Map<String,dynamic> json) => _$RewardsFromJson(json);
  Map<String, dynamic> toJson() => _$RewardsToJson(this);

  @override
  List<Object> get props {
    return [bracket, achievement, ratingCutoff, faction];

  }
}