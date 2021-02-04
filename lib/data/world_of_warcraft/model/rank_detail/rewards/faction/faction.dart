import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';


part 'faction.g.dart';
@JsonSerializable()
// ignore: must_be_immutable
class Faction extends Equatable {
  @JsonKey(name: 'type')
  String factionType;
  @JsonKey(name: 'name')
  String factionName;


  Faction({this.factionType, this.factionName});
  factory Faction.fromJson(Map<String,dynamic> json) => _$FactionFromJson(json);
  Map<String, dynamic> toJson() => _$FactionToJson(this);

  @override
  List<Object> get props {
    return [factionType, factionName];

  }
}