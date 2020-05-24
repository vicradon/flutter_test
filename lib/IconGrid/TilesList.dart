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

// tiles(data){
//   if (data){

//   }
// }

List<Widget> tiles = <Widget>[
  Tile(Colors.green, Icons.widgets),
  Tile(Colors.brown, Icons.airline_seat_flat),
  Tile(Colors.amber, Icons.location_on),
  Tile(Colors.purple, Icons.battery_charging_full),
  Tile(Colors.orange, Icons.camera),
  Tile(Colors.lightBlue, Icons.wifi),
  Tile(Colors.deepOrange, Icons.mic),
  Tile(Colors.blueGrey, Icons.security),
  Tile(Colors.pink, Icons.alarm),
  Tile(Colors.blue, Icons.radio),
];
