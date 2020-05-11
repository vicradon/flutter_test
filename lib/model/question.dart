import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class Question {
  String category;
  String type;
  String difficulty;
  String question;
  String correctAnswer;
  List<dynamic> incorrectAnswers;

  Question({this.question, this.correctAnswer, this.incorrectAnswers});
}

// Future<List<Question>>
Future<List<Question>> fetchQuestions(name) async {
  final rawjson = await rootBundle.loadString('assets/questions/$name.json');

  final parsedJson = json.decode(rawjson.toString());
  return getQuestions(parsedJson);
}

List<Question> getQuestions(parsedJson) {
  List<Question> questions = [];
  final toParse = parsedJson['results'];
  toParse.forEach((i) {
    final question = i['question'];
    final correctAnswer = i['correct_answer'];
    final incorrectAnswers = i['incorrect_answers'];

    questions.add(
      Question(
        question: question,
        correctAnswer: correctAnswer,
        incorrectAnswers: incorrectAnswers,
      ),
    );
  });
  return questions;
}
