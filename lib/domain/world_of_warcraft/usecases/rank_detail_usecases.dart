import 'package:flutter_architecture/data/world_of_warcraft/model/rank_detail/rank_detail.dart';
import 'package:flutter_architecture/domain/world_of_warcraft/repositories/rank_detail_repository.dart';

class RankDetailUseCase {
  RankDetailRepository _rankDetailRepository;

  RankDetailUseCase(this._rankDetailRepository);

  Future<RankDetail> getRankDetail(int pvpSeasonId)
    => _rankDetailRepository.getRankDetail(pvpSeasonId);
}