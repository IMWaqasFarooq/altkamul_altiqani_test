import 'dart:convert';

import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';

import '../../../constants/app_constants.dart';
import '../../model/questions_model.dart';




abstract class QuestionsRemoteDataSource {
  Future<Either<String, QuestionsModel>> getQuestions({
    required int page,

  });
}

class QuestionsRemoteDataSourceImpl extends QuestionsRemoteDataSource {
  final Dio dio;
  final DataConnectionChecker networkInfo;

  QuestionsRemoteDataSourceImpl({required this.dio, required this.networkInfo});

  @override
  Future<Either<String, QuestionsModel>> getQuestions({
    required int page,

  }) async {
    if (await networkInfo.hasConnection) {
      try {

        final result = await dio.get(
          AppConstants.getQuestions,
          queryParameters: {
            "order": "desc",
            "sort": "activity",
            'site':"stackoverflow",
            "page": page.toString(),

          },

        );

        return Right(QuestionsModel.fromJson(json.decode(result.data)));
      } on DioError catch (ex) {
        if (ex.type == DioErrorType.connectTimeout) {
          return const Left(Errors.networkError);
        } else if (ex.type == DioErrorType.receiveTimeout) {
          return const Left(Errors.networkError);
        }
        return const Left(Errors.networkError);
      } catch (e) {
        print(e);
        return const Left(Errors.somethingWrong);
      }
    } else {
      return const Left(Errors.networkError);
    }
  }
}
