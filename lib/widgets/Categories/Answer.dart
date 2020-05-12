import 'package:flutter/material.dart';
import 'package:ft_quiz/model/question-model.dart';
import 'package:provider/provider.dart';

class Answer extends StatelessWidget {
  final String letterValue;
  final String value;
  final Color color;

  Answer({this.letterValue, this.value, this.color});

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<QuestionModel>(context);

    return GestureDetector(
      onTap: () {
        if (!model.hasSelected) {
          model.checkAnswer(value);
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        margin: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
            color: color,
            border: Border.all(
              color: Color(0xFFCCCCCC),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: <Widget>[
            Text(letterValue),
            SizedBox(width: 10),
            Text(value),
          ],
        ),
      ),
    );
  }
}
