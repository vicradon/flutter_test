import 'package:flutter/material.dart';

import 'package:ft_quiz/model/theme_model.dart';
import 'package:provider/provider.dart';

class Settings extends StatelessWidget {
  Widget build(BuildContext context) {
    final themeModel = Provider.of<ThemeModel>(context);
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("Light"),
              Switch(
                  value: themeModel.darkMode,
                  onChanged: (val) {
                    themeModel.toggleMode(val);
                  }),
              Text("Dark")
            ],
          )
        ],
      ),
    );
  }
}
