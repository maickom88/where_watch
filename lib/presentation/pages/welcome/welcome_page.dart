import 'package:flutter/material.dart';
import 'package:rx_notifier/rx_notifier.dart';
import 'welcome.dart';

import 'widget/widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.transparent,
        elevation: 0,
        brightness: Brightness.dark,
      ),
      body: SafeArea(
        child: PageView(
          onPageChanged: (indexPage) => ControllerPage.page.value = indexPage,
          controller: ControllerPage.controller,
          children: [
            FirstFlow(),
            SecondFlow(
              onCategories: (categories) => print(categories),
            ),
            ThreeFlow(
              onProviders: (providers) => print(providers),
            ),
          ],
        ),
      ),
      floatingActionButton: RxBuilder(
        builder: (_) => Visibility(
          visible: ControllerPage.page.value < 2,
          child: BottonButtom(
            onTap: () => ControllerPage.controller.nextPage(
              duration: Duration(milliseconds: 350),
              curve: Curves.linearToEaseOut,
            ),
          ),
        ),
      ),
    );
  }
}
