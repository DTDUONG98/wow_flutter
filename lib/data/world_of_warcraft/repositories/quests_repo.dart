import 'package:dio/dio.dart';
import 'package:flutter_architecture/data/common/api_exception.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/quests/quests.dart';
import 'package:flutter_architecture/data/world_of_warcraft/source/remote/world_of_warcraft_api.dart';
import 'package:flutter_architecture/domain/world_of_warcraft/repositories/quests_repository.dart';

class QuestsRepoImpl implements QuestsRipository {
  WOWApi wowApi;

  QuestsRepoImpl({this.wowApi});

  @override
  Future<Quests> SearchQuest(int questId) async {
    try {
      assert(questId!=null);
      return await wowApi.SearchQuest(questId);
    } on DioError catch (dioError) {
      throw ApiException(exception: dioError);
    } catch (e) {
      throw Exception('Unexpected Exception $e');
    }
  }
}