part of 'home_bloc.dart';

abstract class HomeEvent {}

class HomeEventStarted extends HomeEvent {
  HomeEventStarted();
}

class HomeEventAddButtonClicked extends HomeEvent {
  final int previousNumber;

  HomeEventAddButtonClicked(this.previousNumber);
}

class HomeEventSubtractButtonClicked extends HomeEvent {
  final int previousNumber;

  HomeEventSubtractButtonClicked(this.previousNumber);
}

class HomeEventMyPageButtonClicked extends HomeEvent {
  HomeEventMyPageButtonClicked();
}

class HomeEventCallCurrentNumber extends HomeEvent {
  HomeEventCallCurrentNumber();
}