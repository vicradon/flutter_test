import 'package:flutter/material.dart';
import 'package:ft_quiz/widgets/Categories/QuizPage.dart';

// class QuizCircle extends StatelessWidget {
//   final Map position;
//   QuizCircle({this.position});

//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(30),
//       child: Positioned(
//         top: position["top"],
//         left: position["left"],
//         child: ClipOval(
//           child: Material(
//             color: Colors.lightBlue, // button color
//             child: InkWell(
//               splashColor: Colors.grey,
//               child: Text("hvnj"),
//               // child: SizedBox(
//               //   width: 80,
//               //   height: 80,
//               //   child: Center(
//               //     child: Text(
//               //       "Math",
//               //       style: TextStyle(color: Colors.white),
//               //     ),
//               //   ),
//               // ),
//               onTap: () {},
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
class QuizCircle extends StatelessWidget {
  final String name;
  final Color backgroundColor;
  final Color textColor;
  QuizCircle({this.name, this.backgroundColor, this.textColor});

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ClipOval(
        child: Material(
          color: backgroundColor, // button color
          child: InkWell(
            splashColor: Colors.grey,
            child: SizedBox(
              width: 80,
              height: 80,
              child: Center(
                child: Text(
                  name,
                  style: TextStyle(color: textColor),
                ),
              ),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return QuizPage(name);
              }));
            },
          ),
        ),
      ),
    );
  }
}
