part of 'second_bloc.dart';

enum SecondEventType {
  pure,
  started,
}

extension SecondEventTypeX on SecondEventType {
  bool get isStarted => this == SecondEventType.started;
}
