import 'package:flutter/material.dart';
import 'package:ft_quiz/model/question-model.dart';
import 'package:ft_quiz/widgets/HomePage.dart';
import 'package:provider/provider.dart';

class QuizCompletePage extends StatelessWidget {
  final String quizName;
  final int score;

  QuizCompletePage({this.quizName, this.score});

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<QuestionModel>(context);

    model.finishQuiz();

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 100),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                "$quizName quiz",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text("You scored", style: TextStyle(fontSize: 20)),
                      Text("$score/10",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.replay,
                              size: 50,
                            ),
                            onPressed: () {}),
                        IconButton(
                            icon: Icon(
                              Icons.home,
                              size: 50,
                              color: Theme.of(context).primaryColor,
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ),
                              );
                            })
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
