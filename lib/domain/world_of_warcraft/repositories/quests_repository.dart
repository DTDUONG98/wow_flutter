import 'package:flutter_architecture/data/world_of_warcraft/model/quests/quests.dart';

abstract class QuestsRipository {
  Future<Quests> SearchQuest(int questId);
}