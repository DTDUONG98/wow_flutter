part of 'quests_bloc.dart';

abstract class QuestsState extends Equatable {
  const QuestsState();
}

class QuestsInitial extends QuestsState {
  @override
  List<Object> get props => [];
}

class QuestsLoading extends QuestsState {
  @override
  List<Object> get props => [];
}

class QuestsSuccess extends QuestsState {
  final Quests quests;

  QuestsSuccess({this.quests});

  @override
  List<Object> get props => [quests];
}

class QuestsError extends QuestsState {
  final String errors;

  QuestsError({this.errors});

  @override
  List<Object> get props => [errors];
}
