import 'package:flutter/material.dart';

class Answer extends StatefulWidget {
  final String value;
  final String letterValue;
  // bool isCorrect;
  Answer({this.value, this.letterValue});
  @override
  _AnswerState createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFFCCCCCC),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10)),
      child: GestureDetector(
        onTap: () {
          print("d");
          setState(() {});
        },
        child: Row(
          children: <Widget>[
            Text(widget.letterValue),
            SizedBox(width: 10),
            Text(widget.value),
          ],
        ),
      ),
    );
  }
}
