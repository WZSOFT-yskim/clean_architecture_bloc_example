import 'dart:developer';

import 'package:bloc/bloc.dart';

/// 상태 변화를 관찰하고 디버깅하기 위한 클래스
class SimpleBlocObserver extends BlocObserver {
  const SimpleBlocObserver();

  // Bloc에서 이벤트가 전달될 때 호출되는 메서드
  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);
    log('${bloc.runtimeType} $event'); // 이벤트 로그 출력
  }

  // Bloc에서 오류가 발생했을 때 호출되는 메서드
  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('${bloc.runtimeType} $error'); // 오류 로그 출력
    super.onError(bloc, error, stackTrace);
  }

  // Bloc에서 상태 변화가 발생할 때 호출되는 메서드
  @override
  void onTransition(
      Bloc<dynamic, dynamic> bloc,
      Transition<dynamic, dynamic> transition,
      ) {
    super.onTransition(bloc, transition);
    log('$transition'); // 상태 변화 로그 출력
  }
}