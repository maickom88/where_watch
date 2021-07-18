import 'package:flutter/material.dart';

import 'nav/nav.dart';

class NavigatorController {
  static List<Widget> navs = [
    ExplorerNav(),
    FavoriteNav(),
    ProfileNav(),
    Container(
      color: Colors.white,
      child: Center(
        child: Text('asdddddddddd'),
      ),
    ),
  ];
}
