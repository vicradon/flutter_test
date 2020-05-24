import 'package:flutter/material.dart';
import 'package:prescient_automation_flutter_test/Home.dart';

void main() async {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Test',
      home: Home(),
    );
  }
}
