import 'package:flutter_architecture/config/configuration.dart';
import 'package:flutter_architecture/data/world_of_warcraft/repositories/title_pet_repo.dart';
import 'package:flutter_architecture/di/injection/injection.dart';
import 'package:flutter_architecture/domain/world_of_warcraft/usecases/title_pet_usecases.dart';
import 'package:flutter_architecture/presentation/world_of_warcradt/pet_detail/bloc/pet_detail_bloc.dart';
import 'package:flutter_architecture/presentation/world_of_warcradt/pet_detail/ui/pet_detail_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailPetRouter extends RouteDefine
{
  static const id = 'pet_detail';
  static const id_with_param = 'param_id';
  @override
  List<Path> initRoute(Object arguments) => [
    Path(
        name: id,
        builder: (_) => BlocProvider(
            create: (_) => PetDetailBloc(
                titlePetUseCase: TitlePetUseCase(getIt<TitlePetRepoImpl>()),
                petId: arguments),
            child: PetDetailScreen())),
  ];
}