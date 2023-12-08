import 'package:clean_architecture_bloc_example/features/features.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

part 'home_event.dart';

part 'home_event_type.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required this.getInitialNumberUseCase,
    required this.addNumberUseCase,
    required this.subtractNumberUseCase,
  }) : super(HomeInitial()) {
    on<HomeEventStarted>(_onStarted);
    on<HomeEventAddButtonClicked>(_onAddButtonClicked);
    on<HomeEventSubtractButtonClicked>(_onSubtractButtonClicked);
    on<HomeEventMyPageButtonClicked>(_onMyPageButtonClicked);
  }

  final GetInitialNumberUseCase getInitialNumberUseCase;
  final AddNumberUseCase addNumberUseCase;
  final SubtractNumberUseCase subtractNumberUseCase;

  _onStarted(HomeEventStarted event, Emitter<HomeState> emit) async {
    emit(state.copyWith(
        eventType: HomeEventType.pure,
        status: FormzSubmissionStatus.inProgress));

    int initialNumber = await getInitialNumberUseCase.call();
    await Future.delayed(const Duration(seconds: 3));

    emit(state.copyWith(
      eventType: HomeEventType.started,
      status: FormzSubmissionStatus.success,
      currentNumber: initialNumber,
      isInitialLoadingFinished: true,
    ));
  }

  _onAddButtonClicked(
    HomeEventAddButtonClicked event,
    Emitter<HomeState> emit,
  ) {
    emit(state.copyWith(
      eventType: HomeEventType.addButtonClicked,
      status: FormzSubmissionStatus.inProgress,
    ));

    int currentNumber = state.currentNumber ?? 0;
    int previousNumber = event.previousNumber;
    print(previousNumber);

    currentNumber = addNumberUseCase.call(currentNumber);

    emit(state.copyWith(
      eventType: HomeEventType.addButtonClicked,
      status: FormzSubmissionStatus.success,
      currentNumber: currentNumber,
    ));
  }

  _onSubtractButtonClicked(
    HomeEventSubtractButtonClicked event,
    Emitter<HomeState> emit,
  ) {
    emit(state.copyWith(
      eventType: HomeEventType.subtractButtonClicked,
      status: FormzSubmissionStatus.inProgress,
    ));

    int currentNumber = state.currentNumber ?? 0;
    currentNumber = subtractNumberUseCase.call(currentNumber);

    emit(state.copyWith(
      eventType: HomeEventType.subtractButtonClicked,
      status: FormzSubmissionStatus.success,
      currentNumber: currentNumber,
    ));
  }

  _onMyPageButtonClicked(
    HomeEventMyPageButtonClicked event,
    Emitter<HomeState> emit,
  ) {
    // int currentNumber = state.currentNumber ?? 0;

    // homeRepository.data = {
    //   'currentNumber': currentNumber,
    // };

    emit(state.copyWith(
      eventType: HomeEventType.myPageButtonClicked,
      status: FormzSubmissionStatus.success,
    ));
  }

}
