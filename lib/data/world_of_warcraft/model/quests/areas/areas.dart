import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'areas.g.dart';
@JsonSerializable()
// ignore: must_be_immutable
class Areas extends Equatable
{
  @JsonKey(name: 'id')
  int areaId;
  @JsonKey(name: 'name')
  String areaName;

  Areas({this.areaId, this.areaName});
  factory Areas.fromJson(Map<String,dynamic> json) => _$AreasFromJson(json);
  Map<String,dynamic> toJson() => _$AreasToJson(this);

  @override
  List<Object> get props {
    return [areaId, areaName];
  }
}