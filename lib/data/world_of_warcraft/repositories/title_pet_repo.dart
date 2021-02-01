import 'package:dio/dio.dart';
import 'package:flutter_architecture/data/common/api_exception.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/pet_detail/pet_detail.dart';
import 'package:flutter_architecture/data/world_of_warcraft/source/remote/world_of_warcraft_api.dart';
import 'package:flutter_architecture/domain/world_of_warcraft/repositories/title_pet_repository.dart';

class TitlePetRepoImpl implements TitlePetRepository {
  WOWApi wowApi;

  TitlePetRepoImpl({this.wowApi});

  @override
  Future<PetDetail> searchPet(int petId) async {
    try {
      assert(petId!=null);
      return await wowApi.searchPet(petId);
    } on DioError catch (dioError) {
      throw ApiException(exception: dioError);
    } catch (e) {
      throw Exception('Unexpected Exception $e');
    }
  }
}