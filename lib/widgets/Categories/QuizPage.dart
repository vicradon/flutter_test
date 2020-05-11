import 'package:flutter/material.dart';
import 'package:ft_quiz/model/question.dart';
import 'package:ft_quiz/widgets/Categories/EssentialWidgets.dart';
import 'package:ft_quiz/widgets/Categories/QuestionAnswer.dart';
import 'package:provider/provider.dart';
import 'package:ft_quiz/model/question-model.dart';

class QuizPage extends StatefulWidget {
  final String name;
  QuizPage(this.name);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  Future<List<Question>> futureQuestions;

  @override
  void initState() {
    super.initState();
    futureQuestions = fetchQuestions(widget.name);
  }

  @override
  Widget build(BuildContext context) {
    // final a = Provider.of<QuestionModel>(context);
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            QuestionPageTopSection(widget.name),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: <Widget>[
                  QuestionCount(),
                  QuestionAnswer(futureQuestions),
                  QuestionActionButton()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
