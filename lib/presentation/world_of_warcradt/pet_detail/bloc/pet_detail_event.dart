part of 'pet_detail_bloc.dart';

@immutable
abstract class PetDetailEvent  extends Equatable{
  const PetDetailEvent();
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class LoadPetDetail extends PetDetailEvent{

}
