import 'package:altkamul_altiqani_test/questions/data/local_data_source/data_box.dart';
import 'package:altkamul_altiqani_test/questions/data/local_data_source/questions_local_data.dart';
import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';

import '../Constants/app_constants.dart';
import '../questions/bloc/questions_bloc.dart';
import '../questions/data/remote_data_source/questions_remote_data.dart';

final sl = GetIt.instance;

///
/// The [init] function is responsible for adding the instances to the graph
///
Future<void> init() async {
  //!External

  /// Adding the [Dio] instance to the graph to be later used by the local data sources
  sl.registerLazySingleton(
        () {
      final dio = Dio(
        BaseOptions(
          connectTimeout: 12000,
          receiveTimeout: 12000,
          sendTimeout: 12000,
          baseUrl: AppConstants.baseUrl,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
          responseType: ResponseType.plain,
        ),
      );
      dio.interceptors.add(
        LogInterceptor(
            responseBody: true,
            requestBody: true,
            responseHeader: true,
            requestHeader: true,
            request: true,
            error: true),
      );

      return dio;
    },
  );

  sl.registerLazySingleton(() => DataConnectionChecker());

  //datasource
  sl.registerLazySingleton<QuestionsRemoteDataSource>(
        () => QuestionsRemoteDataSourceImpl(dio: sl(), networkInfo: sl()),
  );
  // sl.registerLazySingleton<QuestionsLocalDataSource>(
  //       () => QuestionsLocalDataSourceImpl(DataBox()),
  // );

  // Bloc
  sl.registerLazySingleton(() => QuestionsBloc(
      questionsRemoteDataSource: sl(),
  )
  );
}