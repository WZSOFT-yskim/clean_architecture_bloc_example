part of 'second_bloc.dart';

@immutable
class SecondState extends Equatable {
  const SecondState({
    this.status = FormzSubmissionStatus.initial,
    this.eventType = SecondEventType.pure,
    this.isInitialLoadingFinished = false,
    this.currentNumber,
  });

  final FormzSubmissionStatus status;
  final SecondEventType eventType;
  final bool isInitialLoadingFinished;
  final int? currentNumber;

  @override
  List<Object?> get props => [
        status,
        eventType,
        isInitialLoadingFinished,
        currentNumber,
      ];

  SecondState copyWith({
    FormzSubmissionStatus? status,
    SecondEventType? eventType,
    bool? isInitialLoadingFinished,
    int? currentNumber,
  }) {
    return SecondState(
      status: status ?? this.status,
      eventType: eventType ?? this.eventType,
      isInitialLoadingFinished:
          isInitialLoadingFinished ?? this.isInitialLoadingFinished,
      currentNumber: currentNumber ?? this.currentNumber,
    );
  }
}

class SecondInitial extends SecondState {}
