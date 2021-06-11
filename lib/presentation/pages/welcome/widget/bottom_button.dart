import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/theme/theme.dart';
import '../../../components/components.dart';

class BottonButtom extends StatelessWidget {
  const BottonButtom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: SizedBox(
        width: Get.width.percent(20),
        height: Get.width.percent(20),
        child: WWButton(
          child: Icon(
            Icons.arrow_forward,
            color: Colors.white,
            size: 35,
          ),
        ),
      ),
    );
  }
}
