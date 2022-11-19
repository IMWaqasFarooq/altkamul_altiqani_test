part of 'questions_bloc.dart';

abstract class QuestionsEvent extends Equatable {
  const QuestionsEvent();
  @override
  // TODO: implement props
  List<Object?> get props => [];

}

class GetQuestionsEvent extends QuestionsEvent{


  final int page;
  const GetQuestionsEvent({required this.page});

}
