import 'package:flutter/material.dart';

import 'nav/nav.dart';

class NavigatorController {
  static List<Widget> navs = [
    ExplorerNav(),
    FavoriteNav(),
    Container(
      color: Colors.blue,
      child: Center(
        child: Text('Oláaaaaaaa'),
      ),
    ),
    Container(
      color: Colors.white,
      child: Center(
        child: Text('asdddddddddd'),
      ),
    ),
  ];
}
