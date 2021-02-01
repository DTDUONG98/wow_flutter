import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'realm.g.dart';
@JsonSerializable()
// ignore: must_be_immutable
class Realm extends Equatable
{
  @JsonKey(name: 'id')
  int realmId;
  @JsonKey(name: 'slug')
  String realmSlug;

  Realm({this.realmId, this.realmSlug});
  factory Realm.fromJson(Map<String,dynamic> json) => _$RealmFromJson(json);
  Map<String,dynamic> toJson() => _$RealmToJson(this);

  @override
  List<Object> get props {
    return [realmId, realmSlug];
  }
}