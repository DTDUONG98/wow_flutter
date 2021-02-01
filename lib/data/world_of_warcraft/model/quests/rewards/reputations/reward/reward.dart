import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reward.g.dart';
@JsonSerializable()
// ignore: must_be_immutable
class Reward extends Equatable
{
  @JsonKey(name: 'id')
  int rewardId;
  @JsonKey(name: 'name')
  String rewardName;

  Reward({this.rewardId, this.rewardName});
  factory Reward.fromJson(Map<String,dynamic> json) => _$RewardFromJson(json);
  Map<String,dynamic> toJson() => _$RewardToJson(this);

  @override
  List<Object> get props {
    return [rewardId, rewardName];
  }
}