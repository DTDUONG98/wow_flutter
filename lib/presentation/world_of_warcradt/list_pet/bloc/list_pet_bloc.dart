import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_architecture/data/common/api_exception.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/list_pet/list_pet.dart';
import 'package:flutter_architecture/domain/world_of_warcraft/usecases/list_pet_usecases.dart';
import 'package:flutter_architecture/generated/l10n.dart';


part 'list_pet_event.dart';
part 'list_pet_state.dart';

class ListPetBloc extends Bloc<ListPetEvent, ListPetState>{
  final ListPetUseCase listPetUseCases;

  ListPetBloc({this.listPetUseCases}) : super(PetInitial());

  @override
  Stream<ListPetState> mapEventToState(ListPetEvent event) async* {
    if(event is LoadListPetEvent){
      yield* _maploadPet();
    }
  }

  Stream<ListPetState> _maploadPet() async* {
    try
    {
      yield ListPetLoading();
      var pet = await listPetUseCases.getsPet();

      print("pet : $pet");
      if(pet?.pets.isEmpty ?? true)
      {
        yield PetError(errors: 'no data');
      }
      else {
        yield PetSuccessfully(pet: pet );
      }
    }
    on ApiException catch (e) {
      yield PetError(errors: e.errorMessage);
    } catch (_) {
      yield PetError(errors: S.current.connectionProblem);
    }
  }
}