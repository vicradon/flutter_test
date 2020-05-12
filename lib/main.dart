import 'package:flutter/material.dart';
import 'package:ft_quiz/model/theme_model.dart';
import 'package:ft_quiz/widgets/onboarding.dart';
import 'package:ft_quiz/widgets/HomePage.dart';
import 'package:ft_quiz/utils/swatch.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:ft_quiz/model/question-model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool seen;
  bool hasBeenSeen = (prefs.getBool('seen') ?? false);

  if (hasBeenSeen) {
    seen = true;
  } else {
    await prefs.setBool('seen', true);
    seen = false;
  }

  runApp(App(seen));
}

class App extends StatelessWidget {
  final bool seen;
  App(this.seen);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<QuestionModel>(
          builder: (context) => QuestionModel(),
        ),
        ChangeNotifierProvider<ThemeModel>(
          builder: (context) => ThemeModel(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        home: seen ? HomePage() : Onboarding(),
        theme: ThemeData(
          primarySwatch: MaterialColor(0xFFF8A700, swatch),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          brightness: Brightness.light,
        ),
      ),
    );
  }
}