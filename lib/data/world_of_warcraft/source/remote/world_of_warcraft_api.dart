

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/leaderboard/leaderboard.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/list_pet/list_pet.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/pet_detail/pet_detail.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/quests/quests.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/rank_detail/rank_detail.dart';
import 'package:retrofit/http.dart';

part 'world_of_warcraft_api.g.dart';

// lấy access_token : curl -u 6bf1d0cf679b432f900c7dd09a06a636:Qz1f0VXXxmRZIpu476LQpYktTO2zAc74 -d grant_type=client_credentials https://us.battle.net/oauth/token


@RestApi(baseUrl:'https://us.api.blizzard.com/data/wow/')
abstract class WOWApi
{
  factory WOWApi(Dio dio,{String baseUrl}) = _WOWApi;
  @GET('pvp-season/{pvpSeasonId}/pvp-leaderboard/{pvpBracket}?namespace=dynamic-us&locale=en_US&access_token=USuqwtvr08mzm2pGUVzXxjXyofIUYYEkq8')
  Future<LeaderBoard> getPvPRank(@Path('pvpSeasonId') int SeasonId, @Path('pvpBracket') String Bracket );
  @GET('pet/index?namespace=static-us&locale=en_US&access_token=USuqwtvr08mzm2pGUVzXxjXyofIUYYEkq8')
  Future<ListPet> getPet();
  @GET('pet/{petId}?namespace=static-us&locale=en_US&access_token=USuqwtvr08mzm2pGUVzXxjXyofIUYYEkq8')
  Future<PetDetail> searchPet(@Path('petId') int petId);
  @GET('quest/{questId}?namespace=static-us&locale=en_US&access_token=USuqwtvr08mzm2pGUVzXxjXyofIUYYEkq8')
  Future<Quests> SearchQuest(@Path('questId') int questId);
  @GET('pvp-season/{pvpSeasonId}/pvp-reward/index?namespace=static-us&locale=en_US&access_token=USuqwtvr08mzm2pGUVzXxjXyofIUYYEkq8')
  Future<RankDetail> getRankDetail(@Path('pvpSeasonId') int pvpSeasonId);
}