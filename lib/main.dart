import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:where_watch_app/core/theme/theme.dart';

import 'core/constants/constants.dart';
import 'core/routers/routers.dart';

Future<void> main() async {
  runApp(WhereWatchApp(await RoutesConsts.initialRoute));
}

class WhereWatchApp extends StatelessWidget {
  final String initialRoute;
  const WhereWatchApp(this.initialRoute);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Where Watch',
      theme: ThemeApp.theme(),
      initialRoute: initialRoute,
      getPages: Routers.pages,
    );
  }
}
