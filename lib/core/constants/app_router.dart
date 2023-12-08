import 'package:clean_architecture_bloc_example/features/features.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomePage());
      case '/second':
        return MaterialPageRoute(builder: (_) => const SecondPage());
      // 추가적인 라우트들을 여기에 정의합니다.
      default:
        return MaterialPageRoute(builder: (_) => const HomePage());
    }
  }
}
