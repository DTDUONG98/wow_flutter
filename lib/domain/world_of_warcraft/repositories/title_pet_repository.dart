import 'package:flutter_architecture/data/world_of_warcraft/model/pet_detail/pet_detail.dart';

abstract class TitlePetRepository {
  Future<PetDetail> searchPet(int petId);
}