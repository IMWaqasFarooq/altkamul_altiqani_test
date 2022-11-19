

import 'package:altkamul_altiqani_test/questions/data/local_data_source/questions_local_data.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:equatable/equatable.dart';


import '../../di/injection.dart';
import '../data/local_data_source/data_box.dart';
import '../data/remote_data_source/questions_remote_data.dart';
import '../model/questions_model.dart';
import 'questions_state.dart';




part 'questions_event.dart';

class QuestionsBloc extends Bloc<QuestionsEvent, QuestionsState> {
  QuestionsRemoteDataSource questionsRemoteDataSource;


  QuestionsBloc({required this.questionsRemoteDataSource})
      : super(QuestionsState.initial()) {

    on<GetQuestionsEvent>((event, emit) async {
      DataConnectionChecker connectionChecker = sl<DataConnectionChecker>();
      QuestionsLocalDataSource localSource = QuestionsLocalDataSourceImpl(DataBox());

      final result;
      if(await connectionChecker.hasConnection){
         result = await questionsRemoteDataSource.getQuestions(
            page: event.page
        );
      }else{

        result = await localSource.getData(event.page) ;
      }
      emit(state.rebuild((b) => b
        ..isSuccess = false
        ..isLoading = true
        ..error=''
      ));

      print("result");
      print(result);
      print("result");

      return result.fold((error) async {
        print('l');
        emit(state.rebuild((b) => b
          ..isSuccess = false
          ..isLoading = false
          ..error = error));
      }, (result) async {
        print('r');
        if(result.items!.isNotEmpty)
        {
          emit(state.rebuild((b) => b
            ..isSuccess = true
            ..isLoading = false
            ..questionsModel = result as QuestionsModel?));

        }
        else{
          emit(state.rebuild((b) => b
            ..isLoading = false
            ..error="failed"
          ));
        }

      });
    });
  }


}