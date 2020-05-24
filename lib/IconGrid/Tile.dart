import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  const Tile(this.backgroundColor, this.iconData);

  final Color backgroundColor;
  final dynamic iconData;

  @override
  Widget build(BuildContext context) {
    bool isIcon = iconData is IconData ? true : false;

    return Card(
      color: backgroundColor,
      child: InkWell(
        onTap: () {},
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: isIcon
                ? Icon(
                    iconData,
                    color: Colors.white,
                  )
                : this.iconData,
          ),
        ),
      ),
    );
  }
}
