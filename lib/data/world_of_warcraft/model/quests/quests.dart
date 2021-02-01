import 'package:equatable/equatable.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/quests/money/money.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/quests/requirements/requirements.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/quests/rewards/rewards.dart';
import 'package:json_annotation/json_annotation.dart';

part 'quests.g.dart';
@JsonSerializable()
// ignore: must_be_immutable
class Quests extends Equatable
{
  @JsonKey(name: 'id')
  int questsId;
  @JsonKey(name: 'title')
  String questsTitle;
  @JsonKey(name: 'description')
  String description;
  @JsonKey(name: 'requirements')
  Requirements requirements;
  @JsonKey(name: 'rewards')
  Rewards rewards;
  @JsonKey(name: 'money')
  Money money;

  Quests({this.questsId, this.questsTitle, this.description, this.requirements, this.rewards, this.money});
  factory Quests.fromJson(Map<String,dynamic> json) => _$QuestsFromJson(json);
  Map<String,dynamic> toJson() => _$QuestsToJson(this);

  @override
  List<Object> get props {
    return [questsId, questsTitle, description, requirements, rewards, money];
  }
}