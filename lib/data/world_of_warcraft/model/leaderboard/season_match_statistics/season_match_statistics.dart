import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'season_match_statistics.g.dart';
@JsonSerializable()
// ignore: must_be_immutable
class SeasonMatchStatics extends Equatable
{
  @JsonKey(name: 'played')
  int played;
  @JsonKey(name: 'won')
  int won;
  @JsonKey(name: 'lost')
  int lost;

  SeasonMatchStatics({this.played, this.won, this.lost});
  factory SeasonMatchStatics.fromJson(Map<String,dynamic> json) => _$SeasonMatchStaticsFromJson(json);
  Map<String ,dynamic> toJson() => _$SeasonMatchStaticsToJson(this);

  @override
  List<Object> get props {
    return [played, won, lost];
  }
}