import 'package:flutter/material.dart';
import 'package:ft_quiz/widgets/onboarding.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Text("hello");
    return Onboarding();
  }
}
