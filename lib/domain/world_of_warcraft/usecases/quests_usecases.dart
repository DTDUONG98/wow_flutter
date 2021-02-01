import 'package:flutter_architecture/data/world_of_warcraft/model/quests/quests.dart';
import 'package:flutter_architecture/domain/world_of_warcraft/repositories/quests_repository.dart';

class QuestsUseCase {
  QuestsRipository _questsRipository;

  QuestsUseCase(this._questsRipository);

  Future<Quests> SearchQuest(int questId) =>
      _questsRipository.SearchQuest(questId);
}