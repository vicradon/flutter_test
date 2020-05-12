import 'package:flutter/material.dart';
import 'package:ft_quiz/widgets/Categories/EssentialWidgets.dart';
import 'package:ft_quiz/widgets/Categories/QuestionAnswer.dart';
import 'package:provider/provider.dart';
import 'package:ft_quiz/model/question-model.dart';

class QuizPage extends StatelessWidget {
  final String name;
  QuizPage(this.name);

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<QuestionModel>(context);

    return WillPopScope(
      child: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              QuestionPageTopSection(name),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: <Widget>[
                    QuestionCount(),
                    QuestionAnswer(),
                    QuestionActionButton()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      onWillPop: () => showDialog<bool>(
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
      ),
    );
  }
}
