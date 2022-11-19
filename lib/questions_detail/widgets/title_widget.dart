import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      padding: EdgeInsets.symmetric(vertical: 25,horizontal: 15),
      child: Column(
        children: [
          Text(
            "TITLE",
            style: const TextStyle(
                color: Colors.blue,
                fontSize: 18,
                fontWeight: FontWeight.w500
            ),
          ),
          SizedBox(height: 5,),
          Text(
            title,
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400
            ),
          ),
        ],
      ),
    );
  }
}
