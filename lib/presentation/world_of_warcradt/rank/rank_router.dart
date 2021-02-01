import 'package:flutter_architecture/config/configuration.dart';
import 'package:flutter_architecture/di/injection/injection.dart';
import 'package:flutter_architecture/domain/world_of_warcraft/usecases/pvp_rank_usecases.dart';
import 'package:flutter_architecture/presentation/world_of_warcradt/rank/bloc/rank_bloc.dart';
import 'package:flutter_architecture/presentation/world_of_warcradt/rank/ui/rank_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_architecture/data/world_of_warcraft/repositories/pvp_rank_repo.dart';

class RankRouter extends RouteDefine
{
  static const id = 'rank';
  static const id_with_param = 'param_id';
  @override
  List<Path> initRoute(Object arguments) => [
    Path(
        name: id,
        builder: (_) => BlocProvider(
            create: (_) => RankBloc(
                pvpRankUseCase: PVPRankUseCase(getIt<PVPRankRepoImpl>())),
            child: RankScreen())),
  ];
}