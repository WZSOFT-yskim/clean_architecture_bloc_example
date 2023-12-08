import 'package:clean_architecture_bloc_example/features/features.dart';
import 'package:flutter/foundation.dart' show immutable;

@immutable
class AddNumberUseCase  {
  final HomeRepository homeRepository;

  const AddNumberUseCase(this.homeRepository);

  int call(int currentNumber) {
    return  homeRepository.addNumber(currentNumber);
  }
}
