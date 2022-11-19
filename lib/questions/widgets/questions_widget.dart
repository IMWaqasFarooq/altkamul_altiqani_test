
import 'package:flutter/material.dart';

class QuestionsWidget extends StatelessWidget {
  const QuestionsWidget({Key? key, this.questionTitle,this.questionNumber}) : super(key: key);
  final String? questionTitle;
  final int? questionNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25,15,5,15 ),
      decoration: const BoxDecoration(
        color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Question# $questionNumber",
                  style: const TextStyle(
                    color: Colors.blue
                  ),
                ),
                const SizedBox(height: 3,),
                Text(
                  questionTitle??"",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    // color: Colors.black87
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.black26,
            size: 18,
          ),
        ],
      ),
    );
  }
}
