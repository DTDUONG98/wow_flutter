import 'package:equatable/equatable.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/quests/money/units/units.dart';
import 'package:json_annotation/json_annotation.dart';

part 'money.g.dart';
@JsonSerializable()
// ignore: must_be_immutable
class Money extends Equatable
{
  @JsonKey(name: 'value')
  int moneyValue;
  @JsonKey(name: 'units')
  Units units;

  Money({this.moneyValue, this.units});
  factory Money.fromJson(Map<String,dynamic> json) => _$MoneyFromJson(json);
  Map<String,dynamic> toJson() => _$MoneyToJson(this);

  @override
  List<Object> get props {
    return [moneyValue, units];
  }
}