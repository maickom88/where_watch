import 'package:get/get.dart';

import '../../presentation/pages/details/details.dart';
import '../../presentation/pages/home/home.dart';
import '../../presentation/pages/welcome/welcome.dart';
import '../constants/constants.dart';

class Routers {
  static List<GetPage> pages = [
    GetPage(
      name: RoutesConsts.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: RoutesConsts.welcome,
      page: () => WelcomePage(),
    ),
    GetPage(
      name: RoutesConsts.details,
      page: () => DetailsPage(),
      binding: DetailsBinding(),
    ),
  ];
}
