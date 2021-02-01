import 'package:flutter_architecture/data/world_of_warcraft/model/pet_detail/pet_detail.dart';
import 'package:flutter_architecture/domain/world_of_warcraft/repositories/title_pet_repository.dart';

class TitlePetUseCase {
  TitlePetRepository _titlePetRepository;

  TitlePetUseCase(this._titlePetRepository);

  Future<PetDetail> searchPet(int id) =>
      _titlePetRepository.searchPet(id);
}