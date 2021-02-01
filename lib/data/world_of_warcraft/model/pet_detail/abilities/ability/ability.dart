import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ability.g.dart';
@JsonSerializable()
// ignore: must_be_immutable
class Ability extends Equatable{
  @JsonKey(name: 'id')
  int abilityId;
  @JsonKey(name: 'name')
  String abilityName;


  Ability({this.abilityId, this.abilityName});
  factory Ability.fromJson(Map<String,dynamic> json) => _$AbilityFromJson(json);
  Map<String,dynamic> toJson() => _$AbilityToJson(this);

  @override
  List<Object> get props {
    return [abilityId, abilityName];
  }
}