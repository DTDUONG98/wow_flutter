import 'package:equatable/equatable.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/leaderboard/realm/realm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'character.g.dart';
@JsonSerializable()
// ignore: must_be_immutable
class Character extends Equatable {
  @JsonKey(name: 'name')
  String characterName;
  @JsonKey(name: 'id')
  int characterId;
  @JsonKey(name: 'realm')
  Realm realm;

  Character({this.characterId, this.characterName, this.realm});
  factory Character.fromJson(Map<String,dynamic> json) => _$CharacterFromJson(json);
  Map<String, dynamic> toJson() => _$CharacterToJson(this);

  @override
  List<Object> get props {
    return [characterId, characterName, realm];

  }
}