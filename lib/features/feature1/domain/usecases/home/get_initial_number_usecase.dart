import 'package:flutter/foundation.dart' show immutable;
import 'package:clean_architecture_bloc_example/features/features.dart';

@immutable
class GetInitialNumberUseCase {
  final HomeRepository homeRepository;

  const GetInitialNumberUseCase(this.homeRepository);

  Future<int> call() async {
    return homeRepository.getInitialNumber();
  }
}
