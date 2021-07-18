import 'package:flutter/material.dart';

import 'nav/nav.dart';

class NavigatorController {
  static List<Widget> navs = [
    ExplorerNav(),
    Container(
      color: Colors.red,
      child: Center(
        child: Text('asdjjjjjjjjjjjjjjjjjjjjjjjjjj'),
      ),
    ),
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
