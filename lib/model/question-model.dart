import 'package:flutter/material.dart';
import 'package:ft_quiz/model/question.dart';
import 'package:ft_quiz/model/categoryProperties.dart';
import 'package:flutter/foundation.dart';

class QuestionModel with ChangeNotifier {
  int score = 0;
  int progress = 1;
  bool buttonDisabled = true;
  List currentQuiz = [];
  String quizName;
  int questionIndex = 0;
  bool hasSelected = false;
  bool hasReachedMaxQuestions = false;
  List<Map> categoryProperties = categories;
  bool correctAnswerSelected;
  Future<List<Question>> _futureQuestions;
  List<Color> answerColors = [
    Color(0xFFFFFFFF),
    Color(0xFFFFFFFF),
    Color(0xFFFFFFFF),
    Color(0xFFFFFFFF),
  ];

  void getQuestions(name) {
    quizName = name;
    _futureQuestions = fetchQuestions(name);
  }

  get questions => _futureQuestions;
  get question => currentQuiz[questionIndex].question;
  get correctAnswer => currentQuiz[questionIndex].correctAnswer;
  get answers {
    final rawAnswers = [
      ...currentQuiz[questionIndex].incorrectAnswers,
      correctAnswer
    ];
    return rawAnswers;
  }

  void addScore() {
    score++;
    notifyListeners();
  }

  void goToNextQuestion() {
    questionIndex++;
    progress++;
    hasSelected = false;
    if (progress == 10) {
      hasReachedMaxQuestions = true;
    }
    resetAnswerColors();
    notifyListeners();
  }

  void getData(data) {
    currentQuiz = data;
  }

  void changeAnswerColor(index, mode) {
    if (mode == 'right') {
      answerColors[index] = Color(0xFF00FF00);
    } else {
      answerColors[index] = Color(0xFFFF0000);
      int correctAnswerIndex = getAnswerIndex(correctAnswer);
      answerColors[correctAnswerIndex] = Color(0xFF98FB98);
    }

  }

  void finishQuiz() {
    resetQuiz();
  }

  void resetAnswerColors() {
    answerColors = [
      Color(0xFFFFFFFF),
      Color(0xFFFFFFFF),
      Color(0xFFFFFFFF),
      Color(0xFFFFFFFF),
    ];
  }

  void checkAnswer(value) {
    if (value == correctAnswer) {
      score++;
      hasSelected = true;
      int index = getAnswerIndex(value);
      changeAnswerColor(index, 'right');
      notifyListeners();
    } else {
      hasSelected = true;
      int index = getAnswerIndex(value);
      changeAnswerColor(index, 'wrong');
      notifyListeners();
    }
  }

  int getAnswerIndex(value) {
    int index;
    for (String i in answers) {
      if (i == value) {
        index = answers.indexOf(i);
      }
    }
    return index;
  }

  void resetQuiz() {
    progress = 1;
    score = 0;
    questionIndex = 0;
    hasSelected = false;
    hasReachedMaxQuestions = false;
    resetAnswerColors();
  }
}
