import 'package:equatable/equatable.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/rank_detail/rewards/rewards.dart';
import 'package:json_annotation/json_annotation.dart';


part 'rank_detail.g.dart';
@JsonSerializable()
// ignore: must_be_immutable
class RankDetail extends Equatable {
  @JsonKey(name: 'rewards')
  List<Rewards> rewards;

  RankDetail({this.rewards});
  factory RankDetail.fromJson(Map<String,dynamic> json) => _$RankDetailFromJson(json);
  Map<String, dynamic> toJson() => _$RankDetailToJson(this);

  @override
  List<Object> get props {
    return [rewards];

  }
}