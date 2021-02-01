import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'battle_pet_type.g.dart';
@JsonSerializable()
// ignore: must_be_immutable
class BattlePetType extends Equatable
{
  @JsonKey(name: 'id')
  int petTypeId;
  @JsonKey(name: 'type')
  String petType;
  @JsonKey(name: 'name')
  String petTypename;

  BattlePetType({this.petTypeId, this.petType, this.petTypename});
  factory BattlePetType.fromJson(Map<String,dynamic> json) => _$BattlePetTypeFromJson(json);
  Map<String,dynamic> toJson() => _$BattlePetTypeToJson(this);

  @override
  List<Object> get props {
    return [petTypeId, petType, petTypename];
  }
}