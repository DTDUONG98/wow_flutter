import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'infor_event.dart';
part 'infor_state.dart';

class InforBloc extends Bloc<InforEvent, InforState> {
  InforBloc() : super(InforInitial());

  @override
  Stream<InforState> mapEventToState(
    InforEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
