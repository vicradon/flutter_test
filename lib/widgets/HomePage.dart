import 'package:flutter/material.dart';
import 'package:ft_quiz/widgets/Categories/Categories.dart';
import 'package:ft_quiz/widgets/Profile.dart';
import 'package:ft_quiz/widgets/Settings.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  final _appBarTitles = ["categories", "profile", "settings"];

  @override
  Widget build(BuildContext context) {
    Widget child;

    switch (_index) {
      case 0:
        child = Categories();
        break;
      case 1:
        child = Profile();
        break;
      case 2:
        child = Settings();
        break;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitles[_index]),
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
      ),
      body: child,
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
