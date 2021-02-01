import 'package:flutter_architecture/config/configuration.dart';
import 'package:flutter_architecture/di/injection/injection.dart';
import 'package:flutter_architecture/domain/world_of_warcraft/usecases/list_pet_usecases.dart';
import 'package:flutter_architecture/data/world_of_warcraft/repositories/list_pet_repo.dart';
import 'package:flutter_architecture/presentation/world_of_warcradt/list_pet/bloc/list_pet_bloc.dart';
import 'package:flutter_architecture/presentation/world_of_warcradt/list_pet/ui/list_pet_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListPetRouter extends RouteDefine
{
  static const id = 'listpet';
  static const id_with_param = 'account_id';
  @override
  List<Path> initRoute(Object arguments) => [
    Path(
        name: id,
        builder: (_) => BlocProvider(
            create: (_) => ListPetBloc(
                listPetUseCases: ListPetUseCase(getIt<ListPetRepoImpl>())),
            child: PetScreen())),
  ];
}