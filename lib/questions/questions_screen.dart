import 'package:altkamul_altiqani_test/questions/data/local_data_source/data_box.dart';
import 'package:altkamul_altiqani_test/questions/data/local_data_source/questions_local_data.dart';
import 'package:altkamul_altiqani_test/questions/model/items_model.dart';
import 'package:altkamul_altiqani_test/questions/widgets/questions_widget.dart';
import 'package:altkamul_altiqani_test/questions_detail/questions_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../di/injection.dart';
import 'bloc/questions_bloc.dart';
import 'bloc/questions_state.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  late QuestionsBloc _bloc;
  int _pageNumber = 1;
  List<Items> dataList = [];

  late PagingController<int, Items> _pagingController ;

  @override
  void initState() {
    // TODO: implement initState
    _bloc = sl<QuestionsBloc>();
    _pagingController=PagingController(firstPageKey: 1);
    _pagingController.addPageRequestListener((pageKey) {
      _bloc.add(GetQuestionsEvent(page: pageKey));
    });


    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc,
      child: BlocListener<QuestionsBloc, QuestionsState>(
        listener: (context, state) {
          // TODO: implement listener
          if (state.isSuccess!) {
            QuestionsLocalDataSource localSource = QuestionsLocalDataSourceImpl(DataBox());
            _pageNumber += 1;
            _pagingController.appendPage(
                state.questionsModel!.items ?? [], _pageNumber);
            localSource.save(_pagingController.itemList??[]);

          } else if(state.error!.isNotEmpty) {
            _pagingController.error = state.error ?? "error";
          }
        },
        child: Scaffold(
          backgroundColor: Colors.white70,
          appBar: AppBar(
            title: const Text("Questions"),
          ),
          body: BlocBuilder<QuestionsBloc, QuestionsState>(
            builder: (context, state) {
              return Container(
                padding: const EdgeInsets.all(15),
                child: PagedListView.separated(
                  pagingController: _pagingController,
                  builderDelegate: PagedChildBuilderDelegate<Items>(
                    itemBuilder: (context, item, index) => InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=> QuestionDetailScreen(
                              questionDetail: item,
                            )
                        ));

                      },
                      child: QuestionsWidget(
                        questionTitle: item.title,
                        questionNumber: index+1,
                      ),
                    ),
                  ), separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(height: 15,);
                },

                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
