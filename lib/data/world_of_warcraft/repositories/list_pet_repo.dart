import 'package:dio/dio.dart';
import 'package:flutter_architecture/data/common/api_exception.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/list_pet/list_pet.dart';
import 'package:flutter_architecture/data/world_of_warcraft/source/remote/world_of_warcraft_api.dart';
import 'package:flutter_architecture/domain/world_of_warcraft/repositories/list_pet_repository.dart';

class ListPetRepoImpl implements ListPetRepository {
  WOWApi wowApi;

  ListPetRepoImpl({this.wowApi});

  @override
  Future<ListPet> getPet() async {
    try {
      return await wowApi.getPet();
    } on DioError catch (dioError) {
      throw ApiException(exception: dioError);
    } catch (e) {
      throw Exception('Unexpected Exception $e');
    }
  }
}