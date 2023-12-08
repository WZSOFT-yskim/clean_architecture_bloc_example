import 'package:clean_architecture_bloc_example/app/simple_bloc_observer.dart';
import 'package:clean_architecture_bloc_example/core/core.dart';
import 'package:clean_architecture_bloc_example/di.dart';
import 'package:clean_architecture_bloc_example/features/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// 1. BlocProvider 달아놓기
/// 2. 라우트 설정
/// 3. 기본 앱 바탕 그리기

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    Bloc.observer = const SimpleBlocObserver();
    return MultiBlocProvider(
        providers: [
          BlocProvider<HomeBloc>(create: (context) => getIt<HomeBloc>()),
          BlocProvider<SecondBloc>(create: (context) => getIt<SecondBloc>()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightAppTheme,
          onGenerateRoute: AppRouter.generateRoute,
          home: const HomePage(),
        ));
  }
}
