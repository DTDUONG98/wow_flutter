import 'package:flutter_architecture/data/world_of_warcraft/model/list_pet/list_pet.dart';
import 'package:flutter_architecture/domain/world_of_warcraft/repositories/list_pet_repository.dart';

class ListPetUseCase {
  final ListPetRepository _listPetRepository;

    ListPetUseCase(this._listPetRepository);

  Future<ListPet> getsPet()
  => _listPetRepository.getPet();
}
