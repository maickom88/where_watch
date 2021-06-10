import 'package:get/get.dart';

import '../../presentation/pages/home/home.dart';
import '../../presentation/pages/welcome/welcome.dart';
import '../constants/constants.dart';

class Routers {
  static List<GetPage> pages = [
    GetPage(
      name: RoutesConsts.home,
      page: () => HomePage(),
    ),
    GetPage(
      name: RoutesConsts.welcome,
      page: () => WelcomePage(),
    ),
  ];
}
