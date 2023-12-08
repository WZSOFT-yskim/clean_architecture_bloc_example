import 'package:clean_architecture_bloc_example/features/features.dart';
import 'package:flutter/foundation.dart' show immutable;

@immutable
class GetCurrentNumberUseCase  {
  final HomeRepository homeRepository;

  const GetCurrentNumberUseCase(this.homeRepository);

  int call() {
    return  homeRepository.getCurrentNumber();
  }
}
