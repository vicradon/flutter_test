import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ft_quiz/model/question-model.dart';
import 'package:ft_quiz/widgets/Categories/ReturnRowChildren.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<QuestionModel>(context);
    final categories = model.categoryProperties;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: quizCircles(categories, 1, 3),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: quizCircles(categories, 4, 5),
        ),
      ],
    );
  }
}
