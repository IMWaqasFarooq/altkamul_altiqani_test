
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TagsWidget extends StatelessWidget {
  const TagsWidget({Key? key, this.tags}) : super(key: key);
  final List<String>? tags;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.all(10),
      child: ListView.separated(
        itemCount: tags!.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) =>
        Container(
          padding: EdgeInsets.all(5),

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.blueGrey.shade100,
          ),
          child: Text(
            tags![index],
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
        ),
          separatorBuilder: (BuildContext context, int index)=> SizedBox(width: 10,) ),
    );
  }
}
