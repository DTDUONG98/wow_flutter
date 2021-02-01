part of 'list_pet_bloc.dart';

abstract class ListPetState extends Equatable {
  const ListPetState();
}

class PetInitial extends ListPetState {
  @override
  List<Object> get props => [];
}
class ListPetLoading extends ListPetState{
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class PetSuccessfully extends ListPetState {
  final ListPet pet;

  PetSuccessfully({this.pet});

  @override
  List<Object> get props => [pet];
}

class PetError extends ListPetState {
  final String errors;

  PetError({this.errors});

  @override
  List<Object> get props => [errors];
}