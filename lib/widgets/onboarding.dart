import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/material.dart';

final listPagesViewModel = [
  PageViewModel(
    title: "Title of first page",
    body:
        "Here you can write the description of the page, to explain someting...",
    image: Center(
      child: Image.network("https://domaine.com/image.png", height: 175.0),
    ),
  ),
  PageViewModel(
    title: "Title of first page",
    body:
        "Here you can write the description of the page, to explain someting...",
    image: Center(child: Icon(Icons.android)),
    decoration: PageDecoration(
      titleTextStyle: TextStyle(color: Colors.orange),
      bodyTextStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
    ),
  )
];

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: listPagesViewModel,
        onDone: () {
          // When done button is press
        },
        showSkipButton: true,
        skip: Text("Skip"),
        next: Icon(Icons.chevron_right),
        done: Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      ),
    );
  }
}
