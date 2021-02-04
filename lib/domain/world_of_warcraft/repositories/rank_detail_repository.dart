import 'package:flutter_architecture/data/world_of_warcraft/model/rank_detail/rank_detail.dart';

abstract class RankDetailRepository {
  Future<RankDetail> getRankDetail(int pvpSeasonId);
}