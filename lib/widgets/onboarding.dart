import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class Walkthrougth extends StatelessWidget {
  final String heading;
  final String textContent;
  final String image;

  Walkthrougth(
      {Key key,
      @required this.heading,
      @required this.textContent,
      @required this.image})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xFFF9F9F9)),
      width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(image),
          Text(
            heading,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(textContent),
        ],
      ),
    );
  }
}

class Dots extends StatelessWidget {
  final double currentIndexPage;
  final int pageLength;
  Dots({this.currentIndexPage, this.pageLength});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.94,
      child: Padding(
        padding:
            EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
        child: DotsIndicator(
          dotsCount: pageLength,
          position: currentIndexPage,
          decorator: DotsDecorator(
            activeColor: Color(0xFFF8A700),
            size: Size.square(9.0),
            activeSize: Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ),
    );
  }
}

class SkipButton extends StatelessWidget {
  final double currentIndexPage;
  SkipButton(this.currentIndexPage);

  @override
  Widget build(BuildContext context) {
    String text = "skip";

    if (currentIndexPage == 3) {
      text = "done";
    }
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.92,
      left: MediaQuery.of(context).size.width * 0.75,
      child: FlatButton(
        child: Text(text),
        onPressed: () {
          print("skip");
        },
      ),
    );
  }
}

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

List onboardingScreens = <Widget>[
  Walkthrougth(
      heading: "Excellence",
      textContent: "Be excellent in your own way",
      image: "assets/images/screen1.png"),
  Walkthrougth(
      heading: "Search for solutions",
      textContent: "Search for solutions with lightspeed",
      image: "assets/images/screen2.png"),
  Walkthrougth(
      heading: "Tips",
      textContent: "Gain helpful tips as you progress",
      image: "assets/images/screen3.png")
];

class _OnboardingState extends State<Onboarding> {
  double currentIndexPage;
  int pageLength;

  @override
  void initState() {
    currentIndexPage = 0;
    pageLength = 3;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView(
            children: onboardingScreens,
            onPageChanged: (value) {
              setState(() {
                currentIndexPage = value + .0;
              });
            },
          ),
          Dots(currentIndexPage: currentIndexPage, pageLength: pageLength),
          SkipButton(currentIndexPage)
        ],
      ),
    );
  }
}
