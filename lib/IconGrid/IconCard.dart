import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  final Icon icon;
  final Color color;
  final double width;
  final double height;

  IconCard({this.icon, this.color, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      child: this.icon,
      color: this.color,
    );
  }
}
