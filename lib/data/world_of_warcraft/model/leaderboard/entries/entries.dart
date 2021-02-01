import 'package:equatable/equatable.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/leaderboard/character/character.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/leaderboard/faction/faction.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/leaderboard/season_match_statistics/season_match_statistics.dart';
import 'package:json_annotation/json_annotation.dart';


part 'entries.g.dart';
@JsonSerializable()
// ignore: must_be_immutable
class Entries extends Equatable {
  @JsonKey(name: 'character')
  Character character;
  @JsonKey(name: 'faction')
  Faction faction;
  @JsonKey(name: 'rank')
  int rank;
  @JsonKey(name: 'rating')
  int rating;
  @JsonKey(name: 'season_match_statistics')
  SeasonMatchStatics seasonMatchStatics;

  Entries({this.character, this.faction, this.rank, this.rating, this.seasonMatchStatics});
  factory Entries.fromJson(Map<String,dynamic> json) => _$EntriesFromJson(json);
  Map<String, dynamic> toJson() => _$EntriesToJson(this);

  @override
  List<Object> get props {
    return [character, faction, rank, rating, seasonMatchStatics];

  }
}