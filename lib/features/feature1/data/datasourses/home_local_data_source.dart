abstract class HomeLocalDataSource {
  int getInitialNumber();
  void setCurrentNumber(int currentNumber);
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  int initialNumber = 10;
  @override
  int getInitialNumber() {


    return initialNumber;
  }

  @override
  void setCurrentNumber(int currentNumber) {
    initialNumber = currentNumber;
  }
}
