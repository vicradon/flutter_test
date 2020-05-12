import 'package:flutter/material.dart';
import 'package:ft_quiz/model/question-model.dart';
import 'package:ft_quiz/widgets/Categories/EndQuizDialog.dart';
import 'package:ft_quiz/widgets/QuizCompletePage.dart';
import 'package:provider/provider.dart';

class QuestionPageTopSection extends StatelessWidget {
  QuestionPageTopSection(this.name);
  final String name;
  @override
  Widget build(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            endQuizDailog(context);
          },
        ),
        Text(
          "$name quiz",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Container(
          child: Opacity(
            opacity: 0,
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}

class QuestionCount extends StatelessWidget {
  @override
  Widget build(context) {
    final model = Provider.of<QuestionModel>(context);
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10.0, 0, 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // Text("${questionModel.progress}/10"),
          // Text("${questionModel.score}"),
          Text("${model.progress}/10"),
          Text("Score: ${model.score}"),
        ],
      ),
    );
  }
}

void endQuiz(model, context) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => QuizCompletePage(quizName: model.quizName, score: model.score),
    ),
  );
}

class QuestionActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<QuestionModel>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        RaisedButton(
          child: model.hasReachedMaxQuestions ? Text("done") : Text("Next"),
          onPressed: model.hasSelected
              ? () {
                  model.hasReachedMaxQuestions
                      ? endQuiz(model, context)
                      : model.goToNextQuestion();
                }
              : null,
        )
      ],
    );
  }
}
