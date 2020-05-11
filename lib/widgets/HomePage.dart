import 'package:flutter/material.dart';
import 'package:ft_quiz/widgets/Categories/Categories.dart';
import 'package:ft_quiz/widgets/Profile.dart';
import 'package:ft_quiz/widgets/Settings.dart';
import 'package:provider/provider.dart';
import 'package:ft_quiz/model/question-model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  final _appBarTitles = ["categories", "profile", "settings"];

  @override
  Widget build(BuildContext context) {
    Widget homePageOption;

    switch (_index) {
      case 0:
        homePageOption = Categories();
        break;
      case 1:
        homePageOption = Profile();
        break;
      case 2:
        homePageOption = Settings();
        break;
    }
    return  Scaffold(
        appBar: AppBar(
          title: Text(_appBarTitles[_index]),
          backgroundColor: Colors.white,
          elevation: 1,
          centerTitle: true,
        ),
        body: homePageOption,
        bottomNavigationBar: BottomNavigationBar(
          onTap: (newIndex) => setState(() => _index = newIndex),
          currentIndex: _index,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.category), title: Text("Categories")),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text("Profile")),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), title: Text("Settings")),
          ],
        ),
      
    );
  }
}
