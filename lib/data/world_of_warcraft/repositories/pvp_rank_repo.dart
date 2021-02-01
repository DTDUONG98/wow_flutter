import 'package:dio/dio.dart';
import 'package:flutter_architecture/data/common/api_exception.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/leaderboard/leaderboard.dart';
import 'package:flutter_architecture/data/world_of_warcraft/source/remote/world_of_warcraft_api.dart';
import 'package:flutter_architecture/domain/world_of_warcraft/repositories/pvp_rank_repository.dart';

class PVPRankRepoImpl implements PVPRankRepository {
  WOWApi wowApi;

  PVPRankRepoImpl({this.wowApi});

  @override
  Future<LeaderBoard> getPvPRank(int SeasonId, String Bracket) async {
    try {
      assert(SeasonId!=null && Bracket!=null);
      return await wowApi.getPvPRank(SeasonId, Bracket);
    } on DioError catch (dioError) {
      throw ApiException(exception: dioError);
    } catch (e) {
      throw Exception('Unexpected Exception $e');
    }
  }
}