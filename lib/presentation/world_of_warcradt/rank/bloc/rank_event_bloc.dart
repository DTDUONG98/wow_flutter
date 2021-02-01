part of 'rank_bloc.dart';

abstract class RankEvent extends Equatable {
  const RankEvent();
  @override
  List<Object> get props => [];
}

class LoadRankEvent extends RankEvent{}
