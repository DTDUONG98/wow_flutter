import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'index_pet.g.dart';
@JsonSerializable()
// ignore: must_be_immutable
class IndexPet extends Equatable
{
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'id')
  int id;

  IndexPet({this.name, this.id});
  factory IndexPet.fromJson(Map<String,dynamic> json) => _$IndexPetFromJson(json);
  Map<String,dynamic> toJson() => _$IndexPetToJson(this);

  @override
  List<Object> get props {
    return [name, id];
  }
}