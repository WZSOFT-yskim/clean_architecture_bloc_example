import 'package:clean_architecture_bloc_example/core/core.dart';
import 'package:clean_architecture_bloc_example/features/features.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  //HomeBloc
  getIt.registerFactory(
    () => HomeBloc(
      getInitialNumberUseCase: getIt<GetInitialNumberUseCase>(),
      addNumberUseCase: getIt<AddNumberUseCase>(),
      subtractNumberUseCase: getIt<SubtractNumberUseCase>(),
    ),
  );

  getIt.registerFactory(
        () => SecondBloc( getCurrentNumberUseCase: getIt<GetCurrentNumberUseCase>(),),
  );

  // Home Use cases
  getIt.registerLazySingleton(
      () => GetInitialNumberUseCase(getIt<HomeRepository>()));
  getIt.registerLazySingleton(() => AddNumberUseCase(getIt<HomeRepository>()));
  getIt.registerLazySingleton(
      () => SubtractNumberUseCase(getIt<HomeRepository>()));
  getIt.registerLazySingleton(
          () => GetCurrentNumberUseCase(getIt<HomeRepository>()));

  // Home repository
  getIt.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImpl(localDataSource: getIt()),
  );

  // Home remote data sources
  getIt.registerLazySingleton<HomeLocalDataSource>(
      () => HomeLocalDataSourceImpl());




  //Dio
  getIt.registerLazySingleton<DioClient>(() => getIt<DioClient>());
  getIt.registerLazySingleton<Dio>(() => Dio());
}
