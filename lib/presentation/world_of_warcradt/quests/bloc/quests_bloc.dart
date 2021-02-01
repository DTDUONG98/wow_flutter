import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_architecture/data/common/api_exception.dart';
import 'package:flutter_architecture/data/world_of_warcraft/model/quests/quests.dart';
import 'package:flutter_architecture/domain/world_of_warcraft/usecases/quests_usecases.dart';
import 'package:flutter_architecture/generated/l10n.dart';

part 'quests_event.dart';
part 'quests_state.dart';

class QuestsBloc extends Bloc<QuestsEvent, QuestsState> {
  final QuestsUseCase questsUseCase;
  final int questId;
  QuestsBloc({this.questsUseCase, this.questId}) : super(QuestsInitial());

  @override
  Stream<QuestsState> mapEventToState(
    QuestsEvent event,
  ) async* {
    if(event is QuestsLoading){
      yield* _mapLoadQuests(questId);
    }
  }
  Stream<QuestsState> _mapLoadQuests(int questId) async* {
    try
    {
      yield QuestsLoading();
      var quests = await questsUseCase.SearchQuest(questId);

      print("quests : $quests");
      if(quests?.questsId.isNaN ?? true)
      {
        yield QuestsError(errors: 'no data');
      }
      else {
        yield QuestsSuccess(quests: quests );
      }
    }
    on ApiException catch (e) {
      yield QuestsError(errors: e.errorMessage);
    } catch (_) {
      yield QuestsError(errors: S.current.connectionProblem);
    }
  }
}
