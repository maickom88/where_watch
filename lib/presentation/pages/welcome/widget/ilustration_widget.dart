import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/theme/theme.dart';

class Ilustration extends StatelessWidget {
  const Ilustration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        AppImages.ilustration01,
        height: Get.height.percent(30),
      ),
    );
  }
}
