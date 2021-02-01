part  of 'rank_bloc.dart';

abstract class RankState extends Equatable {
  const RankState();
}

class RankInitial extends RankState {
  @override
  List<Object> get props => [];
}

class RankLoading extends RankState{
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class RankSuccessfullyState extends RankState {
  final LeaderBoard response;

  RankSuccessfullyState({this.response});

  @override
  List<Object> get props => [response];
}

class RankErrorState extends RankState {
  String errorMessage;

  RankErrorState({this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}