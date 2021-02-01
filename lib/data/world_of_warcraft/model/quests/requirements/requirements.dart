import 'package:equatable/equatable.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/quests/requirements/faction/faction.dart';
import 'package:json_annotation/json_annotation.dart';

part 'requirements.g.dart';
@JsonSerializable()
// ignore: must_be_immutable
class Requirements extends Equatable
{
  @JsonKey(name: 'min_character_level')
  int minCharacterLevel;
  @JsonKey(name: 'max_character_level')
  int maxCharacterLevel;
  @JsonKey(name: 'faction')
  Faction faction;

  Requirements({this.minCharacterLevel, this.maxCharacterLevel, this.faction});
  factory Requirements.fromJson(Map<String,dynamic> json) => _$RequirementsFromJson(json);
  Map<String,dynamic> toJson() => _$RequirementsToJson(this);

  @override
  List<Object> get props {
    return [minCharacterLevel, maxCharacterLevel, faction];
  }
}