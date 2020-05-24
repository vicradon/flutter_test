import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:prescient_automation_flutter_test/IconGrid/Tile.dart';

List<StaggeredTile> staggeredTiles = <StaggeredTile>[
  StaggeredTile.count(2, 2),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 2),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(2, 2),
  StaggeredTile.count(2, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 2),
  StaggeredTile.count(3, 1),
  StaggeredTile.count(4, 1),
];

final List<Color> colors = [
  Colors.green,
  Colors.brown,
  Colors.amber,
  Colors.purple,
  Colors.orange,
  Colors.lightBlue,
  Colors.deepOrange,
  Colors.blueGrey,
  Colors.pink,
  Colors.blue,
];

List<Widget> dataTiles(data) {
  final List<Widget> tiles = [];
  for (int i = 0; i < data.length; i++) {
    tiles.add(Tile(colors[i], data[i]));
  }
  return tiles;
}

List<Widget> tiles = <Widget>[
  Tile(colors[0], Icons.widgets),
  Tile(colors[1], Icons.airline_seat_flat),
  Tile(colors[2], Icons.location_on),
  Tile(colors[3], Icons.battery_charging_full),
  Tile(colors[4], Icons.camera),
  Tile(colors[5], Icons.wifi),
  Tile(colors[6], Icons.mic),
  Tile(colors[7], Icons.security),
  Tile(colors[8], Icons.alarm),
  Tile(colors[9], Icons.radio),
];
