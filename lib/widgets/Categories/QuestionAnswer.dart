import 'package:flutter/material.dart';
import 'package:ft_quiz/widgets/Categories/Answer.dart';
import 'package:ft_quiz/model/question-model.dart';
import 'package:provider/provider.dart';

class QuestionAnswer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<QuestionModel>(context, listen: false);

    return FutureBuilder(
      future: model.questions,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          model.getData(snapshot.data);
          final question = model.question;
          final answers = model.answers;
          final colors = model.answerColors;

          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(question),
              Answer(
                value: answers[0],
                letterValue: "A",
                color: colors[0],
              ),
              Answer(
                value: answers[1],
                letterValue: "B",
                color: colors[1],
              ),
              Answer(
                value: answers[2],
                letterValue: "C",
                color: colors[2],
              ),
              Answer(
                value: answers[3],
                letterValue: "D",
                color: colors[3],
              ),
            ],
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
