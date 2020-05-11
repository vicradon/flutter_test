import 'package:flutter/material.dart';
import 'package:ft_quiz/widgets/onboarding.dart';
import 'package:ft_quiz/widgets/HomePage.dart';
import 'package:ft_quiz/utils/swatch.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    return MaterialApp(
      title: 'Flutter Demo',
      home: seen ? HomePage() : Onboarding(),
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFFF8A700, swatch),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
