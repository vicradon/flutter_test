import 'package:flutter/material.dart';
import 'package:ft_quiz/model/question-model.dart';
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
            print('back');
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
    // final questionModel = Provider.of<QuestionModel>(context);
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10.0, 0, 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // Text("${questionModel.progress}/10"),
          // Text("${questionModel.score}"),
          Text("0/10"),
          Text("0"),
        ],
      ),
    );
  }
}

class QuestionActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        RaisedButton(
          child: Text("Choose"),
          onPressed: () {
            // questionModel.increaseProgress();
          },
        )
      ],
    );
  }
}
