import 'package:dio/dio.dart';
import 'package:flutter_architecture/data/common/api_exception.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/rank_detail/rank_detail.dart';
import 'package:flutter_architecture/data/world_of_warcraft/source/remote/world_of_warcraft_api.dart';
import 'package:flutter_architecture/domain/world_of_warcraft/repositories/rank_detail_repository.dart';

class RankDetailRepoImpl extends RankDetailRepository {
  WOWApi wowApi;

  RankDetailRepoImpl({this.wowApi});

  @override
  Future<RankDetail> getRankDetail(int pvpSeasonId) async {
    try {
      assert(pvpSeasonId!=null );
      return await wowApi.getRankDetail(pvpSeasonId);
    } on DioError catch (dioError) {
      throw ApiException(exception: dioError);
    } catch (e) {
      throw Exception('Unexpected Exception $e');
    }
  }

}