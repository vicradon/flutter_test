import 'package:flutter/material.dart';
import 'package:ft_quiz/widgets/Categories/Answer.dart';

class QuestionAnswer extends StatelessWidget {
  final futureQuestions;
  final questionIndex = 0;
  QuestionAnswer(this.futureQuestions);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: futureQuestions,
      builder: (context, snapshot) {
        final letterValues = {
          "0": "A",
          "1": "B",
          "2": "C",
          "3": "D",
        };

        if (snapshot.hasData) {
          final correctAnswer = snapshot.data[questionIndex].correctAnswer;
          final answers = [
            ...snapshot.data[questionIndex].incorrectAnswers,
            correctAnswer
          ];

          answers.shuffle();
          answers.add(correctAnswer);

          return Column(children: [
            Text(snapshot.data[questionIndex].question),
            Answer(
              value: answers[0],
              letterValue: letterValues['0'],
            ),
            Answer(
              value: answers[1],
              letterValue: letterValues['1'],
            ),
            Answer(
              value: answers[2],
              letterValue: letterValues['2'],
            ),
            Answer(
              value: answers[3],
              letterValue: letterValues['3'],
            ),
          ]);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        } else {
          print(snapshot.data);
          return CircularProgressIndicator();
        }
      },
    );
  }
}
