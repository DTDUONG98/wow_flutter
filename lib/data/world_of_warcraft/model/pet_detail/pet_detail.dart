import 'package:equatable/equatable.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/pet_detail/abilities/abilities.dart';
import 'package:json_annotation/json_annotation.dart';

import 'battle_pet_type/battle_pet_type.dart';

part 'pet_detail.g.dart';
@JsonSerializable()
// ignore: must_be_immutable
class PetDetail extends Equatable{
  @JsonKey(name: 'id')
  int petId;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'battle_pet_type')
  BattlePetType battlePetType;
  @JsonKey(name: 'description')
  String description;
  @JsonKey(name: 'abilities')
  List<Abilities> abilities;
  @JsonKey(name: 'icon')
  String icon;


  PetDetail({this.petId, this.name, this.battlePetType, this.description, this.abilities, this.icon});
  factory PetDetail.fromJson(Map<String,dynamic> json) => _$PetDetailFromJson(json);
  Map<String,dynamic> toJson() => _$PetDetailToJson(this);

  @override
  List<Object> get props {
    return [petId, name, abilities,battlePetType, description, icon];
  }
}