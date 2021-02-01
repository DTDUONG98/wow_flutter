import 'package:equatable/equatable.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/leaderboard/entries/entries.dart';
import 'package:json_annotation/json_annotation.dart';


part 'leaderboard.g.dart';
@JsonSerializable()
// ignore: must_be_immutable
class LeaderBoard extends Equatable {
  @JsonKey(name: 'entries')
  List<Entries> entries;


  LeaderBoard({this.entries});
  factory LeaderBoard.fromJson(Map<String,dynamic> json) => _$LeaderBoardFromJson(json);
  Map<String, dynamic> toJson() => _$LeaderBoardToJson(this);

  @override
  List<Object> get props {
    return [];

  }
}