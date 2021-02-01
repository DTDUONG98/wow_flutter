import 'package:flutter_architecture/config/configuration.dart';
import 'package:flutter_architecture/data/world_of_warcraft/repositories/quests_repo.dart';
import 'package:flutter_architecture/di/injection/injection.dart';
import 'package:flutter_architecture/domain/world_of_warcraft/usecases/quests_usecases.dart';
import 'package:flutter_architecture/presentation/world_of_warcradt/quests/ui/quests_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/quests_bloc.dart';

class SearchQuestsRouter extends RouteDefine
{
  static const id = 'quest';
  static const id_with_param = 'param_id';
  @override
  List<Path> initRoute(Object arguments) => [
    Path(
        name: id,
        builder: (_) => BlocProvider(
            create: (_) => QuestsBloc(
                questsUseCase: QuestsUseCase(getIt<QuestsRepoImpl>()),
                questId: arguments
            ),
            child: QuestScreen())),
  ];
}