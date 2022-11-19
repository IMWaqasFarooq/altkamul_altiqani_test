import 'package:altkamul_altiqani_test/questions/model/items_model.dart';
import 'package:altkamul_altiqani_test/questions_detail/widgets/owner_widget.dart';
import 'package:altkamul_altiqani_test/questions_detail/widgets/tags_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/title_widget.dart';

class QuestionDetailScreen extends StatefulWidget {
  const QuestionDetailScreen({Key? key, required this.questionDetail}) : super(key: key);
   final Items questionDetail;

  @override
  State<QuestionDetailScreen> createState() => _QuestionDetailScreenState();
}

class _QuestionDetailScreenState extends State<QuestionDetailScreen> {
  late Items questionDetail;

  @override
  void initState() {
    // TODO: implement initState
    questionDetail =widget.questionDetail;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: const Text("Question Detail"),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleWidget(
              title: questionDetail.title??"",
            ),
            const SizedBox(height: 10,),
            OwnerWidget(
              reputation: questionDetail.owner!.reputation??1,
              name: questionDetail.owner!.displayName??"",
              image: questionDetail.owner!.profileImage??"",

            ),

            const SizedBox( height:10),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Answers (${questionDetail.answerCount}) ",
                    style: const TextStyle(
                      color: Colors.brown,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    "Views (${questionDetail.viewCount}) ",
                    style: const TextStyle(
                        color: Colors.black26,
                        fontSize: 17,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "tags",
                style: TextStyle(
                    color: Colors.brown,
                    fontSize: 17,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
            TagsWidget(
              tags: questionDetail.tags,
            )

          ],
        ),
      ),
    );
  }
}
