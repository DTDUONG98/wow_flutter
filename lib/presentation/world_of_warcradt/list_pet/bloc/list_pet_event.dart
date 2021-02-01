part of 'list_pet_bloc.dart';

abstract class ListPetEvent extends Equatable {
  const ListPetEvent();
  @override
  List<Object> get props => [];
}
class LoadListPetEvent extends ListPetEvent{}
