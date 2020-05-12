import 'package:ft_quiz/widgets/Categories/QuizCircle.dart';

List<QuizCircle> quizCircles(categories, first, last) {
  final List<QuizCircle> circles = [];
  for (int i = first - 1; i < last; i++) {
    final name = categories[i]["name"];
    final textColor = categories[i]["textColor"];
    final bgColor = categories[i]["bgColor"];
    circles.add(
      QuizCircle(
        name: name,
        textColor: textColor,
        backgroundColor: bgColor,
      )
    );
  }
  return circles;
}
