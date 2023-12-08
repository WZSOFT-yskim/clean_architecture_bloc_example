part of 'home_bloc.dart';

enum HomeEventType {
  pure,
  started,
  addButtonClicked,
  subtractButtonClicked,
  myPageButtonClicked,
}

extension HomeEventTypeX on HomeEventType {
  bool get isStarted => this == HomeEventType.started;

  bool get isAddButtonClicked => this == HomeEventType.addButtonClicked;

  bool get isSubtractButtonClicked => this == HomeEventType.subtractButtonClicked;

  bool get isMyPageButtonClicked => this == HomeEventType.myPageButtonClicked;
}
