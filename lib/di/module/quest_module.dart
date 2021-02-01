import 'package:flutter_architecture/config/configuration.dart';
import 'package:flutter_architecture/data/world_of_warcraft/repositories/quests_repo.dart';
import 'package:flutter_architecture/data/world_of_warcraft/source/remote/world_of_warcraft_api.dart';
import 'package:flutter_architecture/di/injection/injection.dart';

class QuestsModule extends DIModule {
  @override
  provides() {
    // TODO: implement provides
    getIt.registerFactory<QuestsRepoImpl>(() =>QuestsRepoImpl(wowApi: getIt.get<WOWApi>()) );
  }
}