import 'package:equatable/equatable.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/list_pet/index_pet/index_pet.dart';
import 'package:json_annotation/json_annotation.dart';

part 'list_pet.g.dart';
@JsonSerializable()
// ignore: must_be_immutable
class ListPet extends Equatable{
  @JsonKey(name:'pets')
  List<IndexPet> pets;


  ListPet({this.pets});
  factory ListPet.fromJson(Map<String,dynamic> json) => _$ListPetFromJson(json);
  Map<String,dynamic> toJson() => _$ListPetToJson(this);

  @override
  List<Object> get props {
    return [pets];
  }
}