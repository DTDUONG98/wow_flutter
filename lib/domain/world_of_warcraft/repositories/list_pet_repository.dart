import 'package:flutter_architecture/data/world_of_warcraft/model/list_pet/list_pet.dart';

abstract class ListPetRepository {
  Future<ListPet> getPet();
}