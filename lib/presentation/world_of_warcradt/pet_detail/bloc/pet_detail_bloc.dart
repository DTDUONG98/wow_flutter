import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_architecture/data/common/api_exception.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/pet_detail/pet_detail.dart';
import 'package:flutter_architecture/domain/world_of_warcraft/usecases/title_pet_usecases.dart';
import 'package:flutter_architecture/generated/l10n.dart';
import 'package:meta/meta.dart';

part 'pet_detail_event.dart';
part 'pet_detail_state.dart';

class PetDetailBloc extends Bloc<PetDetailEvent, PetDetailState> {
  final int petId;
  final TitlePetUseCase titlePetUseCase;
  PetDetailBloc({this.petId, this.titlePetUseCase}) : super(PetDetailInitial());

  @override
  Stream<PetDetailState> mapEventToState(
    PetDetailEvent event,
  ) async* {
    if(event is LoadPetDetail){
        yield* _mapLoadPetDetail(petId);
    }
  }

  Stream<PetDetailState> _mapLoadPetDetail(int petId) async* {
    print(petId);
    // try
    // {
      yield PetDetailLoading();
      var petDetail = await titlePetUseCase.searchPet(petId);

      print("petDetail : $petDetail");
      if(petDetail?.petId == null)
      {
        yield PetDetailError(errors: 'no data');
      }
      else {
        yield PetDetailSuccess(petDetail: petDetail);
      }
    // }
    // on ApiException catch (e) {
    //   yield PetDetailError(errors: e.errorMessage);
    // } catch (_) {
    //   yield PetDetailError(errors: S.current.connectionProblem);
    // }
  }
}
