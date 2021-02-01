import 'package:flutter_architecture/data/world_of_warcraft/model/leaderboard/leaderboard.dart';

abstract class PVPRankRepository {
  Future<LeaderBoard> getPvPRank(int SeasonId, String Bracket);
}