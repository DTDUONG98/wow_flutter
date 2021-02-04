import 'package:flutter_architecture/config/configuration.dart';
import 'package:flutter_architecture/data/world_of_warcraft/repositories/rank_detail_repo.dart';
import 'package:flutter_architecture/data/world_of_warcraft/source/remote/world_of_warcraft_api.dart';
import 'package:flutter_architecture/di/injection/injection.dart';

class RankDetailModule extends DIModule {
  @override
  provides() {
    getIt.registerFactory<RankDetailRepoImpl>(() =>
        RankDetailRepoImpl(wowApi: getIt.get<WOWApi>()));
  }
}