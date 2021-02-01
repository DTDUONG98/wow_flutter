import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_architecture/data/common/api_exception.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/leaderboard/leaderboard.dart';
import 'package:flutter_architecture/domain/world_of_warcraft/usecases/pvp_rank_usecases.dart';
import 'package:flutter_architecture/generated/l10n.dart';

part 'rank_state_bloc.dart';
part 'rank_event_bloc.dart';


class RankBloc extends Bloc<RankEvent, RankState> {
  final PVPRankUseCase pvpRankUseCase;
  static String Bracket = '3v3';
  static int SeasonId = 27;
  RankBloc({this.pvpRankUseCase}) : super(RankInitial());

  @override
  Stream<RankState> mapEventToState (
      RankEvent event,
      ) async* {
    if(event is LoadRankEvent){
        yield* _mapLoadRank();
    }
  }

  Stream<RankState> _mapLoadRank() async* {
    try
    {
      yield RankLoading();
      var leaderboard = await pvpRankUseCase.getPvPRank(SeasonId, Bracket);

      print("rank : $leaderboard");
      if(leaderboard?.entries.isEmpty ?? true)
      {
        yield RankErrorState(errorMessage: 'no data');
      }
      else {
        yield RankSuccessfullyState(response: leaderboard);
      }
    }
    on ApiException catch (e) {
      yield RankErrorState(errorMessage: e.errorMessage);
    } catch (_) {
      yield RankErrorState(errorMessage: S.current.connectionProblem);
    }
  }
}