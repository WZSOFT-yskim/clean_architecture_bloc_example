import 'package:clean_architecture_bloc_example/features/features.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

part 'second_event.dart';

part 'second_event_type.dart';

part 'second_state.dart';

class SecondBloc extends Bloc<SecondEvent, SecondState> {


  SecondBloc({ required this.getCurrentNumberUseCase,}) : super(SecondInitial()) {
    on<SecondEventStarted>(_onStarted);
  }

  final GetCurrentNumberUseCase getCurrentNumberUseCase;
  // final GetInitialNumberUseCase getInitialNumberUseCase;


  _onStarted(SecondEventStarted event, Emitter<SecondState> emit) async {
    emit(state.copyWith(
        eventType: SecondEventType.pure,
        status: FormzSubmissionStatus.inProgress));

    int initialNumber =  getCurrentNumberUseCase.call();

    emit(state.copyWith(
      eventType: SecondEventType.started,
      status: FormzSubmissionStatus.success,
      currentNumber: initialNumber,
      isInitialLoadingFinished: true,
    ));
  }
}
