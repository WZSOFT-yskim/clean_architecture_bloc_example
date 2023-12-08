part of 'home_bloc.dart';

@immutable
class HomeState extends Equatable {
  const HomeState({
    this.status = FormzSubmissionStatus.initial,
    this.eventType = HomeEventType.pure,
    this.isInitialLoadingFinished = false,
    this.currentNumber,
  });

  final FormzSubmissionStatus status;
  final HomeEventType eventType;
  final bool isInitialLoadingFinished;
  final int? currentNumber;

  @override
  List<Object?> get props => [
        status,
        eventType,
        isInitialLoadingFinished,
        currentNumber,
      ];

  HomeState copyWith({
    FormzSubmissionStatus? status,
    HomeEventType? eventType,
    bool? isInitialLoadingFinished,
    int? currentNumber,
  }) {
    return HomeState(
      status: status ?? this.status,
      eventType: eventType ?? this.eventType,
      isInitialLoadingFinished:
          isInitialLoadingFinished ?? this.isInitialLoadingFinished,
      currentNumber: currentNumber ?? this.currentNumber,
    );
  }
}

class HomeInitial extends HomeState {}
