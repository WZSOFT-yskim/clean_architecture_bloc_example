import 'package:flutter/foundation.dart';
import 'package:clean_architecture_bloc_example/features/features.dart';

@immutable
class SubtractNumberUseCase {
  final HomeRepository homeRepository;

  const SubtractNumberUseCase(this.homeRepository);

  int call(int currentNumber) {
    return  homeRepository.subtractNumber(currentNumber);
  }
}