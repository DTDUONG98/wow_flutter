

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/leaderboard/leaderboard.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/list_pet/list_pet.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/pet_detail/pet_detail.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/quests/quests.dart';
import 'package:retrofit/http.dart';

part 'world_of_warcraft_api.g.dart';

@RestApi(baseUrl:'https://us.api.blizzard.com/data/wow/')
abstract class WOWApi
{
  factory WOWApi(Dio dio,{String baseUrl}) = _WOWApi;
  @GET('pvp-season/{pvpSeasonId}/pvp-leaderboard/{pvpBracket}?namespace=dynamic-us&locale=en_US&access_token=USOnWn5Ma0l3uGvCPCOovNfn8HtdzAJfDh')
  Future<LeaderBoard> getPvPRank(@Path('pvpSeasonId') int SeasonId, @Path('pvpBracket') String Bracket );
  @GET('pet/index?namespace=static-us&locale=en_US&access_token=USOnWn5Ma0l3uGvCPCOovNfn8HtdzAJfDh')
  Future<ListPet> getPet();
  @GET('pet/{petId}?namespace=static-us&locale=en_US&access_token=USOnWn5Ma0l3uGvCPCOovNfn8HtdzAJfDh')
  Future<PetDetail> searchPet(@Path('petId') int petId);
  @GET('quest/{questId}?namespace=static-us&locale=en_US&access_token=USOnWn5Ma0l3uGvCPCOovNfn8HtdzAJfDh')
  Future<Quests> SearchQuest(@Path('questId') int questId);

}