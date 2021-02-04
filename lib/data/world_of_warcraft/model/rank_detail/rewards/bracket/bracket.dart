import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';


part 'bracket.g.dart';
@JsonSerializable()
// ignore: must_be_immutable
class Bracket extends Equatable {
  @JsonKey(name: 'type')
  String bracketType;


  Bracket({this.bracketType});
  factory Bracket.fromJson(Map<String,dynamic> json) => _$BracketFromJson(json);
  Map<String, dynamic> toJson() => _$BracketToJson(this);

  @override
  List<Object> get props {
    return [bracketType];

  }
}