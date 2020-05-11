import 'package:flutter/material.dart';

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

Widget questionCount() {
  return Container(
    margin: EdgeInsets.fromLTRB(0, 10.0, 0, 40.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[Text("1/10"), Text("0")],
    ),
  );
}

Widget questionActionButton() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      RaisedButton(
        child: Text("Choose"),
      )
    ],
  );
}
