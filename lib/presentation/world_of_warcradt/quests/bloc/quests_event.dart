part of 'quests_bloc.dart';

abstract class QuestsEvent extends Equatable {
  const QuestsEvent();
  @override
  List<Object> get props => [];
}

class LoadingQuestsEvent extends QuestsEvent{}
