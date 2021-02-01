import 'package:equatable/equatable.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/pet_detail/abilities/ability/ability.dart';
import 'package:json_annotation/json_annotation.dart';

part 'abilities.g.dart';
@JsonSerializable()
// ignore: must_be_immutable
class Abilities extends Equatable
{
  @JsonKey(name: 'Abilities')
  Ability ability;
  @JsonKey(name: 'slot')
  int slot;
  @JsonKey(name: 'required_level')
  int requiredLevel;

  Abilities({this.ability, this.slot, this.requiredLevel});
  factory Abilities.fromJson(Map<String,dynamic> json) => _$AbilitiesFromJson(json);
  Map<String,dynamic> toJson() => _$AbilitiesToJson(this);

  @override
  List<Object> get props {
    return [ability, slot, requiredLevel];
  }
}