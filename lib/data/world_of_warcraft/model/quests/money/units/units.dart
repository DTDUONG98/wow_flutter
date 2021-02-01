import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'units.g.dart';
@JsonSerializable()
// ignore: must_be_immutable
class Units extends Equatable
{
  @JsonKey(name: 'gold')
  int gold;
  @JsonKey(name: 'silver')
  int silver;
  @JsonKey(name: 'copper')
  int copper;

  Units({this.gold, this.silver, this.copper});
  factory Units.fromJson(Map<String,dynamic> json) => _$UnitsFromJson(json);
  Map<String,dynamic> toJson() => _$UnitsToJson(this);

  @override
  List<Object> get props {
    return [gold, silver, copper];
  }
}