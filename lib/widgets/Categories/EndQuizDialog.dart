import 'package:flutter/material.dart';
import 'package:ft_quiz/model/question-model.dart';
import 'package:provider/provider.dart';

endQuizDailog(BuildContext context) {
  final model = Provider.of<QuestionModel>(context);

  showDialog<bool>(
    context: context,
    builder: (c) => AlertDialog(
      title: Text('Warning'),
      content: Text('Do you really want to end this quiz?'),
      actions: [
        FlatButton(
          child: Text('Of course'),
          onPressed: () {
            model.resetQuiz();
            Navigator.of(context).pop();
            Navigator.of(context).pop();
          },
        ),
        FlatButton(
          child: Text('No'),
          onPressed: () => Navigator.pop(c, false),
        ),
      ],
    ),
  );
}
