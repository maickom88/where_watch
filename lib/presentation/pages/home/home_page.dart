import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:where_watch_app/core/errors/failures.dart';

import '../../../core/constants/constants.dart';
import 'home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int currentIndex;
  late HomeController controller;
  @override
  void initState() {
    currentIndex = 0;
    controller = Get.find<HomeController>();
    controller.getAllPosters();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Colors.transparent,
          elevation: 0,
          brightness: Brightness.dark,
        ),
        body: ScopedBuilder(
          store: controller,
          onState: (context, state) => SafeArea(
            child: PageTransitionSwitcher(
              duration: Duration(milliseconds: 300),
              transitionBuilder:
                  (child, primaryAnimation, secondaryAnimation) =>
                      FadeThroughTransition(
                fillColor: AppColors.backgroundColor,
                animation: primaryAnimation,
                secondaryAnimation: secondaryAnimation,
                child: child,
              ),
              child: NavigatorController.navs(controller)[currentIndex],
            ),
          ),
          onError: (_, Failure? error) => NavigatorController.error(
              error, () => controller.getAllPosters()),
          onLoading: (_) => NavigatorController.load,
        ),
        bottomNavigationBar: buildBottomNavigationBar(),
      ),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      backgroundColor: AppColors.accentColor,
      selectedIconTheme: IconThemeData(color: Colors.white),
      selectedItemColor: Colors.white,
      unselectedItemColor: AppColors.textColor.withOpacity(0.4),
      items: [
        buildBottomNavigationBarItem(
          FontAwesomeIcons.wpexplorer,
          'Explorar',
        ),
        buildBottomNavigationBarItem(
          Icons.favorite_border,
          'Favoritos',
        ),
        buildBottomNavigationBarItem(
          Icons.person_outline,
          'Perfil',
        ),
        buildBottomNavigationBarItem(
          FontAwesomeIcons.cog,
          'Configurações',
        ),
      ],
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(
    IconData icon,
    String label,
  ) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
