import 'package:flutter/material.dart';
import 'package:ft_quiz/widgets/Categories/QuizCircle.dart';
import 'package:ft_quiz/model/question.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  Future<List<Question>> futureQuestions;

  @override
  void initState() {
    super.initState();
    futureQuestions = fetchQuestions('animals');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                QuizCircle(
                  name: "animals",
                  textColor: Colors.white,
                  backgroundColor: Colors.lightBlue,
                ),
                QuizCircle(
                  name: "computers",
                  textColor: Color(0XFFFFFFFF),
                  backgroundColor: Color(0xFFB85540),
                ),
                QuizCircle(
                  name: "gen_know",
                  textColor: Color(0XFF068EE9),
                  backgroundColor: Color(0XFFB8E1FF),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                QuizCircle(
                  name: "history",
                  textColor: Color(0XFFFFFFFF), 
                  backgroundColor: Color(0XFF5B73C7),
                ),
                QuizCircle(
                  name: "mythology",
                  textColor: Color(0XFF9D03DF),
                  backgroundColor: Color(0XFFE9C3FF),
                )
              ],
            ),
          ],
        ),
      // ),
    );
  }
}

/*
FutureBuilder(
      future: futureQuestions,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, i) {
              return ListTile(title: Text(snapshot.data[i].question));
            },
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        } else {
          return CircularProgressIndicator();
        }
      },
    );
*/
