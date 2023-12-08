import 'package:clean_architecture_bloc_example/features/features.dart';

class HomeRepositoryImpl extends HomeRepository {
  final HomeLocalDataSource localDataSource;

  HomeRepositoryImpl({required this.localDataSource});

  @override
  int getInitialNumber() {
    return localDataSource.getInitialNumber();
  }

  @override
  int addNumber(int currentNumber) {
    localDataSource.setCurrentNumber(currentNumber + 1);
    return currentNumber + 1;
  }

  @override
  int subtractNumber(int currentNumber) {
    localDataSource.setCurrentNumber(currentNumber - 1);
    return currentNumber - 1;
  }

  @override
  int getCurrentNumber() {
    return localDataSource.getInitialNumber();
  }
}
