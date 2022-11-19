import 'package:built_value/built_value.dart';

import '../model/questions_model.dart';



part 'questions_state.g.dart';

abstract class QuestionsState implements Built<QuestionsState,QuestionsStateBuilder> {


  bool? get isSuccess;
  bool? get isLoading;
  String? get error;
  QuestionsModel? get questionsModel;


  QuestionsState._();

  factory QuestionsState([void Function(QuestionsStateBuilder) updates]) = _$QuestionsState;

  factory QuestionsState.initial() {
    return QuestionsState((b) => b
      ..isLoading = false
      ..isSuccess = false
      ..error=''
      ..questionsModel = QuestionsModel()

    );
  }
}


