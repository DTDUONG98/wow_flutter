import 'package:flutter_architecture/data/world_of_warcraft/model/leaderboard/leaderboard.dart';
import 'package:flutter_architecture/domain/world_of_warcraft/repositories/pvp_rank_repository.dart';

class PVPRankUseCase  {
  PVPRankRepository _pvpRankRepository;

  PVPRankUseCase(this._pvpRankRepository);

  Future<LeaderBoard> getPvPRank( int SeasonId, String Bracket)
        => _pvpRankRepository.getPvPRank(SeasonId, Bracket);
}