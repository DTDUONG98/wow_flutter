part of 'pet_detail_bloc.dart';

@immutable
abstract class PetDetailState extends Equatable {}

class PetDetailInitial extends PetDetailState {
  @override
  List<Object> get props => [];
}

class PetDetailLoading extends PetDetailState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class PetDetailSuccess extends PetDetailState {
  final PetDetail petDetail;

  PetDetailSuccess({this.petDetail});

  @override

  List<Object> get props => [petDetail];
}

class PetDetailError extends PetDetailState{
  final String errors;

  PetDetailError({this.errors});
  @override
  // TODO: implement props
  List<Object> get props => [errors];
}
