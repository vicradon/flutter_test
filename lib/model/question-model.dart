import 'package:flutter/foundation.dart';

class QuestionModel with ChangeNotifier {
  int score = 0;
  int progress = 0;

  void addScore() {
    score++;
    notifyListeners();
  }

  void increaseProgress() {
    progress++;
    notifyListeners();
  }
}
